/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : julijia_shop

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-11-22 11:30:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `shop_admin_group`;
CREATE TABLE `shop_admin_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_admin_group
-- ----------------------------

-- ----------------------------
-- Table structure for shop_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `shop_admin_log`;
CREATE TABLE `shop_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(30) NOT NULL,
  `option` varchar(60) NOT NULL,
  `content` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for shop_admin_priv
-- ----------------------------
DROP TABLE IF EXISTS `shop_admin_priv`;
CREATE TABLE `shop_admin_priv` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_admin_priv
-- ----------------------------

-- ----------------------------
-- Table structure for shop_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_admin_user`;
CREATE TABLE `shop_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=ujis;

-- ----------------------------
-- Records of shop_admin_user
-- ----------------------------

-- ----------------------------
-- Table structure for shop_area
-- ----------------------------
DROP TABLE IF EXISTS `shop_area`;
CREATE TABLE `shop_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaID` bigint(15) DEFAULT NULL,
  `area` varchar(60) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `areaID` (`areaID`),
  KEY `parent` (`parent`),
  KEY `sort` (`sort`),
  KEY `deleted_at` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=5513 DEFAULT CHARSET=utf8 COMMENT='三级联动区';

-- ----------------------------
-- Records of shop_area
-- ----------------------------
INSERT INTO `shop_area` VALUES ('1', '110101', '东城区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2', '110102', '西城区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3', '110103', '崇文区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4', '110104', '宣武区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5', '110105', '朝阳区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('6', '110106', '丰台区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('7', '110107', '石景山区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('8', '110108', '海淀区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('9', '110109', '门头沟区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('10', '110111', '房山区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('11', '110112', '通州区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('12', '110113', '顺义区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('13', '110114', '昌平区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('14', '110115', '大兴区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('15', '110116', '怀柔区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('16', '110117', '平谷区', '110100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('17', '110228', '密云县', '110200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('18', '110229', '延庆县', '110200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('19', '120101', '和平区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('20', '120102', '河东区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('21', '120103', '河西区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('22', '120104', '南开区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('23', '120105', '河北区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('24', '120106', '红桥区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('25', '120107', '塘沽区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('26', '120108', '汉沽区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('27', '120109', '大港区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('28', '120110', '东丽区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('29', '120111', '西青区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('30', '120112', '津南区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('31', '120113', '北辰区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('32', '120114', '武清区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('33', '120115', '宝坻区', '120100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('34', '120221', '宁河县', '120200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('35', '120223', '静海县', '120200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('36', '120225', '蓟　县', '120200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('38', '130102', '长安区', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('39', '130103', '桥东区', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('40', '130104', '桥西区', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('41', '130105', '新华区', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('42', '130107', '井陉矿区', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('43', '130108', '裕华区', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('44', '130121', '井陉县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('45', '130123', '正定县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('46', '130124', '栾城县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('47', '130125', '行唐县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('48', '130126', '灵寿县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('49', '130127', '高邑县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('50', '130128', '深泽县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('51', '130129', '赞皇县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('52', '130130', '无极县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('53', '130131', '平山县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('54', '130132', '元氏县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('55', '130133', '赵　县', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('56', '130181', '辛集市', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('57', '130182', '藁城市', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('58', '130183', '晋州市', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('59', '130184', '新乐市', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('60', '130185', '鹿泉市', '130100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('62', '130202', '路南区', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('63', '130203', '路北区', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('64', '130204', '古冶区', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('65', '130205', '开平区', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('66', '130207', '丰南区', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('67', '130208', '丰润区', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('68', '130223', '滦　县', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('69', '130224', '滦南县', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('70', '130225', '乐亭县', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('71', '130227', '迁西县', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('72', '130229', '玉田县', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('73', '130230', '唐海县', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('74', '130281', '遵化市', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('75', '130283', '迁安市', '130200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('77', '130302', '海港区', '130300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('78', '130303', '山海关区', '130300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('79', '130304', '北戴河区', '130300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('80', '130321', '青龙满族自治县', '130300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('81', '130322', '昌黎县', '130300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('82', '130323', '抚宁县', '130300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('83', '130324', '卢龙县', '130300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('85', '130402', '邯山区', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('86', '130403', '丛台区', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('87', '130404', '复兴区', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('88', '130406', '峰峰矿区', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('89', '130421', '邯郸县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('90', '130423', '临漳县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('91', '130424', '成安县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('92', '130425', '大名县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('93', '130426', '涉　县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('94', '130427', '磁　县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('95', '130428', '肥乡县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('96', '130429', '永年县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('97', '130430', '邱　县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('98', '130431', '鸡泽县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('99', '130432', '广平县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('100', '130433', '馆陶县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('101', '130434', '魏　县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('102', '130435', '曲周县', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('103', '130481', '武安市', '130400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('105', '130502', '桥东区', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('106', '130503', '桥西区', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('107', '130521', '邢台县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('108', '130522', '临城县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('109', '130523', '内丘县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('110', '130524', '柏乡县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('111', '130525', '隆尧县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('112', '130526', '任　县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('113', '130527', '南和县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('114', '130528', '宁晋县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('115', '130529', '巨鹿县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('116', '130530', '新河县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('117', '130531', '广宗县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('118', '130532', '平乡县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('119', '130533', '威　县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('120', '130534', '清河县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('121', '130535', '临西县', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('122', '130581', '南宫市', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('123', '130582', '沙河市', '130500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('125', '130602', '新市区', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('126', '130603', '北市区', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('127', '130604', '南市区', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('128', '130621', '满城县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('129', '130622', '清苑县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('130', '130623', '涞水县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('131', '130624', '阜平县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('132', '130625', '徐水县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('133', '130626', '定兴县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('134', '130627', '唐　县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('135', '130628', '高阳县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('136', '130629', '容城县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('137', '130630', '涞源县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('138', '130631', '望都县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('139', '130632', '安新县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('140', '130633', '易　县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('141', '130634', '曲阳县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('142', '130635', '蠡　县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('143', '130636', '顺平县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('144', '130637', '博野县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('145', '130638', '雄　县', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('146', '130681', '涿州市', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('147', '130682', '定州市', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('148', '130683', '安国市', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('149', '130684', '高碑店市', '130600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('151', '130702', '桥东区', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('152', '130703', '桥西区', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('153', '130705', '宣化区', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('154', '130706', '下花园区', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('155', '130721', '宣化县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('156', '130722', '张北县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('157', '130723', '康保县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('158', '130724', '沽源县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('159', '130725', '尚义县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('160', '130726', '蔚　县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('161', '130727', '阳原县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('162', '130728', '怀安县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('163', '130729', '万全县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('164', '130730', '怀来县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('165', '130731', '涿鹿县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('166', '130732', '赤城县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('167', '130733', '崇礼县', '130700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('169', '130802', '双桥区', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('170', '130803', '双滦区', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('171', '130804', '鹰手营子矿区', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('172', '130821', '承德县', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('173', '130822', '兴隆县', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('174', '130823', '平泉县', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('175', '130824', '滦平县', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('176', '130825', '隆化县', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('177', '130826', '丰宁满族自治县', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('178', '130827', '宽城满族自治县', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('179', '130828', '围场满族蒙古族自治县', '130800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('181', '130902', '新华区', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('182', '130903', '运河区', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('183', '130921', '沧　县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('184', '130922', '青　县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('185', '130923', '东光县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('186', '130924', '海兴县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('187', '130925', '盐山县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('188', '130926', '肃宁县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('189', '130927', '南皮县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('190', '130928', '吴桥县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('191', '130929', '献　县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('192', '130930', '孟村回族自治县', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('193', '130981', '泊头市', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('194', '130982', '任丘市', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('195', '130983', '黄骅市', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('196', '130984', '河间市', '130900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('198', '131002', '安次区', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('199', '131003', '广阳区', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('200', '131022', '固安县', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('201', '131023', '永清县', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('202', '131024', '香河县', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('203', '131025', '大城县', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('204', '131026', '文安县', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('205', '131028', '大厂回族自治县', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('206', '131081', '霸州市', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('207', '131082', '三河市', '131000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('209', '131102', '桃城区', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('210', '131121', '枣强县', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('211', '131122', '武邑县', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('212', '131123', '武强县', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('213', '131124', '饶阳县', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('214', '131125', '安平县', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('215', '131126', '故城县', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('216', '131127', '景　县', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('217', '131128', '阜城县', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('218', '131181', '冀州市', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('219', '131182', '深州市', '131100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('221', '140105', '小店区', '140100', null, null, '2015-10-28 12:16:44', null);
INSERT INTO `shop_area` VALUES ('222', '140106', '迎泽区', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('223', '140107', '杏花岭区', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('224', '140108', '尖草坪区', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('225', '140109', '万柏林区', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('226', '140110', '晋源区', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('227', '140121', '清徐县', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('228', '140122', '阳曲县', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('229', '140123', '娄烦县', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('230', '140181', '古交市', '140100', null, null, '2015-10-28 12:16:43', null);
INSERT INTO `shop_area` VALUES ('232', '140202', '城　区', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('233', '140203', '矿　区', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('234', '140211', '南郊区', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('235', '140212', '新荣区', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('236', '140221', '阳高县', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('237', '140222', '天镇县', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('238', '140223', '广灵县', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('239', '140224', '灵丘县', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('240', '140225', '浑源县', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('241', '140226', '左云县', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('242', '140227', '大同县', '140200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('244', '140302', '城　区', '140300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('245', '140303', '矿　区', '140300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('246', '140311', '郊　区', '140300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('247', '140321', '平定县', '140300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('248', '140322', '盂　县', '140300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('250', '140402', '城　区', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('251', '140411', '郊　区', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('252', '140421', '长治县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('253', '140423', '襄垣县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('254', '140424', '屯留县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('255', '140425', '平顺县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('256', '140426', '黎城县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('257', '140427', '壶关县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('258', '140428', '长子县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('259', '140429', '武乡县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('260', '140430', '沁　县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('261', '140431', '沁源县', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('262', '140481', '潞城市', '140400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('264', '140502', '城　区', '140500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('265', '140521', '沁水县', '140500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('266', '140522', '阳城县', '140500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('267', '140524', '陵川县', '140500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('268', '140525', '泽州县', '140500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('269', '140581', '高平市', '140500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('271', '140602', '朔城区', '140600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('272', '140603', '平鲁区', '140600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('273', '140621', '山阴县', '140600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('274', '140622', '应　县', '140600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('275', '140623', '右玉县', '140600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('276', '140624', '怀仁县', '140600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('278', '140702', '榆次区', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('279', '140721', '榆社县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('280', '140722', '左权县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('281', '140723', '和顺县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('282', '140724', '昔阳县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('283', '140725', '寿阳县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('284', '140726', '太谷县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('285', '140727', '祁　县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('286', '140728', '平遥县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('287', '140729', '灵石县', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('288', '140781', '介休市', '140700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('290', '140802', '盐湖区', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('291', '140821', '临猗县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('292', '140822', '万荣县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('293', '140823', '闻喜县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('294', '140824', '稷山县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('295', '140825', '新绛县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('296', '140826', '绛　县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('297', '140827', '垣曲县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('298', '140828', '夏　县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('299', '140829', '平陆县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('300', '140830', '芮城县', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('301', '140881', '永济市', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('302', '140882', '河津市', '140800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('304', '140902', '忻府区', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('305', '140921', '定襄县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('306', '140922', '五台县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('307', '140923', '代　县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('308', '140924', '繁峙县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('309', '140925', '宁武县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('310', '140926', '静乐县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('311', '140927', '神池县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('312', '140928', '五寨县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('313', '140929', '岢岚县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('314', '140930', '河曲县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('315', '140931', '保德县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('316', '140932', '偏关县', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('317', '140981', '原平市', '140900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('319', '141002', '尧都区', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('320', '141021', '曲沃县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('321', '141022', '翼城县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('322', '141023', '襄汾县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('323', '141024', '洪洞县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('324', '141025', '古　县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('325', '141026', '安泽县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('326', '141027', '浮山县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('327', '141028', '吉　县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('328', '141029', '乡宁县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('329', '141030', '大宁县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('330', '141031', '隰　县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('331', '141032', '永和县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('332', '141033', '蒲　县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('333', '141034', '汾西县', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('334', '141081', '侯马市', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('335', '141082', '霍州市', '141000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('337', '141102', '离石区', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('338', '141121', '文水县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('339', '141122', '交城县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('340', '141123', '兴　县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('341', '141124', '临　县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('342', '141125', '柳林县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('343', '141126', '石楼县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('344', '141127', '岚　县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('345', '141128', '方山县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('346', '141129', '中阳县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('347', '141130', '交口县', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('348', '141181', '孝义市', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('349', '141182', '汾阳市', '141100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('351', '150102', '新城区', '150100', null, null, '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('352', '150103', '回民区', '150100', null, null, '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('353', '150104', '玉泉区', '150100', null, null, '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('354', '150105', '赛罕区', '150100', null, null, '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('355', '150121', '土默特左旗', '150100', null, null, '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('356', '150122', '托克托县', '150100', null, null, '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('357', '150123', '和林格尔县', '150100', null, null, '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('358', '150124', '清水河县', '150100', null, null, '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('359', '150125', '武川县', '150100', null, null, '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('361', '150202', '东河区', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('362', '150203', '昆都仑区', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('363', '150204', '青山区', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('364', '150205', '石拐区', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('365', '150206', '白云矿区', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('366', '150207', '九原区', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('367', '150221', '土默特右旗', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('368', '150222', '固阳县', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('369', '150223', '达尔罕茂明安联合旗', '150200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('371', '150302', '海勃湾区', '150300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('372', '150303', '海南区', '150300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('373', '150304', '乌达区', '150300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('375', '150402', '红山区', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('376', '150403', '元宝山区', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('377', '150404', '松山区', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('378', '150421', '阿鲁科尔沁旗', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('379', '150422', '巴林左旗', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('380', '150423', '巴林右旗', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('381', '150424', '林西县', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('382', '150425', '克什克腾旗', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('383', '150426', '翁牛特旗', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('384', '150428', '喀喇沁旗', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('385', '150429', '宁城县', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('386', '150430', '敖汉旗', '150400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('388', '150502', '科尔沁区', '150500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('389', '150521', '科尔沁左翼中旗', '150500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('390', '150522', '科尔沁左翼后旗', '150500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('391', '150523', '开鲁县', '150500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('392', '150524', '库伦旗', '150500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('393', '150525', '奈曼旗', '150500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('394', '150526', '扎鲁特旗', '150500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('395', '150581', '霍林郭勒市', '150500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('396', '150602', '东胜区', '150600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('397', '150621', '达拉特旗', '150600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('398', '150622', '准格尔旗', '150600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('399', '150623', '鄂托克前旗', '150600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('400', '150624', '鄂托克旗', '150600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('401', '150625', '杭锦旗', '150600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('402', '150626', '乌审旗', '150600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('403', '150627', '伊金霍洛旗', '150600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('405', '150702', '海拉尔区', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('406', '150721', '阿荣旗', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('407', '150722', '莫力达瓦达斡尔族自治旗', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('408', '150723', '鄂伦春自治旗', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('409', '150724', '鄂温克族自治旗', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('410', '150725', '陈巴尔虎旗', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('411', '150726', '新巴尔虎左旗', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('412', '150727', '新巴尔虎右旗', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('413', '150781', '满洲里市', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('414', '150782', '牙克石市', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('415', '150783', '扎兰屯市', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('416', '150784', '额尔古纳市', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('417', '150785', '根河市', '150700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('419', '150802', '临河区', '150800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('420', '150821', '五原县', '150800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('421', '150822', '磴口县', '150800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('422', '150823', '乌拉特前旗', '150800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('423', '150824', '乌拉特中旗', '150800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('424', '150825', '乌拉特后旗', '150800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('425', '150826', '杭锦后旗', '150800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('427', '150902', '集宁区', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('428', '150921', '卓资县', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('429', '150922', '化德县', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('430', '150923', '商都县', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('431', '150924', '兴和县', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('432', '150925', '凉城县', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('433', '150926', '察哈尔右翼前旗', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('434', '150927', '察哈尔右翼中旗', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('435', '150928', '察哈尔右翼后旗', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('436', '150929', '四子王旗', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('437', '150981', '丰镇市', '150900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('438', '152201', '乌兰浩特市', '152200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('439', '152202', '阿尔山市', '152200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('440', '152221', '科尔沁右翼前旗', '152200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('441', '152222', '科尔沁右翼中旗', '152200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('442', '152223', '扎赉特旗', '152200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('443', '152224', '突泉县', '152200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('444', '152501', '二连浩特市', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('445', '152502', '锡林浩特市', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('446', '152522', '阿巴嘎旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('447', '152523', '苏尼特左旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('448', '152524', '苏尼特右旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('449', '152525', '东乌珠穆沁旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('450', '152526', '西乌珠穆沁旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('451', '152527', '太仆寺旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('452', '152528', '镶黄旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('453', '152529', '正镶白旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('454', '152530', '正蓝旗', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('455', '152531', '多伦县', '152500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('456', '152921', '阿拉善左旗', '152900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('457', '152922', '阿拉善右旗', '152900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('458', '152923', '额济纳旗', '152900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('460', '210102', '浑南', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('461', '210103', '和平', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('462', '210104', '沈河', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('463', '210105', '大东', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('464', '210106', '皇姑', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('465', '210111', '铁西', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('466', '210112', '苏家屯', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('467', '210113', '东陵', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('468', '210114', '沈北', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('469', '210122', '于洪', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('470', '210123', '康平县', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('471', '210124', '法库县', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('472', '210181', '新民市', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('474', '210202', '中山区', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('475', '210203', '西岗区', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('476', '210204', '沙河口区', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('477', '210211', '甘井子区', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('478', '210212', '旅顺口区', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('479', '210213', '金州区', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('480', '210224', '长海县', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('481', '210281', '瓦房店市', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('482', '210282', '普兰店市', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('483', '210283', '庄河市', '210200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('485', '210302', '铁东区', '210300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('486', '210303', '铁西区', '210300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('487', '210304', '立山区', '210300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('488', '210311', '千山区', '210300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('489', '210321', '台安县', '210300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('490', '210323', '岫岩满族自治县', '210300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('491', '210381', '海城市', '210300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('493', '210402', '新抚区', '210400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('494', '210403', '东洲区', '210400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('495', '210404', '望花区', '210400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('496', '210411', '顺城区', '210400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('497', '210421', '抚顺县', '210400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('498', '210422', '新宾满族自治县', '210400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('499', '210423', '清原满族自治县', '210400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('501', '210502', '平山区', '210500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('502', '210503', '溪湖区', '210500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('503', '210504', '明山区', '210500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('504', '210505', '南芬区', '210500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('505', '210521', '本溪满族自治县', '210500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('506', '210522', '桓仁满族自治县', '210500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('508', '210602', '元宝区', '210600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('509', '210603', '振兴区', '210600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('510', '210604', '振安区', '210600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('511', '210624', '宽甸满族自治县', '210600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('512', '210681', '东港市', '210600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('513', '210682', '凤城市', '210600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('515', '210702', '古塔区', '210700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('516', '210703', '凌河区', '210700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('517', '210711', '太和区', '210700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('518', '210726', '黑山县', '210700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('519', '210727', '义　县', '210700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('520', '210781', '凌海市', '210700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('521', '210782', '北宁市', '210700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('523', '210802', '站前区', '210800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('524', '210803', '西市区', '210800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('525', '210804', '鲅鱼圈区', '210800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('526', '210811', '老边区', '210800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('527', '210881', '盖州市', '210800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('528', '210882', '大石桥市', '210800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('530', '210902', '海州区', '210900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('531', '210903', '新邱区', '210900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('532', '210904', '太平区', '210900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('533', '210905', '清河门区', '210900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('534', '210911', '细河区', '210900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('535', '210921', '阜新蒙古族自治县', '210900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('536', '210922', '彰武县', '210900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('538', '211002', '白塔区', '211000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('539', '211003', '文圣区', '211000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('540', '211004', '宏伟区', '211000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('541', '211005', '弓长岭区', '211000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('542', '211011', '太子河区', '211000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('543', '211021', '辽阳县', '211000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('544', '211081', '灯塔市', '211000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('546', '211102', '双台子区', '211100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('547', '211103', '兴隆台区', '211100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('548', '211121', '大洼县', '211100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('549', '211122', '盘山县', '211100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('551', '211202', '银州区', '211200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('552', '211204', '清河区', '211200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('553', '211221', '铁岭县', '211200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('554', '211223', '西丰县', '211200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('555', '211224', '昌图县', '211200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('556', '211281', '调兵山市', '211200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('557', '211282', '开原市', '211200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('559', '211302', '双塔区', '211300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('560', '211303', '龙城区', '211300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('561', '211321', '朝阳县', '211300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('562', '211322', '建平县', '211300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('563', '211324', '喀喇沁左翼蒙古族自治县', '211300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('564', '211381', '北票市', '211300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('565', '211382', '凌源市', '211300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('567', '211402', '连山区', '211400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('568', '211403', '龙港区', '211400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('569', '211404', '南票区', '211400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('570', '211421', '绥中县', '211400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('571', '211422', '建昌县', '211400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('572', '211481', '兴城市', '211400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('574', '220102', '南关区', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('575', '220103', '宽城区', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('576', '220104', '朝阳区', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('577', '220105', '二道区', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('578', '220106', '绿园区', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('579', '220112', '双阳区', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('580', '220122', '农安县', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('581', '220181', '九台市', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('582', '220182', '榆树市', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('583', '220183', '德惠市', '220100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('585', '220202', '昌邑区', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('586', '220203', '龙潭区', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('587', '220204', '船营区', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('588', '220211', '丰满区', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('589', '220221', '永吉县', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('590', '220281', '蛟河市', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('591', '220282', '桦甸市', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('592', '220283', '舒兰市', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('593', '220284', '磐石市', '220200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('595', '220302', '铁西区', '220300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('596', '220303', '铁东区', '220300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('597', '220322', '梨树县', '220300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('598', '220323', '伊通满族自治县', '220300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('599', '220381', '公主岭市', '220300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('600', '220382', '双辽市', '220300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('602', '220402', '龙山区', '220400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('603', '220403', '西安区', '220400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('604', '220421', '东丰县', '220400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('605', '220422', '东辽县', '220400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('607', '220502', '东昌区', '220500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('608', '220503', '二道江区', '220500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('609', '220521', '通化县', '220500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('610', '220523', '辉南县', '220500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('611', '220524', '柳河县', '220500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('612', '220581', '梅河口市', '220500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('613', '220582', '集安市', '220500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('615', '220602', '八道江区', '220600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('616', '220621', '抚松县', '220600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('617', '220622', '靖宇县', '220600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('618', '220623', '长白朝鲜族自治县', '220600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('619', '220625', '江源县', '220600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('620', '220681', '临江市', '220600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('622', '220702', '宁江区', '220700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('623', '220721', '前郭尔罗斯蒙古族自治县', '220700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('624', '220722', '长岭县', '220700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('625', '220723', '乾安县', '220700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('626', '220724', '扶余县', '220700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('628', '220802', '洮北区', '220800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('629', '220821', '镇赉县', '220800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('630', '220822', '通榆县', '220800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('631', '220881', '洮南市', '220800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('632', '220882', '大安市', '220800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('633', '222401', '延吉市', '222400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('634', '222402', '图们市', '222400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('635', '222403', '敦化市', '222400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('636', '222404', '珲春市', '222400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('637', '222405', '龙井市', '222400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('638', '222406', '和龙市', '222400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('639', '222424', '汪清县', '222400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('640', '222426', '安图县', '222400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('642', '230102', '道里区', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('643', '230103', '南岗区', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('644', '230104', '道外区', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('645', '230106', '香坊区', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('646', '230107', '动力区', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('647', '230108', '平房区', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('648', '230109', '松北区', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('649', '230111', '呼兰区', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('650', '230123', '依兰县', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('651', '230124', '方正县', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('652', '230125', '宾　县', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('653', '230126', '巴彦县', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('654', '230127', '木兰县', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('655', '230128', '通河县', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('656', '230129', '延寿县', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('657', '230181', '阿城市', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('658', '230182', '双城市', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('659', '230183', '尚志市', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('660', '230184', '五常市', '230100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('662', '230202', '龙沙区', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('663', '230203', '建华区', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('664', '230204', '铁锋区', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('665', '230205', '昂昂溪区', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('666', '230206', '富拉尔基区', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('667', '230207', '碾子山区', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('668', '230208', '梅里斯达斡尔族区', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('669', '230221', '龙江县', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('670', '230223', '依安县', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('671', '230224', '泰来县', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('672', '230225', '甘南县', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('673', '230227', '富裕县', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('674', '230229', '克山县', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('675', '230230', '克东县', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('676', '230231', '拜泉县', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('677', '230281', '讷河市', '230200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('679', '230302', '鸡冠区', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('680', '230303', '恒山区', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('681', '230304', '滴道区', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('682', '230305', '梨树区', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('683', '230306', '城子河区', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('684', '230307', '麻山区', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('685', '230321', '鸡东县', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('686', '230381', '虎林市', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('687', '230382', '密山市', '230300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('689', '230402', '向阳区', '230400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('690', '230403', '工农区', '230400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('691', '230404', '南山区', '230400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('692', '230405', '兴安区', '230400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('693', '230406', '东山区', '230400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('694', '230407', '兴山区', '230400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('695', '230421', '萝北县', '230400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('696', '230422', '绥滨县', '230400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('698', '230502', '尖山区', '230500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('699', '230503', '岭东区', '230500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('700', '230505', '四方台区', '230500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('701', '230506', '宝山区', '230500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('702', '230521', '集贤县', '230500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('703', '230522', '友谊县', '230500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('704', '230523', '宝清县', '230500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('705', '230524', '饶河县', '230500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('707', '230602', '萨尔图区', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('708', '230603', '龙凤区', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('709', '230604', '让胡路区', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('710', '230605', '红岗区', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('711', '230606', '大同区', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('712', '230621', '肇州县', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('713', '230622', '肇源县', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('714', '230623', '林甸县', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('715', '230624', '杜尔伯特蒙古族自治县', '230600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('717', '230702', '伊春区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('718', '230703', '南岔区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('719', '230704', '友好区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('720', '230705', '西林区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('721', '230706', '翠峦区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('722', '230707', '新青区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('723', '230708', '美溪区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('724', '230709', '金山屯区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('725', '230710', '五营区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('726', '230711', '乌马河区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('727', '230712', '汤旺河区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('728', '230713', '带岭区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('729', '230714', '乌伊岭区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('730', '230715', '红星区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('731', '230716', '上甘岭区', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('732', '230722', '嘉荫县', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('733', '230781', '铁力市', '230700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('735', '230802', '永红区', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('736', '230803', '向阳区', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('737', '230804', '前进区', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('738', '230805', '东风区', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('739', '230811', '郊　区', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('740', '230822', '桦南县', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('741', '230826', '桦川县', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('742', '230828', '汤原县', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('743', '230833', '抚远县', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('744', '230881', '同江市', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('745', '230882', '富锦市', '230800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('747', '230902', '新兴区', '230900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('748', '230903', '桃山区', '230900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('749', '230904', '茄子河区', '230900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('750', '230921', '勃利县', '230900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('752', '231002', '东安区', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('753', '231003', '阳明区', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('754', '231004', '爱民区', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('755', '231005', '西安区', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('756', '231024', '东宁县', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('757', '231025', '林口县', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('758', '231081', '绥芬河市', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('759', '231083', '海林市', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('760', '231084', '宁安市', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('761', '231085', '穆棱市', '231000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('763', '231102', '爱辉区', '231100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('764', '231121', '嫩江县', '231100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('765', '231123', '逊克县', '231100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('766', '231124', '孙吴县', '231100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('767', '231181', '北安市', '231100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('768', '231182', '五大连池市', '231100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('770', '231202', '北林区', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('771', '231221', '望奎县', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('772', '231222', '兰西县', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('773', '231223', '青冈县', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('774', '231224', '庆安县', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('775', '231225', '明水县', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('776', '231226', '绥棱县', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('777', '231281', '安达市', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('778', '231282', '肇东市', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('779', '231283', '海伦市', '231200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('780', '232721', '呼玛县', '232700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('781', '232722', '塔河县', '232700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('782', '232723', '漠河县', '232700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('783', '310101', '黄浦区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('784', '310103', '卢湾区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('785', '310104', '徐汇区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('786', '310105', '长宁区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('787', '310106', '静安区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('788', '310107', '普陀区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('789', '310108', '闸北区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('790', '310109', '虹口区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('791', '310110', '杨浦区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('792', '310112', '闵行区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('793', '310113', '宝山区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('794', '310114', '嘉定区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('795', '310115', '浦东新区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('796', '310116', '金山区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('797', '310117', '松江区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('798', '310118', '青浦区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('799', '310119', '南汇区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('800', '310120', '奉贤区', '310100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('801', '310230', '崇明县', '310200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('803', '320102', '玄武区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('804', '320103', '白下区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('805', '320104', '秦淮区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('806', '320105', '建邺区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('807', '320106', '鼓楼区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('808', '320107', '下关区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('809', '320111', '浦口区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('810', '320113', '栖霞区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('811', '320114', '雨花台区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('812', '320115', '江宁区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('813', '320116', '六合区', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('814', '320124', '溧水县', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('815', '320125', '高淳县', '320100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('817', '320202', '崇安区', '320200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('818', '320203', '南长区', '320200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('819', '320204', '北塘区', '320200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('820', '320205', '锡山区', '320200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('821', '320206', '惠山区', '320200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('822', '320211', '滨湖区', '320200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('823', '320281', '江阴市', '320200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('824', '320282', '宜兴市', '320200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('826', '320302', '鼓楼区', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('827', '320303', '云龙区', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('828', '320304', '九里区', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('829', '320305', '贾汪区', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('830', '320311', '泉山区', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('831', '320321', '丰　县', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('832', '320322', '沛　县', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('833', '320323', '铜山县', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('834', '320324', '睢宁县', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('835', '320381', '新沂市', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('836', '320382', '邳州市', '320300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('838', '320402', '天宁区', '320400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('839', '320404', '钟楼区', '320400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('840', '320405', '戚墅堰区', '320400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('841', '320411', '新北区', '320400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('842', '320412', '武进区', '320400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('843', '320481', '溧阳市', '320400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('844', '320482', '金坛市', '320400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('846', '320502', '沧浪区', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('847', '320503', '平江区', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('848', '320504', '金阊区', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('849', '320505', '虎丘区', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('850', '320506', '吴中区', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('851', '320507', '相城区', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('852', '320581', '常熟市', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('853', '320582', '张家港市', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('854', '320583', '昆山市', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('855', '320584', '吴江市', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('856', '320585', '太仓市', '320500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('858', '320602', '崇川区', '320600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('859', '320611', '港闸区', '320600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('860', '320621', '海安县', '320600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('861', '320623', '如东县', '320600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('862', '320681', '启东市', '320600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('863', '320682', '如皋市', '320600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('864', '320683', '通州市', '320600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('865', '320684', '海门市', '320600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('867', '320703', '连云区', '320700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('868', '320705', '新浦区', '320700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('869', '320706', '海州区', '320700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('870', '320721', '赣榆县', '320700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('871', '320722', '东海县', '320700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('872', '320723', '灌云县', '320700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('873', '320724', '灌南县', '320700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('875', '320802', '清河区', '320800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('876', '320803', '楚州区', '320800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('877', '320804', '淮阴区', '320800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('878', '320811', '清浦区', '320800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('879', '320826', '涟水县', '320800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('880', '320829', '洪泽县', '320800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('881', '320830', '盱眙县', '320800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('882', '320831', '金湖县', '320800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('884', '320902', '亭湖区', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('885', '320903', '盐都区', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('886', '320921', '响水县', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('887', '320922', '滨海县', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('888', '320923', '阜宁县', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('889', '320924', '射阳县', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('890', '320925', '建湖县', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('891', '320981', '东台市', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('892', '320982', '大丰市', '320900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('894', '321002', '广陵区', '321000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('895', '321003', '邗江区', '321000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('896', '321011', '郊　区', '321000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('897', '321023', '宝应县', '321000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('898', '321081', '仪征市', '321000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('899', '321084', '高邮市', '321000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('900', '321088', '江都市', '321000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('902', '321102', '京口区', '321100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('903', '321111', '润州区', '321100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('904', '321112', '丹徒区', '321100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('905', '321181', '丹阳市', '321100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('906', '321182', '扬中市', '321100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('907', '321183', '句容市', '321100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('909', '321202', '海陵区', '321200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('910', '321203', '高港区', '321200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('911', '321281', '兴化市', '321200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('912', '321282', '靖江市', '321200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('913', '321283', '泰兴市', '321200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('914', '321284', '姜堰市', '321200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('916', '321302', '宿城区', '321300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('917', '321311', '宿豫区', '321300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('918', '321322', '沭阳县', '321300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('919', '321323', '泗阳县', '321300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('920', '321324', '泗洪县', '321300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('922', '330102', '上城区', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('923', '330103', '下城区', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('924', '330104', '江干区', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('925', '330105', '拱墅区', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('926', '330106', '西湖区', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('927', '330108', '滨江区', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('928', '330109', '萧山区', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('929', '330110', '余杭区', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('930', '330122', '桐庐县', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('931', '330127', '淳安县', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('932', '330182', '建德市', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('933', '330183', '富阳市', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('934', '330185', '临安市', '330100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('936', '330203', '海曙区', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('937', '330204', '江东区', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('938', '330205', '江北区', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('939', '330206', '北仑区', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('940', '330211', '镇海区', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('941', '330212', '鄞州区', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('942', '330225', '象山县', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('943', '330226', '宁海县', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('944', '330281', '余姚市', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('945', '330282', '慈溪市', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('946', '330283', '奉化市', '330200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('948', '330302', '鹿城区', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('949', '330303', '龙湾区', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('950', '330304', '瓯海区', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('951', '330322', '洞头县', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('952', '330324', '永嘉县', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('953', '330326', '平阳县', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('954', '330327', '苍南县', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('955', '330328', '文成县', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('956', '330329', '泰顺县', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('957', '330381', '瑞安市', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('958', '330382', '乐清市', '330300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('960', '330402', '秀城区', '330400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('961', '330411', '秀洲区', '330400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('962', '330421', '嘉善县', '330400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('963', '330424', '海盐县', '330400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('964', '330481', '海宁市', '330400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('965', '330482', '平湖市', '330400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('966', '330483', '桐乡市', '330400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('968', '330502', '吴兴区', '330500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('969', '330503', '南浔区', '330500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('970', '330521', '德清县', '330500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('971', '330522', '长兴县', '330500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('972', '330523', '安吉县', '330500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('974', '330602', '越城区', '330600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('975', '330621', '绍兴县', '330600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('976', '330624', '新昌县', '330600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('977', '330681', '诸暨市', '330600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('978', '330682', '上虞市', '330600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('979', '330683', '嵊州市', '330600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('981', '330702', '婺城区', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('982', '330703', '金东区', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('983', '330723', '武义县', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('984', '330726', '浦江县', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('985', '330727', '磐安县', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('986', '330781', '兰溪市', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('987', '330782', '义乌市', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('988', '330783', '东阳市', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('989', '330784', '永康市', '330700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('991', '330802', '柯城区', '330800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('992', '330803', '衢江区', '330800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('993', '330822', '常山县', '330800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('994', '330824', '开化县', '330800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('995', '330825', '龙游县', '330800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('996', '330881', '江山市', '330800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('998', '330902', '定海区', '330900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('999', '330903', '普陀区', '330900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1000', '330921', '岱山县', '330900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1001', '330922', '嵊泗县', '330900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1003', '331002', '椒江区', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1004', '331003', '黄岩区', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1005', '331004', '路桥区', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1006', '331021', '玉环县', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1007', '331022', '三门县', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1008', '331023', '天台县', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1009', '331024', '仙居县', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1010', '331081', '温岭市', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1011', '331082', '临海市', '331000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1013', '331102', '莲都区', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1014', '331121', '青田县', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1015', '331122', '缙云县', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1016', '331123', '遂昌县', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1017', '331124', '松阳县', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1018', '331125', '云和县', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1019', '331126', '庆元县', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1020', '331127', '景宁畲族自治县', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1021', '331181', '龙泉市', '331100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1023', '340102', '瑶海区', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('1024', '340103', '庐阳区', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('1025', '340104', '蜀山区', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('1026', '340111', '包河区', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('1027', '340121', '长丰县', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('1028', '340122', '肥东县', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('1029', '340123', '肥西县', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('1031', '340202', '镜湖区', '340200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1032', '340203', '弋江', '340200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1033', '340204', '三山', '340200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1034', '340207', '鸠江区', '340200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1035', '340221', '芜湖县', '340200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1036', '340222', '繁昌县', '340200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1037', '340223', '南陵县', '340200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1039', '340302', '龙子湖区', '340300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1040', '340303', '蚌山区', '340300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1041', '340304', '禹会区', '340300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1042', '340311', '淮上区', '340300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1043', '340321', '怀远县', '340300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1044', '340322', '五河县', '340300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1045', '340323', '固镇县', '340300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1047', '340402', '大通区', '340400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1048', '340403', '田家庵区', '340400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1049', '340404', '谢家集区', '340400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1050', '340405', '八公山区', '340400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1051', '340406', '潘集区', '340400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1052', '340421', '凤台县', '340400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1054', '340502', '金家庄区', '340500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1055', '340503', '花山区', '340500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1056', '340504', '雨山区', '340500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1057', '340521', '当涂县', '340500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1059', '340602', '杜集区', '340600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1060', '340603', '相山区', '340600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1061', '340604', '烈山区', '340600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1062', '340621', '濉溪县', '340600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1064', '340702', '铜官山区', '340700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1065', '340703', '狮子山区', '340700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1066', '340711', '郊　区', '340700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1067', '340721', '铜陵县', '340700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1069', '340802', '迎江区', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1070', '340803', '大观区', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1071', '340811', '郊　区', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1072', '340822', '怀宁县', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1073', '340823', '枞阳县', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1074', '340824', '潜山县', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1075', '340825', '太湖县', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1076', '340826', '宿松县', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1077', '340827', '望江县', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1078', '340828', '岳西县', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1079', '340881', '桐城市', '340800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1081', '341002', '屯溪区', '341000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1082', '341003', '黄山区', '341000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1083', '341004', '徽州区', '341000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1084', '341021', '歙　县', '341000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1085', '341022', '休宁县', '341000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1086', '341023', '黟　县', '341000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1087', '341024', '祁门县', '341000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1089', '341102', '琅琊区', '341100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1090', '341103', '南谯区', '341100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1091', '341122', '来安县', '341100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1092', '341124', '全椒县', '341100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1093', '341125', '定远县', '341100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1094', '341126', '凤阳县', '341100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1095', '341181', '天长市', '341100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1096', '341182', '明光市', '341100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1098', '341202', '颍州区', '341200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1099', '341203', '颍东区', '341200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1100', '341204', '颍泉区', '341200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1101', '341221', '临泉县', '341200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1102', '341222', '太和县', '341200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1103', '341225', '阜南县', '341200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1104', '341226', '颍上县', '341200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1105', '341282', '界首市', '341200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1107', '341302', '墉桥区', '341300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1108', '341321', '砀山县', '341300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1109', '341322', '萧　县', '341300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1110', '341323', '灵璧县', '341300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1111', '341324', '泗　县', '341300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1113', '341402', '居巢区', '341400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1114', '341421', '庐江县', '341400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1115', '341422', '无为县', '341400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1116', '341423', '含山县', '341400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1117', '341424', '和　县', '341400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1119', '341502', '金安区', '341500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1120', '341503', '裕安区', '341500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1121', '341521', '寿　县', '341500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1122', '341522', '霍邱县', '341500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1123', '341523', '舒城县', '341500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1124', '341524', '金寨县', '341500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1125', '341525', '霍山县', '341500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1127', '341602', '谯城区', '341600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1128', '341621', '涡阳县', '341600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1129', '341622', '蒙城县', '341600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1130', '341623', '利辛县', '341600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1132', '341702', '贵池区', '341700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1133', '341721', '东至县', '341700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1134', '341722', '石台县', '341700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1135', '341723', '青阳县', '341700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1137', '341802', '宣州区', '341800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1138', '341821', '郎溪县', '341800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1139', '341822', '广德县', '341800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1140', '341823', '泾　县', '341800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1141', '341824', '绩溪县', '341800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1142', '341825', '旌德县', '341800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1143', '341881', '宁国市', '341800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1145', '350102', '鼓楼区', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1146', '350103', '台江区', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1147', '350104', '仓山区', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1148', '350105', '马尾区', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1149', '350111', '晋安区', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1150', '350121', '闽侯县', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1151', '350122', '连江县', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1152', '350123', '罗源县', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1153', '350124', '闽清县', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1154', '350125', '永泰县', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1155', '350128', '平潭县', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1156', '350181', '福清市', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1157', '350182', '长乐市', '350100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1159', '350203', '思明区', '350200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1160', '350205', '海沧区', '350200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1161', '350206', '湖里区', '350200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1162', '350211', '集美区', '350200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1163', '350212', '同安区', '350200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1164', '350213', '翔安区', '350200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1166', '350302', '城厢区', '350300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1167', '350303', '涵江区', '350300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1168', '350304', '荔城区', '350300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1169', '350305', '秀屿区', '350300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1170', '350322', '仙游县', '350300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1172', '350402', '梅列区', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1173', '350403', '三元区', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1174', '350421', '明溪县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1175', '350423', '清流县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1176', '350424', '宁化县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1177', '350425', '大田县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1178', '350426', '尤溪县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1179', '350427', '沙　县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1180', '350428', '将乐县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1181', '350429', '泰宁县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1182', '350430', '建宁县', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1183', '350481', '永安市', '350400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1185', '350502', '鲤城区', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1186', '350503', '丰泽区', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1187', '350504', '洛江区', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1188', '350505', '泉港区', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1189', '350521', '惠安县', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1190', '350524', '安溪县', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1191', '350525', '永春县', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1192', '350526', '德化县', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1193', '350527', '金门县', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1194', '350581', '石狮市', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1195', '350582', '晋江市', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1196', '350583', '南安市', '350500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1198', '350602', '芗城区', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1199', '350603', '龙文区', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1200', '350622', '云霄县', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1201', '350623', '漳浦县', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1202', '350624', '诏安县', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1203', '350625', '长泰县', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1204', '350626', '东山县', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1205', '350627', '南靖县', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1206', '350628', '平和县', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1207', '350629', '华安县', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1208', '350681', '龙海市', '350600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1210', '350702', '延平区', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1211', '350721', '顺昌县', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1212', '350722', '浦城县', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1213', '350723', '光泽县', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1214', '350724', '松溪县', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1215', '350725', '政和县', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1216', '350781', '邵武市', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1217', '350782', '武夷山市', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1218', '350783', '建瓯市', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1219', '350784', '建阳市', '350700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1221', '350802', '新罗区', '350800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1222', '350821', '长汀县', '350800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1223', '350822', '永定县', '350800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1224', '350823', '上杭县', '350800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1225', '350824', '武平县', '350800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1226', '350825', '连城县', '350800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1227', '350881', '漳平市', '350800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1229', '350902', '蕉城区', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1230', '350921', '霞浦县', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1231', '350922', '古田县', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1232', '350923', '屏南县', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1233', '350924', '寿宁县', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1234', '350925', '周宁县', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1235', '350926', '柘荣县', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1236', '350981', '福安市', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1237', '350982', '福鼎市', '350900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1239', '360102', '东湖区', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1240', '360103', '西湖区', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1241', '360104', '青云谱区', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1242', '360105', '湾里区', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1243', '360111', '青山湖区', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1244', '360121', '南昌县', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1245', '360122', '新建县', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1246', '360123', '安义县', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1247', '360124', '进贤县', '360100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1249', '360202', '昌江区', '360200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1250', '360203', '珠山区', '360200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1251', '360222', '浮梁县', '360200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1252', '360281', '乐平市', '360200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1254', '360302', '安源区', '360300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1255', '360313', '湘东区', '360300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1256', '360321', '莲花县', '360300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1257', '360322', '上栗县', '360300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1258', '360323', '芦溪县', '360300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1260', '360402', '庐山区', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1261', '360403', '浔阳区', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1262', '360421', '九江县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1263', '360423', '武宁县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1264', '360424', '修水县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1265', '360425', '永修县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1266', '360426', '德安县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1267', '360427', '星子县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1268', '360428', '都昌县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1269', '360429', '湖口县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1270', '360430', '彭泽县', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1271', '360481', '瑞昌市', '360400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1273', '360502', '渝水区', '360500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1274', '360521', '分宜县', '360500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1276', '360602', '月湖区', '360600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1277', '360622', '余江县', '360600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1278', '360681', '贵溪市', '360600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1280', '360702', '章贡区', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1281', '360721', '赣　县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1282', '360722', '信丰县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1283', '360723', '大余县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1284', '360724', '上犹县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1285', '360725', '崇义县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1286', '360726', '安远县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1287', '360727', '龙南县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1288', '360728', '定南县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1289', '360729', '全南县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1290', '360730', '宁都县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1291', '360731', '于都县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1292', '360732', '兴国县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1293', '360733', '会昌县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1294', '360734', '寻乌县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1295', '360735', '石城县', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1296', '360781', '瑞金市', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1297', '360782', '南康市', '360700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1299', '360802', '吉州区', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1300', '360803', '青原区', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1301', '360821', '吉安县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1302', '360822', '吉水县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1303', '360823', '峡江县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1304', '360824', '新干县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1305', '360825', '永丰县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1306', '360826', '泰和县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1307', '360827', '遂川县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1308', '360828', '万安县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1309', '360829', '安福县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1310', '360830', '永新县', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1311', '360881', '井冈山市', '360800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1313', '360902', '袁州区', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1314', '360921', '奉新县', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1315', '360922', '万载县', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1316', '360923', '上高县', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1317', '360924', '宜丰县', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1318', '360925', '靖安县', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1319', '360926', '铜鼓县', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1320', '360981', '丰城市', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1321', '360982', '樟树市', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1322', '360983', '高安市', '360900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1324', '361002', '临川区', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1325', '361021', '南城县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1326', '361022', '黎川县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1327', '361023', '南丰县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1328', '361024', '崇仁县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1329', '361025', '乐安县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1330', '361026', '宜黄县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1331', '361027', '金溪县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1332', '361028', '资溪县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1333', '361029', '东乡县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1334', '361030', '广昌县', '361000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1336', '361102', '信州区', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1337', '361121', '上饶县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1338', '361122', '广丰县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1339', '361123', '玉山县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1340', '361124', '铅山县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1341', '361125', '横峰县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1342', '361126', '弋阳县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1343', '361127', '余干县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1344', '361128', '鄱阳县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1345', '361129', '万年县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1346', '361130', '婺源县', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1347', '361181', '德兴市', '361100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1349', '370102', '历下区', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1350', '370103', '市中区', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1351', '370104', '槐荫区', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1352', '370105', '天桥区', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1353', '370112', '历城区', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1354', '370113', '长清区', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1355', '370124', '平阴县', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1356', '370125', '济阳县', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1357', '370126', '商河县', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1358', '370181', '章丘市', '370100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1360', '370202', '市南区', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1361', '370203', '市北区', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1362', '370205', '四方区', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1363', '370211', '黄岛区', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1364', '370212', '崂山区', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1365', '370213', '李沧区', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1366', '370214', '城阳区', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1367', '370281', '胶州市', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1368', '370282', '即墨市', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1369', '370283', '平度市', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1370', '370284', '胶南市', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1371', '370285', '莱西市', '370200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1373', '370302', '淄川区', '370300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1374', '370303', '张店区', '370300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1375', '370304', '博山区', '370300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1376', '370305', '临淄区', '370300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1377', '370306', '周村区', '370300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1378', '370321', '桓台县', '370300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1379', '370322', '高青县', '370300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1380', '370323', '沂源县', '370300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1382', '370402', '市中区', '370400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1383', '370403', '薛城区', '370400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1384', '370404', '峄城区', '370400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1385', '370405', '台儿庄区', '370400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1386', '370406', '山亭区', '370400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1387', '370481', '滕州市', '370400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1389', '370502', '东营区', '370500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1390', '370503', '河口区', '370500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1391', '370521', '垦利县', '370500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1392', '370522', '利津县', '370500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1393', '370523', '广饶县', '370500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1395', '370602', '芝罘区', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1396', '370611', '福山区', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1397', '370612', '牟平区', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1398', '370613', '莱山区', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1399', '370634', '长岛县', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1400', '370681', '龙口市', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1401', '370682', '莱阳市', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1402', '370683', '莱州市', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1403', '370684', '蓬莱市', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1404', '370685', '招远市', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1405', '370686', '栖霞市', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1406', '370687', '海阳市', '370600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1408', '370702', '潍城区', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1409', '370703', '寒亭区', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1410', '370704', '坊子区', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1411', '370705', '奎文区', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1412', '370724', '临朐县', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1413', '370725', '昌乐县', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1414', '370781', '青州市', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1415', '370782', '诸城市', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1416', '370783', '寿光市', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1417', '370784', '安丘市', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1418', '370785', '高密市', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1419', '370786', '昌邑市', '370700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1421', '370802', '市中区', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1422', '370811', '任城区', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1423', '370826', '微山县', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1424', '370827', '鱼台县', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1425', '370828', '金乡县', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1426', '370829', '嘉祥县', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1427', '370830', '汶上县', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1428', '370831', '泗水县', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1429', '370832', '梁山县', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1430', '370881', '曲阜市', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1431', '370882', '兖州市', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1432', '370883', '邹城市', '370800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1434', '370902', '泰山区', '370900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1435', '370903', '岱岳区', '370900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1436', '370921', '宁阳县', '370900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1437', '370923', '东平县', '370900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1438', '370982', '新泰市', '370900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1439', '370983', '肥城市', '370900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1441', '371002', '环翠区', '371000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1442', '371081', '文登市', '371000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1443', '371082', '荣成市', '371000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1444', '371083', '乳山市', '371000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1446', '371102', '东港区', '371100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1447', '371103', '岚山区', '371100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1448', '371121', '五莲县', '371100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1449', '371122', '莒　县', '371100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1451', '371202', '莱城区', '371200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1452', '371203', '钢城区', '371200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1454', '371302', '兰山区', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1455', '371311', '罗庄区', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1456', '371312', '河东区', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1457', '371321', '沂南县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1458', '371322', '郯城县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1459', '371323', '沂水县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1460', '371324', '苍山县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1461', '371325', '费　县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1462', '371326', '平邑县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1463', '371327', '莒南县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1464', '371328', '蒙阴县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1465', '371329', '临沭县', '371300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1467', '371402', '德城区', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1468', '371421', '陵　县', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1469', '371422', '宁津县', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1470', '371423', '庆云县', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1471', '371424', '临邑县', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1472', '371425', '齐河县', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1473', '371426', '平原县', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1474', '371427', '夏津县', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1475', '371428', '武城县', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1476', '371481', '乐陵市', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1477', '371482', '禹城市', '371400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1479', '371502', '东昌府区', '371500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1480', '371521', '阳谷县', '371500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1481', '371522', '莘　县', '371500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1482', '371523', '茌平县', '371500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1483', '371524', '东阿县', '371500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1484', '371525', '冠　县', '371500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1485', '371526', '高唐县', '371500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1486', '371581', '临清市', '371500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1488', '371602', '滨城区', '371600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1489', '371621', '惠民县', '371600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1490', '371622', '阳信县', '371600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1491', '371623', '无棣县', '371600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1492', '371624', '沾化县', '371600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1493', '371625', '博兴县', '371600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1494', '371626', '邹平县', '371600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1496', '371702', '牡丹区', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1497', '371721', '曹　县', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1498', '371722', '单　县', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1499', '371723', '成武县', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1500', '371724', '巨野县', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1501', '371725', '郓城县', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1502', '371726', '鄄城县', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1503', '371727', '定陶县', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1504', '371728', '东明县', '371700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1506', '410102', '中原', '410100', '2', null, null, null);
INSERT INTO `shop_area` VALUES ('1507', '410103', '二七', '410100', '3', null, null, null);
INSERT INTO `shop_area` VALUES ('1508', '410104', '管城', '410100', '4', null, null, null);
INSERT INTO `shop_area` VALUES ('1510', '410106', '郑东', '410100', '6', null, null, null);
INSERT INTO `shop_area` VALUES ('1511', '410108', '惠济', '410100', '7', null, null, null);
INSERT INTO `shop_area` VALUES ('1512', '410122', '高新', '410100', '8', null, null, null);
INSERT INTO `shop_area` VALUES ('1513', '410181', '经济开发区', '410100', '9', null, null, null);
INSERT INTO `shop_area` VALUES ('1514', '410182', '中牟', '410100', '10', null, null, null);
INSERT INTO `shop_area` VALUES ('1515', '410183', '周边地区', '410100', '11', null, null, null);
INSERT INTO `shop_area` VALUES ('1519', '410202', '龙亭区', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1520', '410203', '顺河回族区', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1521', '410204', '鼓楼区', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1522', '410205', '南关区', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1523', '410211', '郊　区', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1524', '410221', '杞　县', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1525', '410222', '通许县', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1526', '410223', '尉氏县', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1527', '410224', '开封县', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1528', '410225', '兰考县', '410200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1530', '410302', '老城区', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1531', '410303', '西工区', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1532', '410304', '廛河回族区', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1533', '410305', '涧西区', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1534', '410306', '吉利区', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1535', '410307', '洛龙区', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1536', '410322', '孟津县', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1537', '410323', '新安县', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1538', '410324', '栾川县', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1539', '410325', '嵩　县', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1540', '410326', '汝阳县', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1541', '410327', '宜阳县', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1542', '410328', '洛宁县', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1543', '410329', '伊川县', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1544', '410381', '偃师市', '410300', null, null, '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('1546', '410402', '新华区', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1547', '410403', '卫东区', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1548', '410404', '石龙区', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1549', '410411', '湛河区', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1550', '410421', '宝丰县', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1551', '410422', '叶　县', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1552', '410423', '鲁山县', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1553', '410425', '郏　县', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1554', '410481', '舞钢市', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1555', '410482', '汝州市', '410400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1557', '410502', '文峰区', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1558', '410503', '北关区', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1559', '410505', '殷都区', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1560', '410506', '龙安区', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1561', '410522', '安阳县', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1562', '410523', '汤阴县', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1563', '410526', '滑　县', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1564', '410527', '内黄县', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1565', '410581', '林州市', '410500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1567', '410602', '鹤山区', '410600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1568', '410603', '山城区', '410600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1569', '410611', '淇滨区', '410600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1570', '410621', '浚　县', '410600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1571', '410622', '淇　县', '410600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1573', '410702', '红旗区', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1574', '410703', '卫滨区', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1575', '410704', '凤泉区', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1576', '410711', '牧野区', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1577', '410721', '新乡县', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1578', '410724', '获嘉县', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1579', '410725', '原阳县', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1580', '410726', '延津县', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1581', '410727', '封丘县', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1582', '410728', '长垣县', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1583', '410781', '卫辉市', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1584', '410782', '辉县市', '410700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1586', '410802', '解放区', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1587', '410803', '中站区', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1588', '410804', '马村区', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1589', '410811', '山阳区', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1590', '410821', '修武县', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1591', '410822', '博爱县', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1592', '410823', '武陟县', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1593', '410825', '温　县', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1594', '410881', '济源市', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1595', '410882', '沁阳市', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1596', '410883', '孟州市', '410800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1598', '410902', '华龙区', '410900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1599', '410922', '清丰县', '410900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1600', '410923', '南乐县', '410900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1601', '410926', '范　县', '410900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1602', '410927', '台前县', '410900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1603', '410928', '濮阳县', '410900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1605', '411002', '魏都区', '411000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1606', '411023', '许昌县', '411000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1607', '411024', '鄢陵县', '411000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1608', '411025', '襄城县', '411000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1609', '411081', '禹州市', '411000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1610', '411082', '长葛市', '411000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1612', '411102', '源汇区', '411100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1613', '411103', '郾城区', '411100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1614', '411104', '召陵区', '411100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1615', '411121', '舞阳县', '411100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1616', '411122', '临颍县', '411100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1618', '411202', '湖滨区', '411200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1619', '411221', '渑池县', '411200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1620', '411222', '陕　县', '411200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1621', '411224', '卢氏县', '411200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1622', '411281', '义马市', '411200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1623', '411282', '灵宝市', '411200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1625', '411302', '宛城区', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1626', '411303', '卧龙区', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1627', '411321', '南召县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1628', '411322', '方城县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1629', '411323', '西峡县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1630', '411324', '镇平县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1631', '411325', '内乡县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1632', '411326', '淅川县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1633', '411327', '社旗县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1634', '411328', '唐河县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1635', '411329', '新野县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1636', '411330', '桐柏县', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1637', '411381', '邓州市', '411300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1639', '411402', '梁园区', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1640', '411403', '睢阳区', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1641', '411421', '民权县', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1642', '411422', '睢　县', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1643', '411423', '宁陵县', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1644', '411424', '柘城县', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1645', '411425', '虞城县', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1646', '411426', '夏邑县', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1647', '411481', '永城市', '411400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1649', '411502', '师河区', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1650', '411503', '平桥区', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1651', '411521', '罗山县', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1652', '411522', '光山县', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1653', '411523', '新　县', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1654', '411524', '商城县', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1655', '411525', '固始县', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1656', '411526', '潢川县', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1657', '411527', '淮滨县', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1658', '411528', '息　县', '411500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1660', '411602', '川汇区', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1661', '411621', '扶沟县', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1662', '411622', '西华县', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1663', '411623', '商水县', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1664', '411624', '沈丘县', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1665', '411625', '郸城县', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1666', '411626', '淮阳县', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1667', '411627', '太康县', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1668', '411628', '鹿邑县', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1669', '411681', '项城市', '411600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1671', '411702', '驿城区', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1672', '411721', '西平县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1673', '411722', '上蔡县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1674', '411723', '平舆县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1675', '411724', '正阳县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1676', '411725', '确山县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1677', '411726', '泌阳县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1678', '411727', '汝南县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1679', '411728', '遂平县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1680', '411729', '新蔡县', '411700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1682', '420102', '江岸区', '420100', null, null, '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('1683', '420103', '江汉区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1684', '420104', '硚口区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1685', '420105', '汉阳区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1686', '420106', '武昌区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1687', '420107', '青山区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1688', '420111', '洪山区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1689', '420112', '东西湖区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1690', '420113', '汉南区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1691', '420114', '蔡甸区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1692', '420115', '江夏区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1693', '420116', '黄陂区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1694', '420117', '新洲区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('1696', '420202', '黄石港区', '420200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1697', '420203', '西塞山区', '420200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1698', '420204', '下陆区', '420200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1699', '420205', '铁山区', '420200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1700', '420222', '阳新县', '420200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1701', '420281', '大冶市', '420200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1703', '420302', '茅箭区', '420300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1704', '420303', '张湾区', '420300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1705', '420321', '郧　县', '420300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1706', '420322', '郧西县', '420300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1707', '420323', '竹山县', '420300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1708', '420324', '竹溪县', '420300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1709', '420325', '房　县', '420300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1710', '420381', '丹江口市', '420300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1712', '420502', '西陵区', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1713', '420503', '伍家岗区', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1714', '420504', '点军区', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1715', '420505', '猇亭区', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1716', '420506', '夷陵区', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1717', '420525', '远安县', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1718', '420526', '兴山县', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1719', '420527', '秭归县', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1720', '420528', '长阳土家族自治县', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1721', '420529', '五峰土家族自治县', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1722', '420581', '宜都市', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1723', '420582', '当阳市', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1724', '420583', '枝江市', '420500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1726', '420602', '襄城区', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1727', '420606', '樊城区', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1728', '420607', '襄州区', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1729', '420624', '南漳县', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1730', '420625', '谷城县', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1731', '420626', '保康县', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1732', '420682', '老河口市', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1733', '420683', '枣阳市', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1734', '420684', '宜城市', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1736', '420702', '梁子湖区', '420700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1737', '420703', '华容区', '420700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1738', '420704', '鄂城区', '420700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1740', '420802', '东宝区', '420800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1741', '420804', '掇刀区', '420800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1742', '420821', '京山县', '420800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1743', '420822', '沙洋县', '420800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1744', '420881', '钟祥市', '420800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1746', '420902', '孝南区', '420900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1747', '420921', '孝昌县', '420900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1748', '420922', '大悟县', '420900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1749', '420923', '云梦县', '420900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1750', '420981', '应城市', '420900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1751', '420982', '安陆市', '420900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1752', '420984', '汉川市', '420900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1754', '421002', '沙市区', '421000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1755', '421003', '荆州区', '421000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1756', '421022', '公安县', '421000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1757', '421023', '监利县', '421000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1758', '421024', '江陵县', '421000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1759', '421081', '石首市', '421000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1760', '421083', '洪湖市', '421000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1761', '421087', '松滋市', '421000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1763', '421102', '黄州区', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1764', '421121', '团风县', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1765', '421122', '红安县', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1766', '421123', '罗田县', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1767', '421124', '英山县', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1768', '421125', '浠水县', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1769', '421126', '蕲春县', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1770', '421127', '黄梅县', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1771', '421181', '麻城市', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1772', '421182', '武穴市', '421100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1774', '421202', '咸安区', '421200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1775', '421221', '嘉鱼县', '421200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1776', '421222', '通城县', '421200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1777', '421223', '崇阳县', '421200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1778', '421224', '通山县', '421200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1779', '421281', '赤壁市', '421200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1781', '421302', '曾都区', '421300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1782', '421381', '广水市', '421300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1783', '422801', '恩施市', '422800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1784', '422802', '利川市', '422800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1785', '422822', '建始县', '422800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1786', '422823', '巴东县', '422800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1787', '422825', '宣恩县', '422800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1788', '422826', '咸丰县', '422800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1789', '422827', '来凤县', '422800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1790', '422828', '鹤峰县', '422800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1791', '429004', '仙桃市', '429000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1792', '429005', '潜江市', '429000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1793', '429006', '天门市', '429000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1794', '429021', '神农架林区', '429000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1796', '430102', '芙蓉区', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1797', '430103', '天心区', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1798', '430104', '岳麓区', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1799', '430105', '开福区', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1800', '430111', '雨花区', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1801', '430121', '长沙县', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1802', '430122', '望城县', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1803', '430124', '宁乡县', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1804', '430181', '浏阳市', '430100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1806', '430202', '荷塘区', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1807', '430203', '芦淞区', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1808', '430204', '石峰区', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1809', '430211', '天元区', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1810', '430221', '株洲县', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1811', '430223', '攸　县', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1812', '430224', '茶陵县', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1813', '430225', '炎陵县', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1814', '430281', '醴陵市', '430200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1816', '430302', '雨湖区', '430300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1817', '430304', '岳塘区', '430300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1818', '430321', '湘潭县', '430300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1819', '430381', '湘乡市', '430300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1820', '430382', '韶山市', '430300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1822', '430405', '珠晖区', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1823', '430406', '雁峰区', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1824', '430407', '石鼓区', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1825', '430408', '蒸湘区', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1826', '430412', '南岳区', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1827', '430421', '衡阳县', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1828', '430422', '衡南县', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1829', '430423', '衡山县', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1830', '430424', '衡东县', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1831', '430426', '祁东县', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1832', '430481', '耒阳市', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1833', '430482', '常宁市', '430400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1835', '430502', '双清区', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1836', '430503', '大祥区', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1837', '430511', '北塔区', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1838', '430521', '邵东县', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1839', '430522', '新邵县', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1840', '430523', '邵阳县', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1841', '430524', '隆回县', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1842', '430525', '洞口县', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1843', '430527', '绥宁县', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1844', '430528', '新宁县', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1845', '430529', '城步苗族自治县', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1846', '430581', '武冈市', '430500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1848', '430602', '岳阳楼区', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1849', '430603', '云溪区', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1850', '430611', '君山区', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1851', '430621', '岳阳县', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1852', '430623', '华容县', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1853', '430624', '湘阴县', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1854', '430626', '平江县', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1855', '430681', '汨罗市', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1856', '430682', '临湘市', '430600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1858', '430702', '武陵区', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1859', '430703', '鼎城区', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1860', '430721', '安乡县', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1861', '430722', '汉寿县', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1862', '430723', '澧　县', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1863', '430724', '临澧县', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1864', '430725', '桃源县', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1865', '430726', '石门县', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1866', '430781', '津市市', '430700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1868', '430802', '永定区', '430800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1869', '430811', '武陵源区', '430800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1870', '430821', '慈利县', '430800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1871', '430822', '桑植县', '430800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1873', '430902', '资阳区', '430900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1874', '430903', '赫山区', '430900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1875', '430921', '南　县', '430900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1876', '430922', '桃江县', '430900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1877', '430923', '安化县', '430900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1878', '430981', '沅江市', '430900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1880', '431002', '北湖区', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1881', '431003', '苏仙区', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1882', '431021', '桂阳县', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1883', '431022', '宜章县', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1884', '431023', '永兴县', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1885', '431024', '嘉禾县', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1886', '431025', '临武县', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1887', '431026', '汝城县', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1888', '431027', '桂东县', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1889', '431028', '安仁县', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1890', '431081', '资兴市', '431000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1892', '431102', '芝山区', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1893', '431103', '冷水滩区', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1894', '431121', '祁阳县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1895', '431122', '东安县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1896', '431123', '双牌县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1897', '431124', '道　县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1898', '431125', '江永县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1899', '431126', '宁远县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1900', '431127', '蓝山县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1901', '431128', '新田县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1902', '431129', '江华瑶族自治县', '431100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1904', '431202', '鹤城区', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1905', '431221', '中方县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1906', '431222', '沅陵县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1907', '431223', '辰溪县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1908', '431224', '溆浦县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1909', '431225', '会同县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1910', '431226', '麻阳苗族自治县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1911', '431227', '新晃侗族自治县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1912', '431228', '芷江侗族自治县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1913', '431229', '靖州苗族侗族自治县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1914', '431230', '通道侗族自治县', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1915', '431281', '洪江市', '431200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1917', '431302', '娄星区', '431300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1918', '431321', '双峰县', '431300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1919', '431322', '新化县', '431300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1920', '431381', '冷水江市', '431300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1921', '431382', '涟源市', '431300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1922', '433101', '吉首市', '433100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1923', '433122', '泸溪县', '433100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1924', '433123', '凤凰县', '433100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1925', '433124', '花垣县', '433100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1926', '433125', '保靖县', '433100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1927', '433126', '古丈县', '433100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1928', '433127', '永顺县', '433100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1929', '433130', '龙山县', '433100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1931', '440102', '东山区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1932', '440103', '荔湾区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1933', '440104', '越秀区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1934', '440105', '海珠区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1935', '440106', '天河区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1936', '440107', '芳村区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1937', '440111', '白云区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1938', '440112', '黄埔区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1939', '440113', '番禺区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1940', '440114', '花都区', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1941', '440183', '增城市', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1942', '440184', '从化市', '440100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1944', '440203', '武江区', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1945', '440204', '浈江区', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1946', '440205', '曲江区', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1947', '440222', '始兴县', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1948', '440224', '仁化县', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1949', '440229', '翁源县', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1950', '440232', '乳源瑶族自治县', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1951', '440233', '新丰县', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1952', '440281', '乐昌市', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1953', '440282', '南雄市', '440200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1955', '440303', '罗湖区', '440300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1956', '440304', '福田区', '440300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1957', '440305', '南山区', '440300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1958', '440306', '宝安区', '440300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1959', '440307', '龙岗区', '440300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1960', '440308', '盐田区', '440300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1962', '440402', '香洲区', '440400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1963', '440403', '斗门区', '440400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1964', '440404', '金湾区', '440400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1966', '440507', '龙湖区', '440500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1967', '440511', '金平区', '440500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1968', '440512', '濠江区', '440500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1969', '440513', '潮阳区', '440500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1970', '440514', '潮南区', '440500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1971', '440515', '澄海区', '440500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1972', '440523', '南澳县', '440500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1974', '440604', '禅城区', '440600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1975', '440605', '南海区', '440600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1976', '440606', '顺德区', '440600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1977', '440607', '三水区', '440600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1978', '440608', '高明区', '440600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1980', '440703', '蓬江区', '440700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1981', '440704', '江海区', '440700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1982', '440705', '新会区', '440700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1983', '440781', '台山市', '440700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1984', '440783', '开平市', '440700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1985', '440784', '鹤山市', '440700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1986', '440785', '恩平市', '440700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1988', '440802', '赤坎区', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1989', '440803', '霞山区', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1990', '440804', '坡头区', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1991', '440811', '麻章区', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1992', '440823', '遂溪县', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1993', '440825', '徐闻县', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1994', '440881', '廉江市', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1995', '440882', '雷州市', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1996', '440883', '吴川市', '440800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1998', '440902', '茂南区', '440900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('1999', '440903', '茂港区', '440900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2000', '440923', '电白县', '440900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2001', '440981', '高州市', '440900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2002', '440982', '化州市', '440900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2003', '440983', '信宜市', '440900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2005', '441202', '端州区', '441200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2006', '441203', '鼎湖区', '441200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2007', '441223', '广宁县', '441200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2008', '441224', '怀集县', '441200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2009', '441225', '封开县', '441200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2010', '441226', '德庆县', '441200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2011', '441283', '高要市', '441200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2012', '441284', '四会市', '441200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2014', '441302', '惠城区', '441300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2015', '441303', '惠阳区', '441300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2016', '441322', '博罗县', '441300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2017', '441323', '惠东县', '441300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2018', '441324', '龙门县', '441300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2020', '441402', '梅江区', '441400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2021', '441421', '梅　县', '441400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2022', '441422', '大埔县', '441400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2023', '441423', '丰顺县', '441400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2024', '441424', '五华县', '441400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2025', '441426', '平远县', '441400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2026', '441427', '蕉岭县', '441400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2027', '441481', '兴宁市', '441400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2029', '441502', '城　区', '441500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2030', '441521', '海丰县', '441500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2031', '441523', '陆河县', '441500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2032', '441581', '陆丰市', '441500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2034', '441602', '源城区', '441600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2035', '441621', '紫金县', '441600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2036', '441622', '龙川县', '441600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2037', '441623', '连平县', '441600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2038', '441624', '和平县', '441600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2039', '441625', '东源县', '441600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2041', '441702', '江城区', '441700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2042', '441721', '阳西县', '441700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2043', '441723', '阳东县', '441700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2044', '441781', '阳春市', '441700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2046', '441802', '清城区', '441800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2047', '441821', '佛冈县', '441800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2048', '441823', '阳山县', '441800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2049', '441825', '连山壮族瑶族自治县', '441800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2050', '441826', '连南瑶族自治县', '441800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2051', '441827', '清新县', '441800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2052', '441881', '英德市', '441800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2053', '441882', '连州市', '441800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2055', '445102', '湘桥区', '445100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2056', '445121', '潮安县', '445100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2057', '445122', '饶平县', '445100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2059', '445202', '榕城区', '445200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2060', '445221', '揭东县', '445200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2061', '445222', '揭西县', '445200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2062', '445224', '惠来县', '445200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2063', '445281', '普宁市', '445200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2065', '445302', '云城区', '445300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2066', '445321', '新兴县', '445300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2067', '445322', '郁南县', '445300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2068', '445323', '云安县', '445300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2069', '445381', '罗定市', '445300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2071', '450102', '兴宁区', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2072', '450103', '青秀区', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2073', '450105', '江南区', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2074', '450107', '西乡塘区', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2075', '450108', '良庆区', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2076', '450109', '邕宁区', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2077', '450122', '武鸣县', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2078', '450123', '隆安县', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2079', '450124', '马山县', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2080', '450125', '上林县', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2081', '450126', '宾阳县', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2082', '450127', '横　县', '450100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2084', '450202', '城中区', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2085', '450203', '鱼峰区', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2086', '450204', '柳南区', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2087', '450205', '柳北区', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2088', '450221', '柳江县', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2089', '450222', '柳城县', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2090', '450223', '鹿寨县', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2091', '450224', '融安县', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2092', '450225', '融水苗族自治县', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2093', '450226', '三江侗族自治县', '450200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2095', '450302', '秀峰区', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2096', '450303', '叠彩区', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2097', '450304', '象山区', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2098', '450305', '七星区', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2099', '450311', '雁山区', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2100', '450321', '阳朔县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2101', '450322', '临桂县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2102', '450323', '灵川县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2103', '450324', '全州县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2104', '450325', '兴安县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2105', '450326', '永福县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2106', '450327', '灌阳县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2107', '450328', '龙胜各族自治县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2108', '450329', '资源县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2109', '450330', '平乐县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2110', '450331', '荔蒲县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2111', '450332', '恭城瑶族自治县', '450300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2113', '450403', '万秀区', '450400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2114', '450404', '蝶山区', '450400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2115', '450405', '长洲区', '450400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2116', '450421', '苍梧县', '450400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2117', '450422', '藤　县', '450400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2118', '450423', '蒙山县', '450400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2119', '450481', '岑溪市', '450400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2121', '450502', '海城区', '450500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2122', '450503', '银海区', '450500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2123', '450512', '铁山港区', '450500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2124', '450521', '合浦县', '450500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2126', '450602', '港口区', '450600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2127', '450603', '防城区', '450600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2128', '450621', '上思县', '450600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2129', '450681', '东兴市', '450600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2131', '450702', '钦南区', '450700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2132', '450703', '钦北区', '450700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2133', '450721', '灵山县', '450700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2134', '450722', '浦北县', '450700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2136', '450802', '港北区', '450800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2137', '450803', '港南区', '450800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2138', '450804', '覃塘区', '450800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2139', '450821', '平南县', '450800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2140', '450881', '桂平市', '450800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2142', '450902', '玉州区', '450900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2143', '450921', '容　县', '450900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2144', '450922', '陆川县', '450900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2145', '450923', '博白县', '450900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2146', '450924', '兴业县', '450900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2147', '450981', '北流市', '450900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2149', '451002', '右江区', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2150', '451021', '田阳县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2151', '451022', '田东县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2152', '451023', '平果县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2153', '451024', '德保县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2154', '451025', '靖西县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2155', '451026', '那坡县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2156', '451027', '凌云县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2157', '451028', '乐业县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2158', '451029', '田林县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2159', '451030', '西林县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2160', '451031', '隆林各族自治县', '451000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2162', '451102', '八步区', '451100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2163', '451121', '昭平县', '451100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2164', '451122', '钟山县', '451100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2165', '451123', '富川瑶族自治县', '451100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2167', '451202', '金城江区', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2168', '451221', '南丹县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2169', '451222', '天峨县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2170', '451223', '凤山县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2171', '451224', '东兰县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2172', '451225', '罗城仫佬族自治县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2173', '451226', '环江毛南族自治县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2174', '451227', '巴马瑶族自治县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2175', '451228', '都安瑶族自治县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2176', '451229', '大化瑶族自治县', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2177', '451281', '宜州市', '451200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2179', '451302', '兴宾区', '451300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2180', '451321', '忻城县', '451300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2181', '451322', '象州县', '451300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2182', '451323', '武宣县', '451300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2183', '451324', '金秀瑶族自治县', '451300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2184', '451381', '合山市', '451300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2186', '451402', '江洲区', '451400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2187', '451421', '扶绥县', '451400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2188', '451422', '宁明县', '451400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2189', '451423', '龙州县', '451400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2190', '451424', '大新县', '451400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2191', '451425', '天等县', '451400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2192', '451481', '凭祥市', '451400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2194', '460105', '秀英区', '460100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2195', '460106', '龙华区', '460100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2196', '460107', '琼山区', '460100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2197', '460108', '美兰区', '460100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2199', '469001', '五指山市', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2200', '469002', '琼海市', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2201', '469003', '儋州市', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2202', '469005', '文昌市', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2203', '469006', '万宁市', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2204', '469007', '东方市', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2205', '469025', '定安县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2206', '469026', '屯昌县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2207', '469027', '澄迈县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2208', '469028', '临高县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2209', '469030', '白沙黎族自治县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2210', '469031', '昌江黎族自治县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2211', '469033', '乐东黎族自治县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2212', '469034', '陵水黎族自治县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2213', '469035', '保亭黎族苗族自治县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2214', '469036', '琼中黎族苗族自治县', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2215', '469037', '西沙群岛', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2216', '469038', '南沙群岛', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2217', '469039', '中沙群岛的岛礁及其海域', '469000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2218', '500101', '万州区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2219', '500102', '涪陵区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2220', '500103', '渝中区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2221', '500104', '大渡口区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2222', '500105', '江北区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2223', '500106', '沙坪坝区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2224', '500107', '九龙坡区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2225', '500108', '南岸区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2226', '500109', '北碚区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2227', '500110', '万盛区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2228', '500111', '双桥区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2229', '500112', '渝北区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2230', '500113', '巴南区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2231', '500114', '黔江区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2232', '500115', '长寿区', '500100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2233', '500222', '綦江县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2234', '500223', '潼南县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2235', '500224', '铜梁县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2236', '500225', '大足县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2237', '500226', '荣昌县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2238', '500227', '璧山县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2239', '500228', '梁平县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2240', '500229', '城口县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2241', '500230', '丰都县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2242', '500231', '垫江县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2243', '500232', '武隆县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2244', '500233', '忠　县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2245', '500234', '开　县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2246', '500235', '云阳县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2247', '500236', '奉节县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2248', '500237', '巫山县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2249', '500238', '巫溪县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2250', '500240', '石柱土家族自治县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2251', '500241', '秀山土家族苗族自治县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2252', '500242', '酉阳土家族苗族自治县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2253', '500243', '彭水苗族土家族自治县', '500200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2254', '500381', '江津市', '500300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2255', '500382', '合川市', '500300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2256', '500383', '永川市', '500300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2257', '500384', '南川市', '500300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2259', '510104', '锦江', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2260', '510105', '青羊', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2261', '510106', '金牛', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2262', '510107', '武侯', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2263', '510108', '成华', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2264', '510112', '龙泉驿', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2266', '510114', '新都', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2267', '510115', '温江', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2269', '510122', '双流', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2270', '510124', '郫县', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2273', '510132', '高新', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2274', '510181', '都江堰', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2279', '510302', '自流井区', '510300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2280', '510303', '贡井区', '510300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2281', '510304', '大安区', '510300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2282', '510311', '沿滩区', '510300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2283', '510321', '荣　县', '510300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2284', '510322', '富顺县', '510300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2286', '510402', '东　区', '510400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2287', '510403', '西　区', '510400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2288', '510411', '仁和区', '510400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2289', '510421', '米易县', '510400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2290', '510422', '盐边县', '510400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2292', '510502', '江阳区', '510500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2293', '510503', '纳溪区', '510500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2294', '510504', '龙马潭区', '510500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2295', '510521', '泸　县', '510500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2296', '510522', '合江县', '510500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2297', '510524', '叙永县', '510500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2298', '510525', '古蔺县', '510500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2300', '510603', '旌阳区', '510600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2301', '510623', '中江县', '510600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2302', '510626', '罗江县', '510600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2303', '510681', '广汉市', '510600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2304', '510682', '什邡市', '510600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2305', '510683', '绵竹市', '510600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2307', '510703', '涪城区', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2308', '510704', '游仙区', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2309', '510722', '三台县', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2310', '510723', '盐亭县', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2311', '510724', '安　县', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2312', '510725', '梓潼县', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2313', '510726', '北川羌族自治县', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2314', '510727', '平武县', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2315', '510781', '江油市', '510700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2317', '510802', '市中区', '510800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2318', '510811', '元坝区', '510800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2319', '510812', '朝天区', '510800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2320', '510821', '旺苍县', '510800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2321', '510822', '青川县', '510800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2322', '510823', '剑阁县', '510800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2323', '510824', '苍溪县', '510800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2325', '510903', '船山区', '510900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2326', '510904', '安居区', '510900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2327', '510921', '蓬溪县', '510900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2328', '510922', '射洪县', '510900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2329', '510923', '大英县', '510900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2331', '511002', '市中区', '511000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2332', '511011', '东兴区', '511000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2333', '511024', '威远县', '511000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2334', '511025', '资中县', '511000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2335', '511028', '隆昌县', '511000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2337', '511102', '市中区', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2338', '511111', '沙湾区', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2339', '511112', '五通桥区', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2340', '511113', '金口河区', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2341', '511123', '犍为县', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2342', '511124', '井研县', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2343', '511126', '夹江县', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2344', '511129', '沐川县', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2345', '511132', '峨边彝族自治县', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2346', '511133', '马边彝族自治县', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2347', '511181', '峨眉山市', '511100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2349', '511302', '顺庆区', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2350', '511303', '高坪区', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2351', '511304', '嘉陵区', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2352', '511321', '南部县', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2353', '511322', '营山县', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2354', '511323', '蓬安县', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2355', '511324', '仪陇县', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2356', '511325', '西充县', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2357', '511381', '阆中市', '511300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2359', '511402', '东坡区', '511400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2360', '511421', '仁寿县', '511400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2361', '511422', '彭山县', '511400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2362', '511423', '洪雅县', '511400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2363', '511424', '丹棱县', '511400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2364', '511425', '青神县', '511400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2366', '511502', '翠屏区', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2367', '511521', '宜宾县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2368', '511522', '南溪县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2369', '511523', '江安县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2370', '511524', '长宁县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2371', '511525', '高　县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2372', '511526', '珙　县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2373', '511527', '筠连县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2374', '511528', '兴文县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2375', '511529', '屏山县', '511500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2377', '511602', '广安区', '511600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2378', '511621', '岳池县', '511600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2379', '511622', '武胜县', '511600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2380', '511623', '邻水县', '511600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2381', '511681', '华莹市', '511600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2383', '511702', '通川区', '511700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2384', '511721', '达　县', '511700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2385', '511722', '宣汉县', '511700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2386', '511723', '开江县', '511700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2387', '511724', '大竹县', '511700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2388', '511725', '渠　县', '511700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2389', '511781', '万源市', '511700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2391', '511802', '雨城区', '511800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2392', '511821', '名山县', '511800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2393', '511822', '荥经县', '511800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2394', '511823', '汉源县', '511800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2395', '511824', '石棉县', '511800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2396', '511825', '天全县', '511800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2397', '511826', '芦山县', '511800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2398', '511827', '宝兴县', '511800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2400', '511902', '巴州区', '511900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2401', '511921', '通江县', '511900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2402', '511922', '南江县', '511900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2403', '511923', '平昌县', '511900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2405', '512002', '雁江区', '512000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2406', '512021', '安岳县', '512000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2407', '512022', '乐至县', '512000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2408', '512081', '简阳市', '512000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2409', '513221', '汶川县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2410', '513222', '理　县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2411', '513223', '茂　县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2412', '513224', '松潘县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2413', '513225', '九寨沟县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2414', '513226', '金川县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2415', '513227', '小金县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2416', '513228', '黑水县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2417', '513229', '马尔康县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2418', '513230', '壤塘县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2419', '513231', '阿坝县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2420', '513232', '若尔盖县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2421', '513233', '红原县', '513200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2422', '513321', '康定县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2423', '513322', '泸定县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2424', '513323', '丹巴县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2425', '513324', '九龙县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2426', '513325', '雅江县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2427', '513326', '道孚县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2428', '513327', '炉霍县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2429', '513328', '甘孜县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2430', '513329', '新龙县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2431', '513330', '德格县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2432', '513331', '白玉县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2433', '513332', '石渠县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2434', '513333', '色达县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2435', '513334', '理塘县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2436', '513335', '巴塘县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2437', '513336', '乡城县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2438', '513337', '稻城县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2439', '513338', '得荣县', '513300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2440', '513401', '西昌市', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2441', '513422', '木里藏族自治县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2442', '513423', '盐源县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2443', '513424', '德昌县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2444', '513425', '会理县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2445', '513426', '会东县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2446', '513427', '宁南县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2447', '513428', '普格县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2448', '513429', '布拖县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2449', '513430', '金阳县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2450', '513431', '昭觉县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2451', '513432', '喜德县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2452', '513433', '冕宁县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2453', '513434', '越西县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2454', '513435', '甘洛县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2455', '513436', '美姑县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2456', '513437', '雷波县', '513400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2458', '520102', '南明区', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2459', '520103', '云岩区', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2460', '520111', '花溪区', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2461', '520112', '乌当区', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2462', '520113', '白云区', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2463', '520114', '小河区', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2464', '520121', '开阳县', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2465', '520122', '息烽县', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2466', '520123', '修文县', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2467', '520181', '清镇市', '520100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2468', '520201', '钟山区', '520200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2469', '520203', '六枝特区', '520200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2470', '520221', '水城县', '520200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2471', '520222', '盘　县', '520200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2473', '520302', '红花岗区', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2474', '520303', '汇川区', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2475', '520321', '遵义县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2476', '520322', '桐梓县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2477', '520323', '绥阳县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2478', '520324', '正安县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2479', '520325', '道真仡佬族苗族自治县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2480', '520326', '务川仡佬族苗族自治县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2481', '520327', '凤冈县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2482', '520328', '湄潭县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2483', '520329', '余庆县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2484', '520330', '习水县', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2485', '520381', '赤水市', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2486', '520382', '仁怀市', '520300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2488', '520402', '西秀区', '520400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2489', '520421', '平坝县', '520400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2490', '520422', '普定县', '520400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2491', '520423', '镇宁布依族苗族自治县', '520400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2492', '520424', '关岭布依族苗族自治县', '520400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2493', '520425', '紫云苗族布依族自治县', '520400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2494', '522201', '铜仁市', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2495', '522222', '江口县', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2496', '522223', '玉屏侗族自治县', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2497', '522224', '石阡县', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2498', '522225', '思南县', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2499', '522226', '印江土家族苗族自治县', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2500', '522227', '德江县', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2501', '522228', '沿河土家族自治县', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2502', '522229', '松桃苗族自治县', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2503', '522230', '万山特区', '522200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2504', '522301', '兴义市', '522300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2505', '522322', '兴仁县', '522300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2506', '522323', '普安县', '522300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2507', '522324', '晴隆县', '522300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2508', '522325', '贞丰县', '522300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2509', '522326', '望谟县', '522300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2510', '522327', '册亨县', '522300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2511', '522328', '安龙县', '522300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2512', '522401', '毕节市', '522400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2513', '522422', '大方县', '522400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2514', '522423', '黔西县', '522400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2515', '522424', '金沙县', '522400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2516', '522425', '织金县', '522400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2517', '522426', '纳雍县', '522400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2518', '522427', '威宁彝族回族苗族自治县', '522400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2519', '522428', '赫章县', '522400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2520', '522601', '凯里市', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2521', '522622', '黄平县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2522', '522623', '施秉县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2523', '522624', '三穗县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2524', '522625', '镇远县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2525', '522626', '岑巩县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2526', '522627', '天柱县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2527', '522628', '锦屏县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2528', '522629', '剑河县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2529', '522630', '台江县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2530', '522631', '黎平县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2531', '522632', '榕江县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2532', '522633', '从江县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2533', '522634', '雷山县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2534', '522635', '麻江县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2535', '522636', '丹寨县', '522600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2536', '522701', '都匀市', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2537', '522702', '福泉市', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2538', '522722', '荔波县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2539', '522723', '贵定县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2540', '522725', '瓮安县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2541', '522726', '独山县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2542', '522727', '平塘县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2543', '522728', '罗甸县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2544', '522729', '长顺县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2545', '522730', '龙里县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2546', '522731', '惠水县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2547', '522732', '三都水族自治县', '522700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2549', '530102', '五华', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2550', '530103', '盘龙', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2551', '530111', '官渡', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2552', '530112', '西山', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2554', '530121', '呈贡', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2560', '530128', '安宁', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2561', '530129', '周边县区', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2564', '530302', '麒麟区', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2565', '530321', '马龙县', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2566', '530322', '陆良县', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2567', '530323', '师宗县', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2568', '530324', '罗平县', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2569', '530325', '富源县', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2570', '530326', '会泽县', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2571', '530328', '沾益县', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2572', '530381', '宣威市', '530300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2574', '530402', '红塔区', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2575', '530421', '江川县', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2576', '530422', '澄江县', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2577', '530423', '通海县', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2578', '530424', '华宁县', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2579', '530425', '易门县', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2580', '530426', '峨山彝族自治县', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2581', '530427', '新平彝族傣族自治县', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2582', '530428', '元江哈尼族彝族傣族自治县', '530400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2584', '530502', '隆阳区', '530500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2585', '530521', '施甸县', '530500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2586', '530522', '腾冲县', '530500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2587', '530523', '龙陵县', '530500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2588', '530524', '昌宁县', '530500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2590', '530602', '昭阳区', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2591', '530621', '鲁甸县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2592', '530622', '巧家县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2593', '530623', '盐津县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2594', '530624', '大关县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2595', '530625', '永善县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2596', '530626', '绥江县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2597', '530627', '镇雄县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2598', '530628', '彝良县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2599', '530629', '威信县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2600', '530630', '水富县', '530600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2602', '530702', '古城区', '530700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2603', '530721', '玉龙纳西族自治县', '530700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2604', '530722', '永胜县', '530700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2605', '530723', '华坪县', '530700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2606', '530724', '宁蒗彝族自治县', '530700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2608', '530802', '翠云区', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2609', '530821', '普洱哈尼族彝族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2610', '530822', '墨江哈尼族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2611', '530823', '景东彝族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2612', '530824', '景谷傣族彝族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2613', '530825', '镇沅彝族哈尼族拉祜族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2614', '530826', '江城哈尼族彝族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2615', '530827', '孟连傣族拉祜族佤族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2616', '530828', '澜沧拉祜族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2617', '530829', '西盟佤族自治县', '530800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2619', '530902', '临翔区', '530900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2620', '530921', '凤庆县', '530900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2621', '530922', '云　县', '530900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2622', '530923', '永德县', '530900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2623', '530924', '镇康县', '530900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2624', '530925', '双江拉祜族佤族布朗族傣族自治县', '530900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2625', '530926', '耿马傣族佤族自治县', '530900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2626', '530927', '沧源佤族自治县', '530900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2627', '532301', '楚雄市', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2628', '532322', '双柏县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2629', '532323', '牟定县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2630', '532324', '南华县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2631', '532325', '姚安县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2632', '532326', '大姚县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2633', '532327', '永仁县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2634', '532328', '元谋县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2635', '532329', '武定县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2636', '532331', '禄丰县', '532300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2637', '532501', '个旧市', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2638', '532502', '开远市', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2639', '532522', '蒙自县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2640', '532523', '屏边苗族自治县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2641', '532524', '建水县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2642', '532525', '石屏县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2643', '532526', '弥勒县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2644', '532527', '泸西县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2645', '532528', '元阳县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2646', '532529', '红河县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2647', '532530', '金平苗族瑶族傣族自治县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2648', '532531', '绿春县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2649', '532532', '河口瑶族自治县', '532500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2650', '532621', '文山县', '532600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2651', '532622', '砚山县', '532600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2652', '532623', '西畴县', '532600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2653', '532624', '麻栗坡县', '532600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2654', '532625', '马关县', '532600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2655', '532626', '丘北县', '532600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2656', '532627', '广南县', '532600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2657', '532628', '富宁县', '532600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2658', '532801', '景洪市', '532800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2659', '532822', '勐海县', '532800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2660', '532823', '勐腊县', '532800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2661', '532901', '大理市', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2662', '532922', '漾濞彝族自治县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2663', '532923', '祥云县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2664', '532924', '宾川县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2665', '532925', '弥渡县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2666', '532926', '南涧彝族自治县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2667', '532927', '巍山彝族回族自治县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2668', '532928', '永平县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2669', '532929', '云龙县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2670', '532930', '洱源县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2671', '532931', '剑川县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2672', '532932', '鹤庆县', '532900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2673', '533102', '瑞丽市', '533100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2674', '533103', '潞西市', '533100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2675', '533122', '梁河县', '533100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2676', '533123', '盈江县', '533100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2677', '533124', '陇川县', '533100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2678', '533321', '泸水县', '533300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2679', '533323', '福贡县', '533300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2680', '533324', '贡山独龙族怒族自治县', '533300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2681', '533325', '兰坪白族普米族自治县', '533300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2682', '533421', '香格里拉县', '533400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2683', '533422', '德钦县', '533400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2684', '533423', '维西傈僳族自治县', '533400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2686', '540102', '城关区', '540100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2687', '540121', '林周县', '540100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2688', '540122', '当雄县', '540100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2689', '540123', '尼木县', '540100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2690', '540124', '曲水县', '540100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2691', '540125', '堆龙德庆县', '540100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2692', '540126', '达孜县', '540100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2693', '540127', '墨竹工卡县', '540100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2694', '542121', '昌都县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2695', '542122', '江达县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2696', '542123', '贡觉县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2697', '542124', '类乌齐县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2698', '542125', '丁青县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2699', '542126', '察雅县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2700', '542127', '八宿县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2701', '542128', '左贡县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2702', '542129', '芒康县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2703', '542132', '洛隆县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2704', '542133', '边坝县', '542100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2705', '542221', '乃东县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2706', '542222', '扎囊县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2707', '542223', '贡嘎县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2708', '542224', '桑日县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2709', '542225', '琼结县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2710', '542226', '曲松县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2711', '542227', '措美县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2712', '542228', '洛扎县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2713', '542229', '加查县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2714', '542231', '隆子县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2715', '542232', '错那县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2716', '542233', '浪卡子县', '542200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2717', '542301', '日喀则市', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2718', '542322', '南木林县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2719', '542323', '江孜县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2720', '542324', '定日县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2721', '542325', '萨迦县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2722', '542326', '拉孜县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2723', '542327', '昂仁县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2724', '542328', '谢通门县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2725', '542329', '白朗县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2726', '542330', '仁布县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2727', '542331', '康马县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2728', '542332', '定结县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2729', '542333', '仲巴县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2730', '542334', '亚东县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2731', '542335', '吉隆县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2732', '542336', '聂拉木县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2733', '542337', '萨嘎县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2734', '542338', '岗巴县', '542300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2735', '542421', '那曲县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2736', '542422', '嘉黎县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2737', '542423', '比如县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2738', '542424', '聂荣县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2739', '542425', '安多县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2740', '542426', '申扎县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2741', '542427', '索　县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2742', '542428', '班戈县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2743', '542429', '巴青县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2744', '542430', '尼玛县', '542400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2745', '542521', '普兰县', '542500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2746', '542522', '札达县', '542500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2747', '542523', '噶尔县', '542500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2748', '542524', '日土县', '542500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2749', '542525', '革吉县', '542500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2750', '542526', '改则县', '542500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2751', '542527', '措勤县', '542500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2752', '542621', '林芝县', '542600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2753', '542622', '工布江达县', '542600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2754', '542623', '米林县', '542600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2755', '542624', '墨脱县', '542600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2756', '542625', '波密县', '542600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2757', '542626', '察隅县', '542600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2758', '542627', '朗　县', '542600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2760', '610102', '新城区', '610100', '3', null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('2761', '610103', '碑林区', '610100', '2', null, '2015-08-12 10:54:15', null);
INSERT INTO `shop_area` VALUES ('2762', '610104', '莲湖区', '610100', '4', null, '2015-08-12 11:43:23', null);
INSERT INTO `shop_area` VALUES ('2763', '610111', '灞桥区', '610100', '5', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('2764', '610112', '未央区', '610100', '6', null, '2015-08-12 11:49:05', null);
INSERT INTO `shop_area` VALUES ('2765', '610113', '雁塔区', '610100', '1', null, '2015-08-12 11:37:02', null);
INSERT INTO `shop_area` VALUES ('2766', '610114', '阎良区', '610100', '14', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('2767', '610115', '临潼区', '610100', '15', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('2768', '610116', '长安区', '610100', '7', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('2769', '610122', '蓝田县', '610100', '16', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('2770', '610124', '周至县', '610100', '17', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('2771', '610125', '户县', '610100', '18', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('2772', '610126', '高陵区', '610100', '19', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('2774', '610202', '王益区', '610200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2775', '610203', '印台区', '610200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2776', '610204', '耀州区', '610200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2777', '610222', '宜君县', '610200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2779', '610302', '渭滨区', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2780', '610303', '金台区', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2781', '610304', '陈仓区', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2782', '610322', '凤翔县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2783', '610323', '岐山县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2784', '610324', '扶风县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2785', '610326', '眉　县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2786', '610327', '陇　县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2787', '610328', '千阳县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2788', '610329', '麟游县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2789', '610330', '凤　县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2790', '610331', '太白县', '610300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2792', '610402', '秦都区', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2793', '610403', '杨凌区', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2794', '610404', '渭城区', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2795', '610422', '三原县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2796', '610423', '泾阳县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2797', '610424', '乾　县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2798', '610425', '礼泉县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2799', '610426', '永寿县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2800', '610427', '彬　县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2801', '610428', '长武县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2802', '610429', '旬邑县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2803', '610430', '淳化县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2804', '610431', '武功县', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2805', '610481', '兴平市', '610400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2807', '610502', '临渭区', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2808', '610521', '华　县', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2809', '610522', '潼关县', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2810', '610523', '大荔县', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2811', '610524', '合阳县', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2812', '610525', '澄城县', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2813', '610526', '蒲城县', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2814', '610527', '白水县', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2815', '610528', '富平县', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2816', '610581', '韩城市', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2817', '610582', '华阴市', '610500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2819', '610602', '宝塔区', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2820', '610621', '延长县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2821', '610622', '延川县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2822', '610623', '子长县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2823', '610624', '安塞县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2824', '610625', '志丹县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2825', '610626', '吴旗县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2826', '610627', '甘泉县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2827', '610628', '富　县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2828', '610629', '洛川县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2829', '610630', '宜川县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2830', '610631', '黄龙县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2831', '610632', '黄陵县', '610600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2833', '610702', '汉台区', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2834', '610721', '南郑县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2835', '610722', '城固县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2836', '610723', '洋　县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2837', '610724', '西乡县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2838', '610725', '勉　县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2839', '610726', '宁强县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2840', '610727', '略阳县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2841', '610728', '镇巴县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2842', '610729', '留坝县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2843', '610730', '佛坪县', '610700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2845', '610802', '榆阳区', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2846', '610821', '神木县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2847', '610822', '府谷县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2848', '610823', '横山县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2849', '610824', '靖边县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2850', '610825', '定边县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2851', '610826', '绥德县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2852', '610827', '米脂县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2853', '610828', '佳　县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2854', '610829', '吴堡县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2855', '610830', '清涧县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2856', '610831', '子洲县', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('2858', '610902', '汉滨区', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2859', '610921', '汉阴县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2860', '610922', '石泉县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2861', '610923', '宁陕县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2862', '610924', '紫阳县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2863', '610925', '岚皋县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2864', '610926', '平利县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2865', '610927', '镇坪县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2866', '610928', '旬阳县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2867', '610929', '白河县', '610900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2869', '611002', '商州区', '611000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2870', '611021', '洛南县', '611000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2871', '611022', '丹凤县', '611000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2872', '611023', '商南县', '611000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2873', '611024', '山阳县', '611000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2874', '611025', '镇安县', '611000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2875', '611026', '柞水县', '611000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2877', '620102', '城关区', '620100', null, null, '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('2878', '620103', '七里河区', '620100', null, null, '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('2879', '620104', '西固区', '620100', null, null, '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('2880', '620105', '安宁区', '620100', null, null, '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('2881', '620111', '红古区', '620100', null, null, '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('2882', '620121', '永登县', '620100', null, null, '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('2883', '620122', '皋兰县', '620100', null, null, '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('2884', '620123', '榆中县', '620100', null, null, '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('2887', '620302', '金川区', '620300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2888', '620321', '永昌县', '620300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2890', '620402', '白银区', '620400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2891', '620403', '平川区', '620400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2892', '620421', '靖远县', '620400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2893', '620422', '会宁县', '620400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2894', '620423', '景泰县', '620400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2896', '620502', '秦城区', '620500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2897', '620503', '北道区', '620500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2898', '620521', '清水县', '620500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2899', '620522', '秦安县', '620500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2900', '620523', '甘谷县', '620500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2901', '620524', '武山县', '620500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2902', '620525', '张家川回族自治县', '620500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2904', '620602', '凉州区', '620600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2905', '620621', '民勤县', '620600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2906', '620622', '古浪县', '620600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2907', '620623', '天祝藏族自治县', '620600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2909', '620702', '甘州区', '620700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2910', '620721', '肃南裕固族自治县', '620700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2911', '620722', '民乐县', '620700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2912', '620723', '临泽县', '620700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2913', '620724', '高台县', '620700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2914', '620725', '山丹县', '620700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2916', '620802', '崆峒区', '620800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2917', '620821', '泾川县', '620800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2918', '620822', '灵台县', '620800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2919', '620823', '崇信县', '620800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2920', '620824', '华亭县', '620800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2921', '620825', '庄浪县', '620800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2922', '620826', '静宁县', '620800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2924', '620902', '肃州区', '620900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2925', '620921', '金塔县', '620900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2926', '620922', '安西县', '620900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2927', '620923', '肃北蒙古族自治县', '620900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2928', '620924', '阿克塞哈萨克族自治县', '620900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2929', '620981', '玉门市', '620900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2930', '620982', '敦煌市', '620900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2932', '621002', '西峰区', '621000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2933', '621021', '庆城县', '621000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2934', '621022', '环　县', '621000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2935', '621023', '华池县', '621000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2936', '621024', '合水县', '621000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2937', '621025', '正宁县', '621000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2938', '621026', '宁　县', '621000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2939', '621027', '镇原县', '621000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2941', '621102', '安定区', '621100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2942', '621121', '通渭县', '621100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2943', '621122', '陇西县', '621100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2944', '621123', '渭源县', '621100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2945', '621124', '临洮县', '621100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2946', '621125', '漳　县', '621100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2947', '621126', '岷　县', '621100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2949', '621202', '武都区', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2950', '621221', '成　县', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2951', '621222', '文　县', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2952', '621223', '宕昌县', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2953', '621224', '康　县', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2954', '621225', '西和县', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2955', '621226', '礼　县', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2956', '621227', '徽　县', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2957', '621228', '两当县', '621200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2958', '622901', '临夏市', '622900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2959', '622921', '临夏县', '622900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2960', '622922', '康乐县', '622900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2961', '622923', '永靖县', '622900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2962', '622924', '广河县', '622900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2963', '622925', '和政县', '622900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2964', '622926', '东乡族自治县', '622900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2965', '622927', '积石山保安族东乡族撒拉族自治县', '622900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2966', '623001', '合作市', '623000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2967', '623021', '临潭县', '623000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2968', '623022', '卓尼县', '623000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2969', '623023', '舟曲县', '623000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2970', '623024', '迭部县', '623000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2971', '623025', '玛曲县', '623000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2972', '623026', '碌曲县', '623000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2973', '623027', '夏河县', '623000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2975', '630102', '城东区', '630100', null, null, '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('2976', '630103', '城中区', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('2977', '630104', '城西区', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('2978', '630105', '城北区', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('2979', '630121', '大通回族土族自治县', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('2980', '630122', '湟中县', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('2981', '630123', '湟源县', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('2982', '632121', '平安县', '632100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2983', '632122', '民和回族土族自治县', '632100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2984', '632123', '乐都县', '632100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2985', '632126', '互助土族自治县', '632100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2986', '632127', '化隆回族自治县', '632100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2987', '632128', '循化撒拉族自治县', '632100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2988', '632221', '门源回族自治县', '632200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2989', '632222', '祁连县', '632200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2990', '632223', '海晏县', '632200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2991', '632224', '刚察县', '632200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2992', '632321', '同仁县', '632300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2993', '632322', '尖扎县', '632300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2994', '632323', '泽库县', '632300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2995', '632324', '河南蒙古族自治县', '632300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2996', '632521', '共和县', '632500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2997', '632522', '同德县', '632500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2998', '632523', '贵德县', '632500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('2999', '632524', '兴海县', '632500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3000', '632525', '贵南县', '632500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3001', '632621', '玛沁县', '632600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3002', '632622', '班玛县', '632600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3003', '632623', '甘德县', '632600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3004', '632624', '达日县', '632600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3005', '632625', '久治县', '632600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3006', '632626', '玛多县', '632600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3007', '632721', '玉树县', '632700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3008', '632722', '杂多县', '632700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3009', '632723', '称多县', '632700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3010', '632724', '治多县', '632700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3011', '632725', '囊谦县', '632700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3012', '632726', '曲麻莱县', '632700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3013', '632801', '格尔木市', '632800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3014', '632802', '德令哈市', '632800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3015', '632821', '乌兰县', '632800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3016', '632822', '都兰县', '632800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3017', '632823', '天峻县', '632800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3019', '640104', '兴庆区', '640100', null, null, '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3020', '640105', '西夏区', '640100', null, null, '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3021', '640106', '金凤区', '640100', null, null, '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3022', '640121', '永宁县', '640100', null, null, '2015-10-28 11:43:49', null);
INSERT INTO `shop_area` VALUES ('3023', '640122', '贺兰县', '640100', null, null, '2015-10-28 11:43:49', null);
INSERT INTO `shop_area` VALUES ('3024', '640181', '灵武市', '640100', null, null, '2015-10-28 11:43:49', null);
INSERT INTO `shop_area` VALUES ('3026', '640202', '大武口区', '640200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3027', '640205', '惠农区', '640200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3028', '640221', '平罗县', '640200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3030', '640302', '利通区', '640300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3031', '640323', '盐池县', '640300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3032', '640324', '同心县', '640300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3033', '640381', '青铜峡市', '640300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3035', '640402', '原州区', '640400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3036', '640422', '西吉县', '640400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3037', '640423', '隆德县', '640400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3038', '640424', '泾源县', '640400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3039', '640425', '彭阳县', '640400', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3041', '640502', '沙坡头区', '640500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3042', '640521', '中宁县', '640500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3043', '640522', '海原县', '640500', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3045', '650102', '天山区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3046', '650103', '沙依巴克区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3047', '650104', '新市区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3048', '650105', '水磨沟区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3049', '650106', '头屯河区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3050', '650107', '达坂城区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3051', '650108', '东山区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3052', '650121', '乌鲁木齐县', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3054', '650202', '独山子区', '650200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3055', '650203', '克拉玛依区', '650200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3056', '650204', '白碱滩区', '650200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3057', '650205', '乌尔禾区', '650200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3058', '652101', '吐鲁番市', '652100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3059', '652122', '鄯善县', '652100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3060', '652123', '托克逊县', '652100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3061', '652201', '哈密市', '652200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3062', '652222', '巴里坤哈萨克自治县', '652200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3063', '652223', '伊吾县', '652200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3064', '652301', '昌吉市', '652300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3065', '652302', '阜康市', '652300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3066', '652303', '米泉市', '652300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3067', '652323', '呼图壁县', '652300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3068', '652324', '玛纳斯县', '652300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3069', '652325', '奇台县', '652300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3070', '652327', '吉木萨尔县', '652300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3071', '652328', '木垒哈萨克自治县', '652300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3072', '652701', '博乐市', '652700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3073', '652722', '精河县', '652700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3074', '652723', '温泉县', '652700', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3075', '652801', '老城区', '8500099', '9', null, null, null);
INSERT INTO `shop_area` VALUES ('3076', '652822', '轮台县', '652800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3077', '652823', '尉犁县', '652800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3078', '652824', '若羌县', '652800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3079', '652825', '且末县', '652800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3080', '652826', '焉耆回族自治县', '652800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3081', '652827', '和静县', '652800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3082', '652828', '和硕县', '652800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3083', '652829', '博湖县', '652800', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3084', '652901', '阿克苏市', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3085', '652922', '温宿县', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3086', '652923', '库车县', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3087', '652924', '沙雅县', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3088', '652925', '新和县', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3089', '652926', '拜城县', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3090', '652927', '乌什县', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3091', '652928', '阿瓦提县', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3092', '652929', '柯坪县', '652900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3093', '653001', '阿图什市', '653000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3094', '653022', '阿克陶县', '653000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3095', '653023', '阿合奇县', '653000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3096', '653024', '乌恰县', '653000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3097', '653101', '喀什市', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3098', '653121', '疏附县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3099', '653122', '疏勒县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3100', '653123', '英吉沙县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3101', '653124', '泽普县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3102', '653125', '莎车县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3103', '653126', '叶城县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3104', '653127', '麦盖提县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3105', '653128', '岳普湖县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3106', '653129', '伽师县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3107', '653130', '巴楚县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3108', '653131', '塔什库尔干塔吉克自治县', '653100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3109', '653201', '和田市', '653200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3110', '653221', '和田县', '653200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3111', '653222', '墨玉县', '653200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3112', '653223', '皮山县', '653200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3113', '653224', '洛浦县', '653200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3114', '653225', '策勒县', '653200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3115', '653226', '于田县', '653200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3116', '653227', '民丰县', '653200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3117', '654002', '伊宁市', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3118', '654003', '奎屯市', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3119', '654021', '伊宁县', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3120', '654022', '察布查尔锡伯自治县', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3121', '654023', '霍城县', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3122', '654024', '巩留县', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3123', '654025', '新源县', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3124', '654026', '昭苏县', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3125', '654027', '特克斯县', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3126', '654028', '尼勒克县', '654000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3127', '654201', '塔城市', '654200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3128', '654202', '乌苏市', '654200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3129', '654221', '额敏县', '654200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3130', '654223', '沙湾县', '654200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3131', '654224', '托里县', '654200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3132', '654225', '裕民县', '654200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3133', '654226', '和布克赛尔蒙古自治县', '654200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3134', '654301', '阿勒泰市', '654300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3135', '654321', '布尔津县', '654300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3136', '654322', '富蕴县', '654300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3137', '654323', '福海县', '654300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3138', '654324', '哈巴河县', '654300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3139', '654325', '青河县', '654300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3140', '654326', '吉木乃县', '654300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3141', '659001', '老街', '659000', '0', null, null, null);
INSERT INTO `shop_area` VALUES ('3142', '659002', '阿拉尔市', '659000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3143', '659003', '图木舒克市', '659000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3144', '659004', '五家渠市', '659000', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3145', '610118', '高新区', '610100', '8', null, '2015-08-12 11:41:14', null);
INSERT INTO `shop_area` VALUES ('3146', '610117', '曲江新区', '610100', '9', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3147', '610119', '浐灞', '610100', '13', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3148', '610127', '大寨路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3149', '610128', '高新路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3150', '610129', '锦业路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3151', '610130', ' 科技路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3152', '610131', '太白南路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3153', '610132', '唐延路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3154', '610133', '鱼化寨', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3160', '610139', '大学城', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3161', '610140', '郭杜', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3162', '610141', '航天基地', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3163', '610142', '华美学院', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3164', '610143', '秦岭', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3165', '610144', '韦曲', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3166', '610145', '樱花广场', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3167', '610146', '北院门', '610104', null, null, '2015-08-10 09:06:33', null);
INSERT INTO `shop_area` VALUES ('3168', '610147', '城西客运站 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3169', '610148', '大兴路', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3170', '610149', '丰庆路', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3171', '610150', '高科花园 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3172', '610151', '红庙坡 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3173', '610152', '锦园小区 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3174', '610153', '昆明路 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3175', '610154', '劳动路', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3176', '610155', '庙后街', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3177', '610156', '青年路 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3178', '610157', '土门', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3179', '610158', '西大街', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3180', '61010413', '玉祥门 ', '610104', null, null, '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('3181', '610159', '长乐中路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3182', '610160', '东五路', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3183', '610161', '胡家庙', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3184', '610162', '解放门 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3185', '610163', '康复路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3186', '610164', '人民路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3187', '610165', '尚勤路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3188', '610166', '文昌门 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3189', '610167', '西一路', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3190', '610168', '迎新路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3191', '610169', '中山门 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3192', '610170', '边家村', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3193', '610171', '长安路 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3194', '610172', '东大街 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3195', '610173', '大差市 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3196', '610174', '广济街 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3197', '610175', '环城南路', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3198', '610176', '建设路', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3199', '610177', '北山门 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3200', '610178', '长延堡 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3201', '610179', '电子正街', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3202', '610180', '吉祥路 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3203', '610181', '明德门 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3204', '610182', '市政府小区 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3205', '610183', '太白小区', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3206', '610184', '小寨路 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3207', '610185', '鱼化寨 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3208', '610186', '丈八东路', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3209', '610187', '二府庄', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3210', '610188', '龙首北路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3211', '610189', '三桥 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3212', '610190', '辛家庙', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3213', '610191', '张家堡 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3214', '610192', '北池头', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3215', '610193', '大唐芙蓉园 ', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3216', '610194', '曲江池 ', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3217', '610195', '雁展路', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3218', '610120', '经开区', '610100', '10', null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3219', '610121', '经渭区', '610100', '11', null, '2015-07-15 10:44:11', null);
INSERT INTO `shop_area` VALUES ('3220', '610123', '沣东新城', '610100', '12', null, '2015-07-15 10:44:11', null);
INSERT INTO `shop_area` VALUES ('3221', '61010401', '北关', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3222', '61010402', '北大街', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3223', '61010403', '大庆路', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3224', '61010404', '丰禾路 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3225', '61010405', '丰登路 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3226', '61010406', '环城西路', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3227', '61010407', '桃园路', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3228', '61010408', '甜水井', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3229', '61010409', '西关', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3230', '61010410', '西稍门', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3231', '61010411', '枣园', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3232', '61010412', '自强西路 ', '610104', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3233', '61010201', '长乐西路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3234', '61010202', '长缨东路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3235', '61010203', '韩森寨', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3236', '61010204', '互助路立交 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3237', '61010205', '金华路', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3238', '61010206', '建政街道', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3239', '61010207', '太华路', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3240', '61010208', '万寿路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3241', '61010209', '西五路', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3242', '61010210', '新城街道 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3243', '61010211', '西京医院 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3244', '61010212', '自强路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3245', '61010213', '中山东路 ', '610102', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3246', '61010301', '安东街', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3247', '61010302', '安西街', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3248', '61010303', '柏树林', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3249', '61010304', '长乐坊', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3250', '61010305', '东关南街 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3251', '61010306', '东木头市', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3252', '61010307', '东门外 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3253', '61010308', '大学南路 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3254', '61010309', '和平路', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3255', '61010310', '何家村 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3256', '61010311', '南大街', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3257', '61010312', '南院门 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3258', '61010313', '太乙路', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3259', '61010314', '文艺路', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3260', '61010315', '小雁塔 ', '610103', null, null, '2015-07-15 10:44:09', null);
INSERT INTO `shop_area` VALUES ('3261', '61010316', '张家村 ', '610103', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3262', '61010317', '朱雀大街 ', '610103', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3263', '61011301', '翠华路 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3264', '61011302', '大雁塔 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3265', '61011303', '电子城', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3266', '61011304', '等驾坡', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3267', '61011305', '电视塔 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3268', '61011306', '丁白路 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3269', '61011307', '东仪路 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3270', '61011308', '电子商城', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3271', '61011309', '国展中心 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3272', '61011310', '光华路', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3273', '61011311', '太白南路 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3274', '61011312', '西影路', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3275', '61011313', '杨家村', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3276', '61011314', '永松路 ', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3277', '61011315', '朱雀大街', '610113', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3278', '61011101', '浐灞半岛', '610111', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3279', '61011102', '浐河西路 ', '610111', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3280', '61011103', '纺织城 ', '610111', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3281', '61011104', '红旗 ', '610111', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3282', '61011105', '洪庆 ', '610111', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3283', '61011106', '十里铺 ', '610111', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3284', '61011107', '席王', '610111', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3285', '61011108', '西航花园', '610111', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3286', '61011201', '草滩 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3287', '61011202', '大观园 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3288', '61011203', '二马路 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3289', '61011204', '凤城一路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3290', '61011205', '方新村', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3291', '61011206', '凤城四路 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3292', '61011207', '凤城二路 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3293', '61011208', '凤城三路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3294', '61011209', '凤城五路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3295', '61011210', '凤城六路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3296', '61011211', '凤城七路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3297', '61011212', '凤城八路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3298', '61011213', '凤城九路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3299', '61011214', '经济技术开发区', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3300', '61011215', '龙首村', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3301', '61011216', '明光路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3302', '61011217', '文景路 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3303', '61011218', '徐家湾', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3304', '61011219', '雅荷花园 ', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3305', '61011220', '朱宏路', '610112', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3306', '61011401', '凤凰路 ', '610114', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3307', '61011402', '关山', '610114', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3308', '61011403', '武屯', '610114', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3309', '61011404', '新华路', '610114', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3310', '61011501', '代王', '610115', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3311', '61011502', '骊山', '610115', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3312', '61011503', '秦陵 ', '610115', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3313', '61011504', '新丰', '610115', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3314', '61011505', '斜口 ', '610115', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3315', '61011506', '行者', '610115', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3316', '61011601', '长安区政府 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3317', '61011602', '长安周边 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3318', '61011603', '斗门 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3319', '61011604', '东大', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3320', '61011605', '滦镇 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3321', '61011606', '马王 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3322', '61011607', '太乙宫 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3323', '61011608', ' 王寺', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3324', '61011609', '韦曲西街', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3325', '61011610', '西京大学', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3326', '61011611', '西寨', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3327', '61011612', '西长安街 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3328', '61011613', '引镇 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3329', '61011614', '子午 ', '610116', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3330', '61011801', '沣惠南路 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3331', '61011802', '高新二路 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3332', '61011803', '光华路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3333', '61011804', '高新四路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3334', '61011805', '高新周边', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3335', '61011806', '高新六路 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3336', '61011807', '锦业一路 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3337', '61011808', '科技四路西段', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3338', '61011809', '科技二路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3339', '61011810', '科技一路 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3340', '61011811', '科技路西口 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3341', '61011812', '科技六路 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3342', '61011813', '科创路 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3343', '61011814', '玫瑰大楼', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3344', '61011815', '团结南路 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3345', '61011816', '旺座现代城 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3346', '61011817', '亚美大厦 ', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3347', '61011818', '紫薇田园都市', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3348', '61011819', '丈八北路', '610118', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3349', '61011701', '芙蓉东路', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3350', '61011702', '芙蓉西路', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3351', '61011703', '海洋馆 ', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3352', '61011704', '雁南四路', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3353', '61011705', '雁南五路', '610117', null, null, '2015-07-15 10:44:10', null);
INSERT INTO `shop_area` VALUES ('3354', '85000101', '新市区', '8500099', '8', null, null, null);
INSERT INTO `shop_area` VALUES ('3355', '85000202', '开发区', '8500099', '7', null, null, null);
INSERT INTO `shop_area` VALUES ('3356', '85000203', '华凌', '8500099', '6', null, null, null);
INSERT INTO `shop_area` VALUES ('3357', '85000204', '东站', '8500099', '5', null, null, null);
INSERT INTO `shop_area` VALUES ('3358', '85000205', '北站', '8500099', '4', null, null, null);
INSERT INTO `shop_area` VALUES ('3359', '85000206', '州客运站', '8500099', '3', null, null, null);
INSERT INTO `shop_area` VALUES ('3360', '85000207', '库尔勒周边', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3361', '8500099', '库尔勒', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3362', '65010201', '北门', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3363', '65010202', '大湾', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3364', '65010203', '大西门', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3365', '65010204', '光明路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3366', '65010205', '碱泉街', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3367', '65010206', '解放北路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3368', '65010207', '解放南路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3369', '65010208', '民主路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3370', '65010209', '南门', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3371', '65010210', '青年路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3372', '65010211', '人民广场', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3373', '65010212', '人民路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3374', '65010213', '胜利路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3375', '65010214', '天山区周边', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3376', '65010215', '团结路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3377', '65010216', '五星路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3378', '65010217', '小西门', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3379', '65010218', '幸福路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3380', '65010219', '新华北路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3381', '65010220', '新华南路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3382', '65010221', '延安路', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3383', '65010222', '燕儿窝', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3384', '65010223', '中山路商业区', '650102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3385', '65010301', '阿勒泰路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3386', '65010302', '宝山路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3387', '65010303', '北园春', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3388', '65010304', '仓房沟路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3389', '65010305', '长江路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3390', '65010306', '东门', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3391', '65010307', '和田街', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3392', '65010308', '红庙子', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3393', '65010309', '黄河街', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3394', '65010310', '炉院街', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3395', '65010311', '明园', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3396', '65010312', '钱塘江路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3397', '65010313', '商贸街', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3398', '65010314', '沙依巴克区周边', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3399', '65010315', '水泥厂', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3400', '65010316', '乌鲁木齐火车站', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3401', '65010317', '西北路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3402', '65010318', '沙依巴克区周边', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3403', '65010319', '西山', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3404', '65010320', '雅玛里克山', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3405', '65010321', '扬子江路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3406', '65010322', '友好', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3407', '65010323', '友好北路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3408', '65010324', '友好南路', '650103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3409', '650103009', '珠江路', '650103', null, null, '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('3411', '65010401', '北京路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3412', '65010402', '北京南路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3413', '65010403', '北站东路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3414', '65010404', '长春路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3415', '65010405', '长沙路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3416', '65010406', '二工', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3417', '65010407', '杭州路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3418', '65010408', '河南路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3419', '65010409', '喀什路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3420', '65010410', '科技园路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3421', '65010411', '鲤鱼山路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3422', '65010412', '美居物流园', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3423', '65010413', '南纬路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3424', '65010414', '三工', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3425', '65010415', '太原路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3426', '65010416', '天津路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3427', '65010417', '铁路局', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3428', '65010418', '通嘉世纪城', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3429', '65010419', '乌鲁木齐机场', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3430', '65010420', '小西沟', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3431', '65010421', '新市区周边', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3432', '65010422', '银川路', '650104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3434', '65010701', '艾维尔沟', '650107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3435', '65010702', '乌拉泊', '650107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3436', '65010703', '星火', '650107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3437', '65010704', '鱼儿沟', '650107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3438', '65010705', '水西沟', '650107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3439', '65010706', '达坂城区周边', '650107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3440', '65010501', '八道湾', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3441', '65010502', '国际博览中心', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3442', '65010503', '红山公园', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3443', '65010504', '华凌', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3444', '65010505', '六道湾', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3445', '65010506', '南湖', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3446', '65010507', '南湖北路', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3447', '65010508', '南湖南路', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3448', '65010509', '市政府', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3449', '65010510', '水磨沟公园', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3450', '65010511', '水磨沟区周边', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3451', '65010512', '王家梁', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3452', '65010513', '苇湖梁', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3453', '65010514', '温泉路', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3454', '65010515', '西虹东路', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3455', '65010516', '新民路', '650105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3456', '65010601', '头屯河', '650106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3457', '65010602', '北站西路', '650106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3458', '65010603', '火车西站', '650106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3459', '65010604', '乌昌路', '650106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3460', '65010605', '王家沟', '650106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3461', '65010606', '八钢', '650106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3462', '65010607', '卫星广场', '650106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3463', '65010608', '头屯河区周边', '650106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3464', '6501101', '开发区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3465', '650110101', '石油新村', '6501101', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3466', '650110102', '迎宾路', '6501101', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3467', '650110103', '卫星广场', '6501101', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3468', '650110104', '开发区二期', '6501101', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3469', '650110105', '中亚北路', '6501101', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3470', '650110106', '金阳卫星花园', '6501101', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3472', '6501102', '米东区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3473', '650110201', '卡子湾', '6501102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3474', '650110202', '天化', '6501102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3475', '650110203', '地磅', '6501102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3476', '650110204', '养路段', '6501102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3477', '650110205', '石化', '6501102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3478', '650110206', '米东区周边\r\n', '6501102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3479', '65900101', '红山', '659000', '0', null, null, null);
INSERT INTO `shop_area` VALUES ('3480', '65900102', '新城', '659000', '0', null, null, null);
INSERT INTO `shop_area` VALUES ('3481', '65900103', '向阳', '659000', '0', null, null, null);
INSERT INTO `shop_area` VALUES ('3482', '65900104', '东城', '659000', '0', null, null, null);
INSERT INTO `shop_area` VALUES ('3483', '65900105', '石河子周边', '659000', '0', null, null, null);
INSERT INTO `shop_area` VALUES ('3484', '41010201', '碧沙岗', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3485', '41010202', '帝湖', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3486', '41010203', '凯旋门', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3487', '41010204', '棉纺路', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3488', '41010205', '汽车西站', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3489', '41010206', '五龙口', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3490', '41010207', '万达广场', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3491', '41010208', '西流湖', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3492', '41010209', '郑州市一中', '410102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3493', '410184', '金水', '410100', '1', null, null, null);
INSERT INTO `shop_area` VALUES ('3494', '41018401', '报业大厦', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3495', '41018402', '陈寨', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3496', '41018403', '大石桥', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3497', '41018404', '丰庆路', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3498', '41018405', '建业路', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3499', '41018407', '科技市场', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3500', '41018406', '绿荫广场', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3501', '41018408', '民航路', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3502', '41018409', '南阳路', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3503', '41018410', '普罗旺世', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3504', '41018411', '汽配大世界', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3505', '41018412', '沙口路', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3506', '41018413', '市五院', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3507', '41018414', '水上公园', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3508', '41018415', '索凌路', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3509', '41018416', '省电视台', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3510', '41018417', '三全路', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3511', '41018418', '省人民医院', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3512', '41018419', '文博广场', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3514', '41018421', '玉凤路', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3515', '41018422', '中医院', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3516', '41018423', '紫荆山', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3517', '41018424', '枣庄', '410184', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3518', '41010401', '二里岗', '410104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3519', '41010402', '凤凰路', '410104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3520', '41010403', '管南片', '410104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3521', '41010404', '陇海汽车站', '410104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3522', '41010405', '南关街', '410104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3523', '41010406', '商代遗址', '410104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3525', '41010301', '长江路', '410103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3526', '41010302', '古玩城', '410103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3527', '41010303', '河医片', '410103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3528', '41010304', '华中片', '410103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3529', '41010305', '火车站', '410103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3530', '41010306', '市财政局', '410103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3531', '41010307', '兴华南街', '410103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3532', '41010601', 'CBD', '410106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3533', '41010602', '黄河南路', '410106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3534', '41010603', '祭城', '410106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3535', '41010604', '商鼎路', '410106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3536', '41010605', '通泰路', '410106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3537', '41010606', '天赋路', '410106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3538', '41010608', '新东站', '410106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3539', '41010607', '众意路', '410106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3540', '41010801', '北大学城', '410108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3541', '41010802', '刘寨片', '410108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3542', '41010803', '邙山片', '410108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3543', '41010804', '省体育中心', '410108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3544', '41012201', '化工路', '410122', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3545', '41012202', '科学大道', '410122', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3546', '41012203', '瑞达路', '410122', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3547', '41018101', '第八大街', '410181', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3548', '41018102', '第三大街', '410181', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3549', '41018103', '第五大街', '410181', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3550', '41018104', '理想城', '410181', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3551', '41018201', '白沙镇', '410182', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3552', '41018202', '老县城', '410182', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3553', '41018203', '新县城', '410182', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3554', '41018301', '龙湖镇', '410183', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3555', '41018302', '平原新区', '410183', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3556', '41018303', '其他', '410183', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3557', '41018304', '上街区', '410183', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3558', '41018305', '荥阳市', '410183', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3559', '510103', '周边县市', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3560', '51010701', '簇桥', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3561', '51010702', '成都体院', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3562', '51010703', '广福桥', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3563', '51010704', '高升桥', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3564', '51010705', '航空路', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3565', '51010706', '红牌楼', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3566', '51010707', '火车南站', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3567', '51010708', '机投镇', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3568', '51010709', '磨子桥', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3569', '51010710', '内双楠', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3570', '51010711', '清水河', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3571', '51010712', '桐梓林', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3572', '51010713', '武侯立交', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3573', '51010714', '武侯大道', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3574', '51010715', '武侯祠大街', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3575', '51010716', '外双楠', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3576', '51010717', '新双楠', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3577', '51010718', '小天竺', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3578', '51010719', '肖家河', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3579', '51010720', '玉林', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3580', '51010721', '棕北小区', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3581', '51010722', '中央花园', '510107', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3583', '51010401', '春熙路', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3584', '51010402', '东大街', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3585', '51010403', '东风大桥', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3586', '51010404', '东光小区', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3587', '51010405', '海椒市', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3588', '51010406', '合江亭', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3589', '51010407', '红星路', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3590', '51010408', '锦华路', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3591', '51010409', '静居寺路', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3592', '51010410', '九眼桥', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3593', '51010411', '蓝谷地', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3594', '51010412', '莲桂路', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3595', '51010413', '龙舟路', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3596', '51010414', '攀成钢', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3597', '51010415', '三圣乡', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3598', '51010416', '水碾河', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3599', '51010417', '顺江路', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3600', '51010418', '四川师大', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3601', '51010419', '幸福梅林', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3602', '51010420', '新南门', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3603', '51010421', '盐市口', '510104', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3604', '51010501', '八宝街', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3605', '51010502', '贝森', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3606', '51010503', '草堂', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3607', '51010504', '长顺街', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3608', '51010505', '府南新区', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3609', '51010506', '光华泡小', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3610', '51010507', '浣花小区', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3611', '51010508', '金沙', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3612', '51010509', '骡马市', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3613', '51010510', '内光华大道', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3614', '51010511', '青羊大道', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3615', '51010512', '顺城街', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3616', '51010513', '石人小区', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3617', '51010514', '通惠门', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3618', '51010515', '外光华大道', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3619', '51010516', '万家湾', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3620', '51010517', '外金沙', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3621', '51010518', '西单广场', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3622', '51010519', '西南财大', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3623', '51010520', '中医学院', '510105', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3625', '51010601', '茶店子', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3626', '51010602', '抚琴小区', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3627', '51010603', '高新西区', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3628', '51010604', '国宾', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3629', '51010605', '高笋塘', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3630', '51010606', '华侨城', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3631', '51010607', '花牌坊', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3632', '51010608', '黄忠小区', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3633', '51010609', '九里堤', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3634', '51010610', '李家沱', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3635', '51010611', '梁家巷', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3636', '51010612', '沙湾会展', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3637', '51010613', '蜀汉路', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3638', '51010614', '五块石', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3639', '51010615', '西南交大', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3640', '51010616', '营门口', '510106', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3641', '51010801', '八里小区', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3642', '51010802', '成渝立交', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3643', '51010803', '东郊记忆', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3644', '51010804', '东客站', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3645', '51010805', '动物园', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3646', '51010806', '电子科大', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3647', '51010807', '二十四城', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3648', '51010808', '府青路', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3649', '51010809', '建设路', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3650', '51010810', '龙潭寺', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3651', '51010811', '双庆路', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3652', '51010812', 'SM广场', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3653', '51010813', '驷马桥', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3654', '51010814', '十里店', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3655', '51010815', '双桥子', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3656', '51010816', '万年场', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3657', '51010817', '新鸿路', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3658', '51010818', '新华公园', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3659', '51010819', '玉双路', '510108', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3661', '51013201', '创业路', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3662', '51013202', '大源', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3663', '51013203', '芳草街', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3664', '51013204', '金融城', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3665', '51013205', '南延线', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3666', '51013206', '神仙树', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3667', '51013207', '天府长城', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3668', '51013208', '新会展', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3669', '51013209', '中和镇', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3670', '51013210', '紫荆小区', '510132', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3671', '51011201', '成都大学', '510112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3672', '51011202', '大面镇', '510112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3673', '51011203', '洛带古镇', '510112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3674', '51011204', '龙泉驿市区', '510112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3675', '51011205', '十陵', '510112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3676', '51011206', '阳光城', '510112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3677', '51012201', '航空港', '510122', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3678', '51012202', '华阳', '510122', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3679', '51012203', '麓山', '510122', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3680', '51012204', '牧马山', '510122', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3681', '51012205', '双流城区', '510122', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3682', '51011401', '大丰镇', '510114', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3683', '51011402', '老城区', '510114', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3684', '51011403', '新城区', '510114', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3685', '51011501', '大学城', '510115', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3686', '51011502', '芙蓉古城', '510115', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3687', '51011503', '光华大道', '510115', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3688', '51011504', '会展中心', '510115', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3689', '51011505', '温江城区', '510115', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3690', '51018101', '都江堰市区', '510181', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3691', '51018102', '青城山', '510181', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3692', '51012401', '红光镇', '510124', '51012401', null, null, null);
INSERT INTO `shop_area` VALUES ('3693', '51012402', '郫县城区', '510124', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3694', '51012403', '万达广场', '510124', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3695', '51012404', '犀浦', '510124', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3696', '51010301', '大邑', '510103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3697', '51010302', '金堂', '510103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3698', '51010303', '蒲江', '510103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3699', '51010304', '其他', '510103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3700', '51010305', '新津', '510103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3701', '53010301', '北辰财富中心', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3702', '53010302', '白龙路片区', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3703', '53010303', '白塔路', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3704', '53010304', '鼓楼片区', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3705', '53010305', '火车北站', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3706', '53010306', '金殿片区', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3707', '53010307', '江东片区', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3708', '53010308', '金星立交世博', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3709', '53010309', '金星立交片区', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3710', '53010310', '世博片区', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3711', '53010311', '昙华寺片区', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3712', '53010312', '新迎片区', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3713', '53010313', '张官营', '530103', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3714', '53011201', '碧鸡关', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3715', '53011202', '船房片区', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3716', '53011203', '滇池度假区', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3717', '53011204', '滇池路片区', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3718', '53011205', '大商汇', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3719', '53011206', '金碧片区', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3720', '53011207', '昆明新闻中心', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3721', '53011208', '马街', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3722', '53011209', '前卫营', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3723', '53011210', '世纪半岛', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3724', '53011211', '西山区政府', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3725', '53011212', '云纺片区', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3726', '53011213', '棕树营片区', '530112', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3727', '53010201', '北市公交车站', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3728', '53010202', '翠湖', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3729', '53010203', '茨坝', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3730', '53010204', '丰宁片区', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3731', '53010205', '高新区', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3732', '53010206', '虹山片区', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3733', '53010207', '黄土坡', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3734', '53010208', '莲花片区', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3735', '53010209', '马村', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3736', '53010210', '南屏街片区', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3737', '53010211', '小西门', '530102', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3738', '53010001', '国贸中心', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3739', '53010002', '官南大道', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3740', '53010003', '和平村', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3741', '53010004', '经济开发区', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3742', '53010005', '金马寺片区', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3743', '53010006', '昆明机场', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3744', '53010007', '南窑片区', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3745', '53010008', '世纪城', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3746', '53010009', '吴井路', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3747', '53010010', '新螺蛳湾', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3748', '53010011', '新亚洲体育城', '530111', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3749', '53012101', '呈贡', '530121', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3750', '53012801', '安宁', '530128', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3751', '53012901', '富民', '530129', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3752', '53012902', '晋宁', '530129', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3753', '53012903', '禄劝', '530129', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3754', '53012904', '石林', '530129', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3755', '53012905', '嵩明', '530129', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3756', '53012906', '寻甸', '530129', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3757', '53012907', '宜良', '530129', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3758', '640181001', '灵武', '640181', null, '2015-10-28 11:43:49', '2015-10-28 11:43:49', null);
INSERT INTO `shop_area` VALUES ('3759', '640122001', '德胜', '640122', null, '2015-10-28 11:43:49', '2015-10-28 11:43:49', null);
INSERT INTO `shop_area` VALUES ('3760', '640122002', '贺兰', '640122', null, '2015-10-28 11:43:49', '2015-10-28 11:43:49', null);
INSERT INTO `shop_area` VALUES ('3761', '640121001', '望远', '640121', null, '2015-10-28 11:43:49', '2015-10-28 11:43:49', null);
INSERT INTO `shop_area` VALUES ('3762', '640121002', '永宁', '640121', null, '2015-10-28 11:43:49', '2015-10-28 11:43:49', null);
INSERT INTO `shop_area` VALUES ('3763', '640106001', '宝湖', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3764', '640106002', '华雁湖', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3765', '640106003', '金凤', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3766', '640106004', '开发区', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3767', '640106005', '人民广场', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3768', '640106006', '森林公园', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3769', '640106007', '新城', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3770', '640106008', '正源南街', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3771', '640106009', '正源北街', '640106', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3772', '640105001', '火车站', '640105', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3773', '640105002', '宁大周边', '640105', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3774', '640105003', '西夏', '640105', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3775', '640105004', '新市区', '640105', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3776', '640104001', '北门', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3777', '640104002', '北塔湖', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3778', '640104003', '城南', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3779', '640104004', '凤凰北街', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3780', '640104005', '老城', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3781', '640104006', '丽景街', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3782', '640104007', '兴庆', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3783', '640104008', '西门', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3784', '640104009', '新一中', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3785', '640104010', '新华东街', '640104', null, '2015-10-28 11:43:50', '2015-10-28 11:43:50', null);
INSERT INTO `shop_area` VALUES ('3786', '140110001', '晋祠', '140110', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3787', '140110002', '晋阳湖', '140110', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3788', '140110003', '晋源', '140110', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3789', '140110004', '义井', '140110', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3790', '140109001', '和平路', '140109', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3791', '140109002', '千峰', '140109', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3792', '140109003', '万柏林', '140109', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3793', '140109004', '西宫', '140109', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3794', '140109005', '西客站', '140109', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3795', '140109006', '下元商贸', '140109', null, '2015-10-28 12:08:00', '2015-10-28 12:08:00', null);
INSERT INTO `shop_area` VALUES ('3796', '140109007', '小井', '140109', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3797', '140109008', '兴华', '140109', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3798', '140109009', '漪汾', '140109', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3799', '140108001', '北宫', '140108', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3800', '140108002', '尖草坪', '140108', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3801', '140108003', '尖草坪批发市场', '140108', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3802', '140108004', '胜利桥', '140108', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3803', '140108005', '迎新街', '140108', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3804', '140107001', '北大街', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3805', '140107002', '大东关', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3806', '140107003', '敦化坊', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3807', '140107004', '动物园', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3808', '140107005', '府东府西', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3809', '140107006', '旱西关', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3810', '140107007', '建设北路', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3811', '140107008', '巨轮', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3812', '140107009', '龙潭湖', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3813', '140107010', '赛马场', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3814', '1401070011', '五龙口', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3815', '1401070012', '五一路', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3816', '1401070013', '小东门', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3817', '1401070014', '杏花岭', '140107', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3818', '140106001', '并州北路', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3819', '140106002', '并州东西街', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3820', '140106003', '大南门', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3821', '140106004', '服装城', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3823', '140106006', '民营经济园区', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3824', '140106007', '南内环', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3826', '140106009', '双塔东西街', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3827', '140106010', '水西关', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3829', '1401060012', '五一广场', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3830', '1401060013', '迎泽', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3831', '1401060014', '朝阳', '140106', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3834', '140105003', '富士康', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3835', '140105004', '高新技术开发区', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3836', '140105005', '经济技术开发区', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3837', '140105006', '南中环', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3838', '140105007', '平阳', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3839', '140105008', '亲贤', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3840', '140105009', '坞城', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3841', '140105010', '小店', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3842', '1401050011', '学府街', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3843', '1401050012', '许坦东西街', '140105', null, '2015-10-28 12:08:01', '2015-10-28 12:08:01', null);
INSERT INTO `shop_area` VALUES ('3844', '140105001', '北营', '140105', null, '2015-10-28 12:11:36', '2015-10-28 12:11:36', null);
INSERT INTO `shop_area` VALUES ('3845', '140105002', '并州南路', '140105', null, '2015-10-28 12:11:36', '2015-10-28 12:11:36', null);
INSERT INTO `shop_area` VALUES ('3846', '1401050027', '长风', '140105', null, '2015-10-28 12:12:38', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('3847', '1401050028', '长治', '140105', null, '2015-10-28 12:12:38', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('3848', '140106005', '老军营', '140106', null, '2015-10-28 12:15:43', '2015-10-28 12:15:43', null);
INSERT INTO `shop_area` VALUES ('3849', '1401060024', '柳巷', '140106', null, '2015-10-28 12:15:43', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('3850', '1401060028', '桃园', '140106', null, '2015-10-28 12:15:43', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('3851', '1401060029', '体育馆', '140106', null, '2015-10-28 12:15:43', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('3852', '1401060026', '桥东', '140106', null, '2015-10-28 12:16:43', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('3853', '1401060027', '青年路', '140106', null, '2015-10-28 12:16:43', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('3854', '620105001', '安宁科教城', '620105', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3855', '620105002', '费家营', '620105', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3856', '620105003', '黄河市场', '620105', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3857', '620105004', '孔家崖', '620105', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3858', '620105005', '刘家堡', '620105', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3859', '620105006', '培黎广场', '620105', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3860', '620105007', '十里店', '620105', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3861', '620104001', '福利路', '620104', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3862', '620104002', '寺儿沟', '620104', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3863', '620104003', '深沟桥', '620104', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3864', '620104004', '西固城', '620104', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3865', '620104005', '玉门街', '620104', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3866', '620103001', '龚家湾', '620103', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3867', '620103002', '硷沟沿', '620103', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3868', '620103003', '七里河区政府', '620103', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3869', '620103004', '上西园', '620103', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3870', '620103005', '秀川', '620103', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3871', '620103006', '小西湖', '620103', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3872', '620103007', '西站', '620103', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3873', '620103008', '晏家坪', '620103', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3874', '620102001', '东岗', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3875', '620102002', '大润发', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3876', '620102003', '段家滩', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3877', '620102004', '东部市场', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3878', '620102005', '东方红广场', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3879', '620102006', '二热', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3880', '620102007', '火车站', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3881', '620102008', '黄河北', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3882', '620102009', '九州', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3883', '620102010', '庙滩子', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3884', '6201020011', '盘旋路', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3885', '6201020012', '滩尖子', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3886', '6201020013', '五泉广场', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3887', '6201020014', '西关什字', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3888', '6201020015', '雁北路', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3889', '6201020016', '雁滩高新区', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3890', '6201020017', '雁滩', '620102', null, '2015-11-05 13:12:43', '2015-11-05 13:12:43', null);
INSERT INTO `shop_area` VALUES ('3891', '150106', '如意开发区', '150100', null, null, '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('3892', '150107', '金桥开发区', '150100', null, null, '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('3893', '150108', '金川开发区', '150100', null, null, '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('3894', '150109', '金山开发区', '150100', null, null, '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('3895', '150109001', '金山开发区', '150109', null, '2015-11-12 15:54:15', '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('3896', '150108001', '金川开发区', '150108', null, '2015-11-12 15:54:15', '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('3897', '150107001', '金桥开发区', '150107', null, '2015-11-12 15:54:15', '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('3898', '150106001', '如意开发区', '150106', null, '2015-11-12 15:54:15', '2015-11-12 15:54:15', null);
INSERT INTO `shop_area` VALUES ('3899', '150105001', '长乐宫', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3900', '150105002', '驰誉', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3901', '150105003', '东瓦窑', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3902', '150105004', '鄂尔多斯东街', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3903', '150105005', '金帝商城', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3904', '150105006', '桥华世纪村', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3905', '150105007', '赛罕区政府', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3906', '150105008', '乌兰察布东路', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3907', '150105009', '西把栅乡政府', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3908', '150105010', '丰州路', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3909', '1501050011', '万达广场', '150105', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3910', '150104001', '大召', '150104', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3911', '150104002', '大南街', '150104', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3912', '150104003', '化纤厂', '150104', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3913', '150104004', '南茶坊', '150104', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3914', '150104005', '石羊桥', '150104', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3915', '150104006', '五塔寺', '150104', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3916', '150104007', '昭君路', '150104', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3917', '150103001', '光明路', '150103', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3918', '150103002', '海西路', '150103', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3919', '150103003', '西龙王庙', '150103', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3920', '150103004', '县府街', '150103', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3921', '150103005', '植物园', '150103', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3922', '150103006', '中山西路', '150103', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3923', '150102001', '阿尔泰游乐园', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3924', '150102002', '八一市场', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3925', '150102003', '鼓楼', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3926', '150102004', '光华街', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3927', '150102005', '海东路', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3928', '150102006', '火车站', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3929', '150102007', '润宇', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3930', '150102008', '新城区政府', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3931', '150102009', '展览馆', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3932', '150102010', '哲里木路', '150102', null, '2015-11-12 15:54:16', '2015-11-12 15:54:16', null);
INSERT INTO `shop_area` VALUES ('3933', '620124', '兰州新区', '620100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('3934', '210101', '辽中县', '210100', null, null, '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3935', '210122001', '北大学城', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3936', '210122002', '长江北街', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3937', '210122003', '丁香湖', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3938', '210122004', '国奥现代城', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3939', '210122005', '红旗台', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3940', '210122006', '黄河北大街', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3941', '210122007', '和泰新城', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3942', '210122008', '黑山', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3943', '210122009', '怒江北街', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3944', '210122010', '平罗', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3945', '2101220011', '师范大学', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3946', '2101220012', '沙岭', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3947', '2101220013', '四台子', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3948', '2101220014', '松山路', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3949', '2101220015', '于洪新城', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3950', '2101220016', '于洪广场', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3951', '2101220017', '原荷兰村', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3952', '2101220018', '于洪区委', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3953', '2101220019', '造化', '210122', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3954', '210114001', '道义', '210114', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3955', '210114002', '虎石台', '210114', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3956', '210114003', '辉山', '210114', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3957', '210114004', '浦河', '210114', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3958', '210114005', '清水台', '210114', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3959', '210114006', '沈北', '210114', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3960', '210114007', '兴隆台', '210114', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3961', '210114008', '新城子', '210114', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3962', '210113001', '八棵树', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3963', '210113002', '东湖', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3964', '210113003', '辉山', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3965', '210113004', '浑河站东', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3966', '210113005', '浑河站西', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3967', '210113006', '经济开发区', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3968', '210113007', '农业大学', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3969', '210113008', '棋盘山', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3970', '210113009', '桃仙', '210113', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3971', '210112001', '苏家屯', '210112', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3972', '210111001', '保工', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3973', '210111002', '北四路', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3974', '210111003', '北一路', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3975', '210111004', '丁香湖', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3976', '210111005', '工业大学', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3977', '210111006', '工人村', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3978', '210111007', '滑翔', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3979', '210111008', '建设大路', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3980', '210111009', '经济开发区', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3981', '210111010', '景星', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3982', '2101110011', '家俱城', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3983', '2101110012', '劳动公园', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3984', '2101110013', '铁西体育场', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3985', '2101110014', '铁百', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3986', '2101110015', '卫工', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3987', '2101110016', '西站', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3988', '2101110017', '兴华南街', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3989', '2101110018', '兴工', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3990', '2101110019', '兴华', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3991', '2101110020', '仙女湖', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3992', '2101110021', '艳粉', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3993', '2101110022', '云峰', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3994', '2101110023', '重工', '210111', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3995', '210106001', '北陵东门', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3996', '210106002', '白山路', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3997', '210106003', '北行', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3998', '210106004', '长客总站', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('3999', '210106005', '长江北街', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4000', '210106006', '第四人民院', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4001', '210106007', '公安厅', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4002', '210106008', '华山路', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4003', '210106009', '皇姑屯', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4004', '210106010', '陵西', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4005', '2101060011', '辽歌', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4006', '2101060012', '怒江北街', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4007', '2101060013', '省政府游泳馆', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4008', '2101060014', '三台子', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4009', '2101060015', '泰山路', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4010', '2101060016', '塔湾', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4011', '2101060017', '五一商店', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4012', '2101060018', '新乐遗址', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4013', '2101060019', '西瓦窑', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4014', '2101060020', '鸭绿江街', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4015', '2101060021', '珠江桥', '210106', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4016', '210105001', '八王寺', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4017', '210105002', '八家子', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4018', '210105003', '北大营', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4019', '210105004', '大东广场', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4020', '210105005', '东中街', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4021', '210105006', '东塔', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4022', '210105007', '东站', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4023', '210105008', '二零四医院', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4024', '210105009', '二台子', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4025', '210105010', '吉祥', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4026', '2101050011', '凯翔', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4027', '2101050012', '老瓜堡', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4028', '2101050013', '老龙口', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4029', '2101050014', '滂江', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4030', '2101050015', '上园路', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4031', '2101050016', '沈阳大学', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4032', '2101050017', '洮昌', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4033', '2101050018', '望花', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4034', '2101050019', '万柳塘', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4035', '2101050020', '新东', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4036', '2101050021', '小河沿', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4037', '2101050022', '小北', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4038', '2101050023', '珠林桥', '210105', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4039', '210104001', '白塔', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4040', '210104002', '北站商圈', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4041', '210104003', '彩电塔', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4042', '210104004', '长青', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4043', '210104005', '大西菜行', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4044', '210104006', '大南门', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4045', '210104007', '电视台', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4046', '210104008', '方家栏', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4047', '210104009', '广宜街', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4048', '210104010', '惠工广场', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4049', '2101040011', '科学宫', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4050', '2101040012', '莲花街', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4051', '2101040013', '马官桥', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4052', '2101040014', '南塔', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4053', '2101040015', '泉园', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4054', '2101040016', '青年大街', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4055', '2101040017', '市府广场', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4056', '2101040018', '市政府', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4057', '2101040019', '市委', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4058', '2101040020', '万泉', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4059', '2101040021', '五爱街', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4060', '2101040022', '新立堡', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4061', '2101040023', '中街', '210104', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4062', '210103001', '八经街', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4063', '210103002', '北市场', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4064', '210103003', '长白', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4065', '210103004', '东北大学', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4066', '210103005', '方型广场', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4067', '210103006', '和平广场', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4068', '210103007', '皇寺广场', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4069', '210103008', '领事馆', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4070', '210103009', '辽报', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4071', '210103010', '马路湾', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4072', '2101030011', '南市场', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4073', '2101030012', '沈阳站', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4074', '2101030013', '砂山', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4075', '2101030014', '三好街', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4076', '2101030015', '太原街', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4077', '2101030016', '五里河', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4078', '2101030017', '新华广场', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4079', '2101030018', '西塔', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4080', '2101030019', '云集', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4081', '2101030020', '中山公园', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4082', '2101030021', '中山广场', '210103', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4083', '210102001', '奥体中心', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4084', '210102002', '白塔堡', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4085', '210102003', '大学城', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4086', '210102004', '二十一世纪广场', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4087', '210102005', '浑河堡', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4088', '210102006', '会展中心', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4089', '210102007', '浑南开发区', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4090', '210102008', '浑南中路', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4091', '210102009', '理工大学', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4092', '210102010', '南大学城', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4093', '2101020011', '世纪新城', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4094', '2101020012', '音乐学院', '210102', null, '2015-11-25 11:08:04', '2015-11-25 11:08:04', null);
INSERT INTO `shop_area` VALUES ('4095', '630101', '其它', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4096', '410381001', '偃师', '410381', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4097', '410329001', '伊川', '410329', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4098', '410328001', '洛宁', '410328', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4099', '410327001', '宜阳', '410327', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4100', '410326001', '汝阳', '410326', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4101', '410325001', '城关镇', '410325', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4102', '410324001', '栾川', '410324', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4103', '410323001', '新安', '410323', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4104', '410322001', '孟津', '410322', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4105', '410307001', '宝龙城市广场', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4106', '410307002', '大学城', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4107', '410307003', '古城乡', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4108', '410307004', '关林', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4109', '410307005', '开元湖', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4110', '410307006', '李楼', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4111', '410307007', '洛龙体育场', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4112', '410307008', '洛龙', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4113', '410307009', '市政府', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4114', '410307010', '音乐喷泉', '410307', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4115', '410306001', '吉利', '410306', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4116', '410305001', '谷水', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4117', '410305002', '高新', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4118', '410305003', '华山路', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4119', '410305004', '河科大', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4120', '410305005', '涧西', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4121', '410305006', '龙鳞路', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4122', '410305007', '联盟路', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4123', '410305008', '牡丹广场', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4124', '410305009', '南昌路', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4125', '410305010', '上海市场', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4126', '4103050011', '武汉路', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4127', '4103050012', '万达广场', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4128', '4103050013', '珠江路', '410305', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4129', '410304001', '瀍河', '410304', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4130', '410304002', '东花坛', '410304', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4131', '410304003', '机车工厂', '410304', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4132', '410304004', '启明路', '410304', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4133', '410304005', '下园', '410304', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4134', '410304006', '新街', '410304', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4135', '410303001', '玻璃厂', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4136', '410303002', '道北', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4137', '410303003', '国家牡丹园', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4138', '410303004', '火车站', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4139', '410303005', '洛浦公园', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4140', '410303006', '纱厂路', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4141', '410303007', '王城广场', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4142', '410303008', '王府井', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4143', '410303009', '下池', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4144', '410303010', '新都汇', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4145', '4103030011', '行署路', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4146', '4103030012', '西工', '410303', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4147', '410302001', '北大街', '410302', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4148', '410302002', '老集', '410302', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4149', '410302003', '老城', '410302', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4150', '410302004', '南关', '410302', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4151', '410302005', '青年宫', '410302', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4152', '410302006', '铁路分局', '410302', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4153', '410302007', '西关', '410302', null, '2015-11-26 10:22:04', '2015-11-26 10:22:04', null);
INSERT INTO `shop_area` VALUES ('4154', '630106', '城南新区', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4155', '630107', '海湖新区', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4156', '630108', '生物园区', '630100', null, null, '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4157', '630108001', '海湖大道', '630108', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4158', '630108002', '经二路', '630108', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4159', '630108003', '宁张路', '630108', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4160', '630108004', '陶家寨', '630108', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4161', '630108005', '纬二路', '630108', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4162', '630108006', '其他', '630108', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4163', '630107001', '海通路', '630107', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4164', '630107002', '刘家寨', '630107', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4165', '630107003', '彭家寨', '630107', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4166', '630107004', '文汇路', '630107', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4167', '630107005', '文博路', '630107', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4168', '630107006', '文苑路', '630107', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4169', '630107007', '其他', '630107', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4170', '630106001', '创业路', '630106', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4171', '630106002', '奉青路', '630106', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4172', '630106003', '同安路', '630106', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4173', '630106004', '新城大道', '630106', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4174', '630106005', '总寨', '630106', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4175', '630106006', '其他', '630106', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4176', '630123001', '巴燕', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4177', '630123002', '波航', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4178', '630123003', '城关', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4179', '630123004', '城郊', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4180', '630123005', '大华', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4181', '630123006', '东峡', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4182', '630123007', '和平', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4183', '630123008', '申中', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4184', '630123009', '寺寨', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4185', '630123010', '塔湾', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4186', '6301230011', '其他', '630123', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4187', '630122001', '多巴', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4188', '630122002', '甘河滩', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4189', '630122003', '共和', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4190', '630122004', '鲁沙尔', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4191', '630122005', '拦隆口', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4192', '630122006', '李家山', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4193', '630122007', '上新庄', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4194', '630122008', '上五庄', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4195', '630122009', '田家寨', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4196', '630122010', '总寨', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4197', '6301220011', '其他', '630122', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4198', '630121001', '城关', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4199', '630121002', '长宁', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4200', '630121003', '东峡', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4201', '630121004', '多林', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4202', '630121005', '黄家寨', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4203', '630121006', '景阳', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4204', '630121007', '桥头', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4205', '630121008', '塔尔', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4206', '630121009', '新庄', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4207', '630121010', '其他', '630121', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4208', '630105001', '朝阳', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4209', '630105002', '柴达木路', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4210', '630105003', '大寺沟', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4211', '630105004', '马坊', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4212', '630105005', '祁连路', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4213', '630105006', '三其', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4214', '630105007', '小桥', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4215', '630105008', '盐庄', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4216', '630105009', '其他', '630105', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4217', '630104001', '古城台', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4218', '630104002', '虎台', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4219', '630104003', '海晏路', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4220', '630104004', '昆仑西路', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4221', '630104005', '南川西路', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4222', '630104006', '胜利路', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4223', '630104007', '五四大街', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4224', '630104008', '五岔路口', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4225', '630104009', '西关大街', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4226', '630104010', '兴海路', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4227', '6301040011', '西川南路', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4228', '6301040012', '其他', '630104', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4229', '630103001', '滨河南路', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4230', '630103002', '北大街', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4231', '630103003', '仓门街', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4232', '630103004', '长江路', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4233', '630103005', '礼让街', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4234', '630103006', '莫家街', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4235', '630103007', '南滩', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4236', '630103008', '南川东路', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4237', '630103009', '南山路', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4238', '630103010', '南大街', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4239', '6301030011', '七一路', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4240', '6301030012', '人民街', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4241', '6301030013', '夏都大街', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4242', '6301030014', '饮马街', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4243', '6301030015', '其他', '630103', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4244', '630102001', '八一路', '630102', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4245', '630102002', '曹家寨', '630102', null, '2015-11-26 15:23:20', '2015-11-26 15:23:20', null);
INSERT INTO `shop_area` VALUES ('4246', '630102003', '东关大街', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4247', '630102004', '大众街', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4248', '630102005', '付家寨', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4249', '630102006', '火车站', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4250', '630102007', '昆仑东路', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4251', '630102008', '林家崖', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4252', '630102009', '清真巷', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4253', '630102010', '小寨', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4254', '6301020011', '周家泉', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4255', '6301020012', '其他', '630102', null, '2015-11-26 15:23:21', '2015-11-26 15:23:21', null);
INSERT INTO `shop_area` VALUES ('4256', '640101', '城区', '640100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4257', '640102', '新城', '640100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4258', '340105', '滨湖', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4259', '340106', '政务', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4260', '340107', '新站', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4261', '340108', '高新', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4262', '340109', '经开', '340100', null, null, '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4263', '340109001', '翠微路', '340109', null, '2015-11-30 12:32:51', '2015-11-30 12:32:51', null);
INSERT INTO `shop_area` VALUES ('4264', '340109002', '大学城', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4265', '340109003', '方兴社区', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4266', '340109004', '芙蓉路', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4267', '340109005', '徽园', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4268', '340109006', '和港澳广场', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4269', '340109007', '锦绣社区', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4270', '340109008', '建工学院南区', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4271', '340109009', '经开周边', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4272', '340109010', '明珠广场', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4273', '3401090011', '南湖春城', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4274', '3401090012', '南艳湖', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4275', '3401090013', '农业示范园', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4276', '3401090014', '天门湖', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4277', '3401090015', '中环城', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4278', '3401090016', '其他', '340109', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4279', '340108001', '大铺头', '340108', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4280', '340108002', '恒大华府', '340108', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4281', '340108003', '科技园', '340108', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4282', '340108004', '梦园', '340108', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4283', '340108005', '兴园小区', '340108', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4284', '340108006', '其他', '340108', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4285', '340107001', '生态公园', '340107', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4286', '340107002', '新海公园', '340107', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4287', '340107003', '瑶海公园', '340107', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4288', '340107004', '其他', '340107', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4289', '340106001', '国际花都', '340106', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4290', '340106002', '习友路', '340106', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4291', '340106003', '其他', '340106', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4292', '340105001', '滨湖前城', '340105', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4293', '340105002', '其他', '340105', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4294', '340123001', '丰乐', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4295', '340123002', '高刘', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4296', '340123003', '官亭', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4297', '340123004', '花岗', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4298', '340123005', '农兴', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4299', '340123006', '上派', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4300', '340123007', '三河', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4301', '340123008', '山南', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4302', '340123009', '桃花', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4303', '340123010', '小庙', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4304', '3401230011', '新仓', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4305', '3401230012', '其他', '340123', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4306', '340122001', '八斗', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4307', '340122002', '白龙', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4308', '340122003', '撮镇', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4309', '340122004', '长临河', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4310', '340122005', '店埠', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4311', '340122006', '古城', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4312', '340122007', '龙岗', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4313', '340122008', '龙塘', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4314', '340122009', '六家畈', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4315', '340122010', '梁园', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4316', '3401220011', '桥头集', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4317', '3401220012', '石塘', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4318', '3401220013', '西山驿', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4319', '3401220014', '元疃', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4320', '3401220015', '其他', '340122', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4321', '340121001', '曹庵', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4322', '340121002', '岗集', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4323', '340121003', '水湖', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4324', '340121004', '双墩', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4325', '340121005', '吴山', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4326', '340121006', '下塘', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4327', '340121007', '杨公', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4328', '340121008', '杨庙', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4329', '340121009', '朱巷', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4330', '340121010', '庄墓', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4331', '3401210011', '其他', '340121', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4332', '340111001', '常青', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4333', '340111002', '巢湖路', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4334', '340111003', '大圩', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4335', '340111004', '东陈岗', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4336', '340111005', '葛大店', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4337', '340111006', '合工大', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4338', '340111007', '骆岗', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4339', '340111008', '宁国路', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4340', '340111009', '南园新村', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4341', '340111010', '省人大', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4342', '3401110011', '太宁路口', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4343', '3401110012', '芜湖路', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4344', '3401110013', '望湖城', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4345', '3401110014', '卫岗', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4346', '3401110015', '五里庙', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4347', '3401110016', '义兴', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4348', '3401110017', '义城', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4349', '3401110018', '中铁四局', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4350', '3401110019', '周谷堆', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4351', '3401110020', '其他', '340111', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4352', '340104001', '安徽大学', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4353', '340104002', '安徽农业大学', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4354', '340104003', '安医附院', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4355', '340104004', '安居苑', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4356', '340104005', '笔架山', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4357', '340104006', '长江西路', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4358', '340104007', '稻香村', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4359', '340104008', '二里街', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4360', '340104009', '贵池路', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4361', '340104010', '琥珀山庄', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4362', '3401040011', '荷叶地', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4363', '3401040012', '黄岳路口', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4364', '3401040013', '怀宁路', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4365', '3401040014', '井岗', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4366', '3401040015', '机研所', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4367', '3401040016', '科大西区', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4368', '3401040017', '南七里站', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4369', '3401040018', '清溪路', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4370', '3401040019', '青阳路', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4371', '3401040020', '肉联厂', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4372', '3401040021', '三里庵', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4373', '3401040022', '省农机校', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4374', '3401040023', '石台路', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4375', '3401040024', '五里墩', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4376', '3401040025', '西园新村', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4377', '3401040026', '西站', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4378', '3401040027', '牙膏厂', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4379', '3401040028', '自行车厂', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4380', '3401040029', '轴承厂', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4381', '3401040030', '其他', '340104', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4382', '340103001', '安庆路', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4383', '340103002', '白水坝', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4384', '340103003', '百花井', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4385', '340103004', '亳州路', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4386', '340103005', '城隍庙', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4387', '340103006', '财富广场', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4388', '340103007', '阜南路', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4389', '340103008', '光明', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4390', '340103009', '鼓楼', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4391', '340103010', '固镇路', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4392', '3401030011', '海棠', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4393', '3401030012', '和煦园', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4394', '3401030013', '蒙城北路', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4395', '3401030014', '寿春', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4396', '3401030015', '双岗', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4397', '3401030016', '市府广场', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4398', '3401030017', '三牌楼', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4399', '3401030018', '三孝口', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4400', '3401030019', '四牌楼', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4401', '3401030020', '上城国际', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4402', '3401030021', '宿州路', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4403', '3401030022', '杏林', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4404', '3401030023', '逍遥津', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4405', '3401030024', '杏花村', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4406', '3401030025', '益民', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4407', '3401030026', '其他', '340103', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4408', '340102001', '车站', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4409', '340102002', '城东', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4410', '340102003', '长淮', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4411', '340102004', '长江批发市场', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4412', '340102005', '大通路', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4413', '340102006', '定远路', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4414', '340102007', '方庙', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4415', '340102008', '和平路', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4416', '340102009', '红光', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4417', '340102010', '合家福购物街', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4418', '3401020011', '和平广场', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4419', '3401020012', '花冲公园', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4420', '3401020013', '静安新天地', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4421', '3401020014', '临泉东路', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4422', '3401020015', '龙岗', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4423', '3401020016', '罗岗', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4424', '3401020017', '郎溪路', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4425', '3401020018', '明光路', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4426', '3401020019', '七里站', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4427', '3401020020', '七里塘', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4428', '3401020021', '三里街', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4429', '3401020022', '胜利路', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4430', '3401020023', '铜陵路', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4431', '3401020024', '其他', '340102', null, '2015-11-30 12:32:52', '2015-11-30 12:32:52', null);
INSERT INTO `shop_area` VALUES ('4432', '420108', '沌口开发区', '420100', null, null, '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4433', '420108001', '车城路', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4434', '420108002', '郭徐岭广场', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4435', '420108003', '金色港湾', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4436', '420108004', '江汉大学', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4437', '420108005', '千年美丽', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4438', '420108006', '四新', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4439', '420108007', '体育中心', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4440', '420108008', '陶家岭', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4441', '420108009', '其他', '420108', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4442', '420117001', '仓埠', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4443', '420117002', '旧街', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4444', '420117003', '李集', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4445', '420117004', '潘塘', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4446', '420117005', '三店双柳', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4447', '420117006', '汪集', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4448', '420117007', '阳逻', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4449', '420117008', '邾城', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4450', '420117009', '其他', '420117', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4451', '420116001', '横店', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4452', '420116002', '汉口北', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4453', '420116003', '罗汉寺', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4454', '420116004', '六指店', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4455', '420116005', '盘龙城', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4456', '420116006', '前川', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4457', '420116007', '祁家湾', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4458', '420116008', '滠口', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4459', '420116009', '天河', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4460', '420116010', '其他', '420116', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4461', '420115001', '藏龙岛', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4462', '420115002', '东湖高新', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4463', '420115003', '金口', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4464', '420115004', '流芳', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4465', '420115005', '庙山', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4466', '420115006', '乌龙泉', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4467', '420115007', '银河湾', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4468', '420115008', '纸坊', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4469', '420115009', '郑店', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4470', '420115010', '其他', '420115', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4471', '420114001', '蔡甸', '420114', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4472', '420114002', '大集', '420114', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4473', '420114003', '奓山', '420114', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4474', '420114004', '新天街', '420114', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4475', '420114005', '永安', '420114', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4476', '420114006', '张湾', '420114', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4477', '420114007', '侏儒', '420114', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4478', '420114008', '其他', '420114', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4479', '420113001', '邓南', '420113', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4480', '420113002', '纱帽', '420113', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4481', '420113003', '其他', '420113', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4482', '420112001', '柏泉', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4483', '420112002', '常青花园', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4484', '420112003', '慈惠墩', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4485', '420112004', '长青', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4486', '420112005', '东山', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4487', '420112006', '荷包湖', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4488', '420112007', '将军路', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4489', '420112008', '金银湖', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4490', '420112009', '径河', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4491', '420112010', '李家墩', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4492', '4201120011', '三店', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4493', '4201120012', '吴家山', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4494', '4201120013', '新沟', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4495', '4201120014', '辛安渡', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4496', '4201120015', '走马岭', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4497', '4201120016', '其他', '420112', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4498', '420111001', '陈家湾', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4499', '420111002', '关山', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4500', '420111003', '光谷', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4501', '420111004', '广埠屯', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4502', '420111005', '葛化', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4503', '420111006', '红旗', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4504', '420111007', '花山', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4505', '420111008', '街道口', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4506', '420111009', '鲁巷', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4507', '420111010', '珞南', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4508', '4201110011', '珞狮南路', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4509', '4201110012', '软件园', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4510', '4201110013', '卓刀泉', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4511', '4201110014', '张家湾', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4512', '4201110015', '左岭', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4513', '4201110016', '其他', '420111', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4514', '420107001', '白玉山', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4515', '420107002', '厂前', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4516', '420107003', '钢花村', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4517', '420107004', '钢都', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4518', '420107005', '工人村', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4519', '420107006', '工业大道', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4520', '420107007', '红钢城', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4521', '420107008', '和平大道', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4522', '420107009', '建设二路', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4523', '420107010', '建设七路', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4524', '4201070011', '青山', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4525', '4201070012', '武东', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4526', '4201070013', '新沟桥', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4527', '4201070014', '冶金', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4528', '4201070015', '友谊大道', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4529', '4201070016', '余家头', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4530', '4201070017', '冶金大道', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4531', '4201070018', '其他', '420107', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4532', '420106001', '白沙洲', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4533', '420106002', '东亭', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4534', '420106003', '丁字桥', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4535', '420106004', '傅家坡', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4536', '420106005', '黄鹤楼', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4537', '420106006', '积玉桥', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4538', '420106007', '珞珈山', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4539', '420106008', '粮道街', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4540', '420106009', '粮道', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4541', '420106010', '南湖花园', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4542', '4201060011', '南湖', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4543', '4201060012', '水果湖', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4544', '4201060013', '司门口', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4545', '4201060014', '首义路', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4546', '4201060015', '石洞', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4547', '4201060016', '武昌火车站', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4548', '4201060017', '武泰闸', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4549', '4201060018', '徐家棚', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4550', '4201060019', '徐东', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4551', '4201060020', '小东门', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4552', '4201060021', '新河', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4553', '4201060022', '杨园', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4554', '4201060023', '中北路', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4555', '4201060024', '中南路', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4556', '4201060025', '中华路', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4557', '4201060026', '紫阳', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4558', '4201060027', '其他', '420106', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4559', '420105001', '翠微', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4560', '420105002', '郭茨口', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4561', '420105003', '江汉二桥', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4562', '420105004', '建桥', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4563', '420105005', '琴断口', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4564', '420105006', '七里庙', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4565', '420105007', '晴川', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4566', '420105008', '升官渡', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4567', '420105009', '王家湾', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4568', '420105010', '五里墩', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4569', '4201050011', '鹦鹉', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4570', '4201050012', '月湖', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4571', '4201050013', '钟家村', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4572', '4201050014', '洲头', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4573', '4201050015', '其他', '420105', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4574', '420104001', '宝丰', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4575', '420104002', '崇仁', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4576', '420104003', '古田', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4577', '420104004', '汉正', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4578', '420104005', '汉中', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4579', '420104006', '汉水桥', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4580', '420104007', '韩家墩', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4581', '420104008', '六角亭', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4582', '420104009', '荣华', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4583', '420104010', '武胜路', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4584', '4201040011', '易家墩', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4585', '4201040012', '宗关', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4586', '4201040013', '其他', '420104', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4587', '420103001', '北湖', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4588', '420103002', '常青', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4589', '420103003', '红旗渠', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4590', '420103004', '汉兴', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4591', '420103005', '民意', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4592', '420103006', '满春', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4593', '420103007', '民族', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4594', '420103008', '民权', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4595', '420103009', '前进', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4596', '420103010', '水塔', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4597', '4201030011', '唐家墩', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4598', '4201030012', '万松', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4599', '4201030013', '新华', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4600', '4201030014', '西北湖', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4601', '4201030015', '杨汊湖', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4602', '4201030016', '其他', '420103', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4603', '420102001', '百步亭', '420102', null, '2015-11-30 15:22:02', '2015-11-30 15:22:02', null);
INSERT INTO `shop_area` VALUES ('4604', '420102002', '车站', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4605', '420102003', '谌家矶', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4606', '420102004', '大智街', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4607', '420102005', '丹水池', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4608', '420102006', '岱山', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4609', '420102007', '二七', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4610', '420102008', '花桥', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4611', '420102009', '后湖', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4612', '420102010', '汉口火车站', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4613', '4201020011', '建设大道', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4614', '4201020012', '江汉路', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4615', '4201020013', '劳动', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4616', '4201020014', '球场街', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4617', '4201020015', '三阳路', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4618', '4201020016', '上海', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4619', '4201020017', '四唯', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4620', '4201020018', '台北路', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4621', '4201020019', '香港路', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4622', '4201020020', '西马', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4623', '4201020021', '新村', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4624', '4201020022', '永清', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4625', '4201020023', '一元路', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4626', '4201020024', '竹叶山', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4627', '4201020025', '其他', '420102', null, '2015-11-30 15:22:03', '2015-11-30 15:22:03', null);
INSERT INTO `shop_area` VALUES ('4628', '610803', '开发区', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4629', '610804', '东沙', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4630', '610805', '西沙', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4631', '610806', '南郊', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4632', '610807', '北郊', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4633', '610808', '市中心', '610800', null, null, '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4634', '610808001', '北大街', '610808', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4635', '610808002', '长城路', '610808', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4636', '610808003', '南大街', '610808', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4637', '610808004', '新建路', '610808', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4638', '610808005', '其他', '610808', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4639', '610807001', '二里畔', '610807', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4640', '610807002', '麻黄梁', '610807', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4641', '610807003', '牛家梁', '610807', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4642', '610807004', '其他', '610807', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4643', '610806001', '肤施路', '610806', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4644', '610806002', '上郡路', '610806', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4645', '610806003', '三岔湾', '610806', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4646', '610806004', '其他', '610806', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4647', '610805001', '保宁路', '610805', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4648', '610805002', '航宇路', '610805', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4649', '610805003', '柳营路', '610805', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4650', '610805004', '文化路', '610805', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4651', '610805005', '幸福路', '610805', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4652', '610805006', '其他', '610805', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4653', '610804001', '大坝头', '610804', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4654', '610804002', '金沙路', '610804', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4655', '610804003', '金刚寺', '610804', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4656', '610804004', '驼峰路', '610804', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4657', '610804005', '望湖路', '610804', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4658', '610804006', '其他', '610804', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4659', '610803001', '草海则', '610803', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4660', '610803002', '东环路', '610803', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4661', '610803003', '明珠大道', '610803', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4662', '610803004', '沙河路', '610803', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4663', '610803005', '兴达路', '610803', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4664', '610803006', '闫庄则', '610803', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4665', '610803007', '其他', '610803', null, '2015-12-01 12:33:25', '2015-12-01 12:33:25', null);
INSERT INTO `shop_area` VALUES ('4666', '420601', '高新区', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4667', '420603', '鱼梁州', '420600', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4668', '340201001', '北大街', '340201', null, '2015-12-21 09:24:51', null, null);
INSERT INTO `shop_area` VALUES ('4669', '340201002', '凤河路', '340201', null, '2015-12-21 09:24:51', null, null);
INSERT INTO `shop_area` VALUES ('4670', '340201003', '金塔路', '340201', null, '2015-12-21 09:24:51', null, null);
INSERT INTO `shop_area` VALUES ('4671', '340201004', '南大街', '340201', null, '2015-12-21 09:24:51', null, null);
INSERT INTO `shop_area` VALUES ('4672', '340201005', '铁山路', '340201', null, '2015-12-21 09:24:51', null, null);
INSERT INTO `shop_area` VALUES ('4673', '340201006', '新力大道', '340201', null, '2015-12-21 09:24:52', null, null);
INSERT INTO `shop_area` VALUES ('4674', '340201007', '西大街', '340201', null, '2015-12-21 09:24:52', null, null);
INSERT INTO `shop_area` VALUES ('4675', '340201008', '其他', '340201', null, '2015-12-21 09:24:52', null, null);
INSERT INTO `shop_area` VALUES ('4676', '620983', '瓜州', '620900', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4677', '640181007', '城镇', '640181', null, '2015-12-21 10:48:08', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4678', '640181002', '崇兴', '640181', null, '2015-12-21 10:48:08', null, null);
INSERT INTO `shop_area` VALUES ('4679', '640181003', '磁窑堡', '640181', null, '2015-12-21 10:48:08', null, null);
INSERT INTO `shop_area` VALUES ('4680', '640181004', '马家滩', '640181', null, '2015-12-21 10:48:08', null, null);
INSERT INTO `shop_area` VALUES ('4681', '640181005', '新华桥', '640181', null, '2015-12-21 10:48:08', null, null);
INSERT INTO `shop_area` VALUES ('4682', '640181006', '其他', '640181', null, '2015-12-21 10:48:08', null, null);
INSERT INTO `shop_area` VALUES ('4683', '640122006', '洪广', '640122', null, '2015-12-21 10:48:08', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4684', '640122007', '金贵', '640122', null, '2015-12-21 10:48:08', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4685', '640122003', '立岗', '640122', null, '2015-12-21 10:48:08', null, null);
INSERT INTO `shop_area` VALUES ('4686', '640122004', '习岗', '640122', null, '2015-12-21 10:48:09', null, null);
INSERT INTO `shop_area` VALUES ('4687', '640122005', '其他', '640122', null, '2015-12-21 10:48:09', null, null);
INSERT INTO `shop_area` VALUES ('4688', '640121004', '李俊', '640121', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4689', '640121005', '杨和', '640121', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4690', '640121003', '其他', '640121', null, '2015-12-21 10:48:09', null, null);
INSERT INTO `shop_area` VALUES ('4691', '640106010', '铁东', '640106', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4692', '640106011', '新城东街', '640106', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4693', '640106012', '其他', '640106', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4694', '640105007', '北京西路', '640105', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4695', '640105008', '宁华路', '640105', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4696', '640105009', '朔方路', '640105', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4697', '640105010', '文昌路', '640105', null, '2015-12-21 10:48:09', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4698', '640105005', '西花园路', '640105', null, '2015-12-21 10:48:09', null, null);
INSERT INTO `shop_area` VALUES ('4699', '640105006', '其他', '640105', null, '2015-12-21 10:48:09', null, null);
INSERT INTO `shop_area` VALUES ('4700', '640104011', '富宁街', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4701', '640104012', '解放西街', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4702', '640104013', '前进街', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4703', '640104014', '胜利街', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4704', '640104015', '文化街', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4705', '640104016', '新华街', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4706', '640104017', '玉皇阁北街', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4707', '640104018', '中山南街', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4708', '640104019', '其他', '640104', null, '2015-12-21 10:48:10', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4709', '8500100', '博湖', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4710', '8500101', '和静', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4711', '8500102', '和硕', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4712', '8500103', '轮台', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4713', '8500104', '且末', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4714', '8500105', '若羌', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4715', '8500106', '尉犁', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4716', '8500107', '焉耆', '800001', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4717', '6501102001', '东华南路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4718', '6501102002', '府前路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4719', '6501102003', '广兴街', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4720', '6501102004', '碱沟西路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4721', '6501102005', '开源路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4722', '6501102006', '米东南路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4723', '6501102007', '米东中路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4724', '6501102008', '米东北路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4725', '6501102009', '七道湾北路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4726', '6501102010', '永顺街', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4727', '65011020011', '振兴路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4728', '65011020012', '振兴中路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4729', '65011020013', '振兴北路', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4730', '65011020014', '其他', '6501102', null, '2015-12-21 12:12:36', null, null);
INSERT INTO `shop_area` VALUES ('4731', '6501101001', '其他', '6501101', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4732', '650121001', '安宁渠', '650121', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4733', '650121002', '水西沟', '650121', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4734', '650121003', '其他', '650121', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4735', '650108001', '地磅', '650108', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4736', '650108002', '卡子湾', '650108', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4737', '650108003', '石化', '650108', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4738', '650108004', '其他', '650108', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4739', '650107001', '其他', '650107', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4740', '650106001', '屯坪北路', '650106', null, '2015-12-21 12:12:37', null, null);
INSERT INTO `shop_area` VALUES ('4741', '650106002', '屯坪南路', '650106', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4742', '650106005', '其他', '650106', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4743', '650105001', '红光山', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4744', '650105002', '会展中心', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4745', '650105003', '红山路华东南路', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4746', '650105004', '昆仑路', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4747', '650105005', '七纺商业圈', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4748', '650105006', '水磨沟', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4749', '650105008', '苏州东路沿段', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4750', '650105009', '时代广场', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4751', '650105010', '五星北路', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4752', '6501050011', '其他', '650105', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4753', '650104001', '二宫', '650104', null, '2015-12-21 12:12:38', null, null);
INSERT INTO `shop_area` VALUES ('4754', '650104002', '河北路', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4755', '650104003', '石油新村', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4756', '650104004', '苏州西街', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4757', '650104005', '苏州东街', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4758', '650104006', '卫星路', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4759', '650104007', '西八家户路', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4760', '650104008', '迎宾路', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4761', '650104009', '友朋街', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4762', '650104010', '中亚路', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4763', '6501040011', '植物园', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4764', '6501040012', '蜘蛛山', '650104', null, '2015-12-21 12:12:39', null, null);
INSERT INTO `shop_area` VALUES ('4765', '6501040013', '其他', '650104', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4766', '650103001', '八一', '650103', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4767', '650103002', '九家湾', '650103', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4768', '650103003', '平顶山', '650103', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4769', '650103004', '奇台路', '650103', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4770', '650103005', '骑马山路', '650103', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4771', '650103006', '新北园春', '650103', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4772', '650103007', '雅山北路', '650103', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4773', '650103008', '其他', '650103', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4774', '650102001', '翠泉街', '650102', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4775', '650102002', '东门', '650102', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4776', '650102003', '大湾南路', '650102', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4777', '650102004', '大湾北路', '650102', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4778', '650102005', '东泉路', '650102', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4779', '650102006', '和平路', '650102', null, '2015-12-21 12:12:40', null, null);
INSERT INTO `shop_area` VALUES ('4780', '650102007', '金银路', '650102', null, '2015-12-21 12:12:41', null, null);
INSERT INTO `shop_area` VALUES ('4781', '650102008', '龙泉街', '650102', null, '2015-12-21 12:12:41', null, null);
INSERT INTO `shop_area` VALUES ('4782', '650102009', '前进街', '650102', null, '2015-12-21 12:12:41', null, null);
INSERT INTO `shop_area` VALUES ('4783', '650102010', '赛马场', '650102', null, '2015-12-21 12:12:41', null, null);
INSERT INTO `shop_area` VALUES ('4784', '6501020011', '体育馆路', '650102', null, '2015-12-21 12:12:41', null, null);
INSERT INTO `shop_area` VALUES ('4785', '6501020012', '其他', '650102', null, '2015-12-21 12:12:41', null, null);
INSERT INTO `shop_area` VALUES ('4786', '4103050014', '其他', '410305', null, '2015-12-21 12:24:20', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4787', '4103030013', '其他', '410303', null, '2015-12-21 12:24:20', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4788', '530130', '宜良', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4789', '530131', '石林', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4790', '530132', '晋宁', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4791', '530133', '东川', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4792', '530134', '富民', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4793', '530135', '嵩明', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4794', '530136', '寻甸', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4795', '530137', '禄劝', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4796', '530135001', '嵩阳', '530135', null, '2015-12-21 15:10:31', null, null);
INSERT INTO `shop_area` VALUES ('4797', '530135002', '小街', '530135', null, '2015-12-21 15:10:31', null, null);
INSERT INTO `shop_area` VALUES ('4798', '530135003', '杨林', '530135', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4799', '530135004', '其他', '530135', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4800', '530134001', '大营', '530134', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4801', '530134002', '永定', '530134', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4802', '530134003', '其他', '530134', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4803', '530133001', '碧谷', '530133', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4804', '530133002', '汤丹', '530133', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4805', '530133003', '新村', '530133', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4806', '530133004', '因民', '530133', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4807', '530133005', '其他', '530133', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4808', '530132001', '古城', '530132', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4809', '530132002', '晋城', '530132', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4810', '530132003', '昆阳', '530132', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4811', '530132004', '其他', '530132', null, '2015-12-21 15:10:32', null, null);
INSERT INTO `shop_area` VALUES ('4812', '530130001', '北古城', '530130', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4813', '530130002', '草甸', '530130', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4814', '530130003', '狗街', '530130', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4815', '530130004', '匡远', '530130', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4816', '530130005', '南羊', '530130', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4817', '530130006', '汤池', '530130', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4818', '530130007', '其他', '530130', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4819', '530128001', '八街', '530128', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4820', '530128002', '草铺', '530128', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4821', '530128003', '连然', '530128', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4822', '530128004', '青龙', '530128', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4823', '530128005', '太平新城', '530128', null, '2015-12-21 15:10:33', null, null);
INSERT INTO `shop_area` VALUES ('4824', '530128006', '温泉', '530128', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4825', '530128007', '其他', '530128', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4826', '530121001', '龙城', '530121', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4827', '530121002', '洛羊', '530121', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4828', '530121003', '其他', '530121', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4829', '530112001', '海口', '530112', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4830', '530112002', '前卫', '530112', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4831', '530112003', '永昌', '530112', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4832', '530112004', '其他', '530112', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4833', '530111001', '东站', '530111', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4834', '530111002', '关上', '530111', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4835', '530111003', '金马', '530111', null, '2015-12-21 15:10:34', null, null);
INSERT INTO `shop_area` VALUES ('4836', '530111004', '建工新城', '530111', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4837', '530111005', '民航路', '530111', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4838', '530111006', '其他', '530111', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4839', '530103001', '滨江俊园', '530103', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4840', '530103002', '茨坝', '530103', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4841', '530103003', '东华', '530103', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4842', '530103004', '董家湾', '530103', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4843', '530103005', '环城', '530103', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4844', '530103006', '江东花园', '530103', null, '2015-12-21 15:10:35', null, null);
INSERT INTO `shop_area` VALUES ('4845', '530103007', '金星立交桥', '530103', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4846', '530103008', '龙泉', '530103', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4847', '530103009', '拓东', '530103', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4848', '530103010', '其他', '530103', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4849', '530102001', '北市区', '530102', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4850', '530102002', '大观', '530102', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4851', '530102003', '华山', '530102', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4852', '530102004', '黑林铺', '530102', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4853', '530102005', '龙翔', '530102', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4854', '530102006', '龙泉路', '530102', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4855', '530102007', '普吉', '530102', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4856', '530102008', '其他', '530102', null, '2015-12-21 15:10:36', null, null);
INSERT INTO `shop_area` VALUES ('4857', '620123001', '城关', '620123', null, '2015-12-21 15:43:44', null, null);
INSERT INTO `shop_area` VALUES ('4858', '620123002', '高崖', '620123', null, '2015-12-21 15:43:44', null, null);
INSERT INTO `shop_area` VALUES ('4859', '620123003', '夏官营', '620123', null, '2015-12-21 15:43:44', null, null);
INSERT INTO `shop_area` VALUES ('4860', '620123004', '其他', '620123', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4861', '620122001', '石洞', '620122', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4862', '620122002', '其他', '620122', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4863', '620121001', '城关', '620121', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4864', '620121002', '河桥', '620121', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4865', '620121003', '红城', '620121', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4866', '620121004', '连城', '620121', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4867', '620121005', '武胜驿', '620121', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4868', '620121006', '中堡', '620121', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4869', '620121007', '其他', '620121', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4870', '620111001', '海石湾', '620111', null, '2015-12-21 15:43:45', null, null);
INSERT INTO `shop_area` VALUES ('4871', '620111002', '花庄', '620111', null, '2015-12-21 15:43:46', null, null);
INSERT INTO `shop_area` VALUES ('4872', '620111003', '上窑', '620111', null, '2015-12-21 15:43:46', null, null);
INSERT INTO `shop_area` VALUES ('4873', '620111004', '下窑', '620111', null, '2015-12-21 15:43:46', null, null);
INSERT INTO `shop_area` VALUES ('4874', '620111005', '其他', '620111', null, '2015-12-21 15:43:46', null, null);
INSERT INTO `shop_area` VALUES ('4875', '620105008', '安宁西路', '620105', null, '2015-12-21 15:43:46', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4876', '620105009', '安宁南路', '620105', null, '2015-12-21 15:43:46', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4877', '620105010', '安宁东路', '620105', null, '2015-12-21 15:43:46', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4878', '620105011', '安宁堡', '620105', null, '2015-12-21 15:43:46', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4879', '620105012', '沙井驿', '620105', null, '2015-12-21 15:43:46', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4880', '620105013', '其他', '620105', null, '2015-12-21 15:43:46', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4881', '620104009', '陈坪', '620104', null, '2015-12-21 15:43:46', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4882', '620104010', '临洮街', '620104', null, '2015-12-21 15:43:46', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4883', '620104011', '先锋路', '620104', null, '2015-12-21 15:43:47', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4884', '620104012', '西柳沟', '620104', null, '2015-12-21 15:43:47', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4885', '620104013', '新城', '620104', null, '2015-12-21 15:43:47', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4886', '620104006', '新和路', '620104', null, '2015-12-21 15:43:47', null, null);
INSERT INTO `shop_area` VALUES ('4887', '620104007', '新安路', '620104', null, '2015-12-21 15:43:47', null, null);
INSERT INTO `shop_area` VALUES ('4888', '620104008', '其他', '620104', null, '2015-12-21 15:43:47', null, null);
INSERT INTO `shop_area` VALUES ('4889', '620103009', '敦煌路', '620103', null, '2015-12-21 15:43:47', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4890', '620103010', '华林坪', '620103', null, '2015-12-21 15:43:47', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4891', '620103011', '建兰路', '620103', null, '2015-12-21 15:43:47', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4892', '620103012', '土门墩', '620103', null, '2015-12-21 15:43:47', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4893', '620103013', '其他', '620103', null, '2015-12-21 15:43:47', '2016-03-16 19:01:04', null);
INSERT INTO `shop_area` VALUES ('4894', '6201020022', '白银路', '620102', null, '2015-12-21 15:43:47', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4895', '6201020023', '草场街', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4896', '6201020024', '东岗西路', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4897', '6201020025', '东岗东路', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4898', '6201020026', '伏龙坪', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4899', '6201020027', '贡元巷', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4900', '6201020028', '广武门', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4901', '6201020029', '鼓楼巷', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4902', '6201020030', '皋兰路', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4903', '6201020031', '拱星墩', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('4904', '6201020032', '酒泉路', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4905', '6201020033', '靖远路', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4906', '6201020034', '临夏路', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4907', '6201020035', '铁路东村街', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4908', '6201020036', '铁路西村', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4909', '6201020037', '团结新村', '620102', null, '2015-12-21 15:43:48', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4910', '6201020038', '五泉', '620102', null, '2015-12-21 15:43:49', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('4911', '6201020018', '渭源路', '620102', null, '2015-12-21 15:43:49', null, null);
INSERT INTO `shop_area` VALUES ('4912', '6201020020', '张掖路', '620102', null, '2015-12-21 15:43:49', null, null);
INSERT INTO `shop_area` VALUES ('4913', '6201020021', '其他', '620102', null, '2015-12-21 15:43:49', null, null);
INSERT INTO `shop_area` VALUES ('4915', '410186', '新郑', '410100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4916', '410187', '荥阳', '410100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4917', '410188', '上街', '410100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4918', '410189', '巩义', '410100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4919', '410190', '新密', '410100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4920', '410191', '登封', '410100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('4921', '410188001', '济源路', '410188', null, '2015-12-21 16:49:15', null, null);
INSERT INTO `shop_area` VALUES ('4922', '410188002', '矿山', '410188', null, '2015-12-21 16:49:15', null, null);
INSERT INTO `shop_area` VALUES ('4923', '410188003', '聂寨', '410188', null, '2015-12-21 16:49:15', null, null);
INSERT INTO `shop_area` VALUES ('4924', '410188004', '新安西路', '410188', null, '2015-12-21 16:49:15', null, null);
INSERT INTO `shop_area` VALUES ('4925', '410188005', '其他', '410188', null, '2015-12-21 16:49:15', null, null);
INSERT INTO `shop_area` VALUES ('4926', '410184001', '北林路', '410184', null, '2015-12-21 16:49:15', null, null);
INSERT INTO `shop_area` VALUES ('4927', '410184002', '北环', '410184', null, '2015-12-21 16:49:15', null, null);
INSERT INTO `shop_area` VALUES ('4928', '410184003', '北站', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4929', '410184004', '杜岭', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4930', '410184005', '大铺', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4931', '410184006', '东风路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4932', '410184007', '东明路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4933', '410184008', '东三街', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4934', '410184009', '丰产路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4935', '410184010', '国基路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4936', '4101840011', '花园路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4937', '4101840012', '海滩街', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4938', '4101840013', '黄河路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4939', '4101840014', '经八路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4940', '4101840015', '金水路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4941', '4101840016', '经三路', '410184', null, '2015-12-21 16:49:16', null, null);
INSERT INTO `shop_area` VALUES ('4942', '4101840017', '经五路', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4943', '4101840018', '孟寨', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4944', '4101840019', '南阳新村', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4945', '4101840020', '农业路', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4946', '4101840021', '人民路', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4947', '4101840022', '沙门', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4948', '4101840023', '文化路', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4949', '4101840024', '未来路', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4950', '4101840025', '卫生路', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4951', '4101840026', '新柳路', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4952', '4101840027', '徐寨', '410184', null, '2015-12-21 16:49:17', null, null);
INSERT INTO `shop_area` VALUES ('4953', '4101840028', '鑫苑路', '410184', null, '2015-12-21 16:49:18', null, null);
INSERT INTO `shop_area` VALUES ('4954', '4101840029', '姚寨', '410184', null, '2015-12-21 16:49:18', null, null);
INSERT INTO `shop_area` VALUES ('4955', '4101840030', '中方园', '410184', null, '2015-12-21 16:49:18', null, null);
INSERT INTO `shop_area` VALUES ('4956', '4101840031', '其他', '410184', null, '2015-12-21 16:49:18', null, null);
INSERT INTO `shop_area` VALUES ('4957', '410108001', '长兴路', '410108', null, '2015-12-21 16:49:18', null, null);
INSERT INTO `shop_area` VALUES ('4958', '410108002', '大河路', '410108', null, '2015-12-21 16:49:18', null, null);
INSERT INTO `shop_area` VALUES ('4959', '410108003', '江山路', '410108', null, '2015-12-21 16:49:18', null, null);
INSERT INTO `shop_area` VALUES ('4960', '410108004', '开元路', '410108', null, '2015-12-21 16:49:18', null, null);
INSERT INTO `shop_area` VALUES ('4961', '410108005', '老鸦陈', '410108', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4962', '410108006', '天河路', '410108', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4963', '410108007', '新城', '410108', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4964', '410108008', '迎宾路', '410108', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4965', '410108009', '岳寨', '410108', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4966', '410108010', '英才街', '410108', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4967', '4101080011', '其他', '410108', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4968', '410106001', '东风东路', '410106', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4969', '410106002', '黄河东路', '410106', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4970', '410106003', '金水东路', '410106', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4971', '410106004', '绿地老街', '410106', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4972', '410106005', '农业东路', '410106', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4973', '410106006', '七里河', '410106', null, '2015-12-21 16:49:19', null, null);
INSERT INTO `shop_area` VALUES ('4974', '410106007', '商务内环', '410106', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4975', '410106008', '其他', '410106', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4976', '410104001', '北下街', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4977', '410104002', '城东路', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4978', '410104003', '东开发区', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4979', '410104004', '东大街', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4980', '410104005', '东明路南段', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4981', '410104006', '东太康路', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4982', '410104007', '东站片', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4983', '410104008', '管城区委', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4984', '410104009', '花园路', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4985', '410104010', '航海东路', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4986', '4101040011', '经八路', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4987', '4101040012', '陇海马路', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4988', '4101040013', '陇海东路', '410104', null, '2015-12-21 16:49:20', null, null);
INSERT INTO `shop_area` VALUES ('4989', '4101040014', '南关', '410104', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4990', '4101040015', '商城路', '410104', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4991', '4101040016', '西大街', '410104', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4992', '4101040017', '郑汴路', '410104', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4993', '4101040018', '紫荆山路', '410104', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4994', '4101040019', '其他', '410104', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4995', '410103002', '大学路', '410103', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4996', '410103003', '德化街', '410103', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4997', '410103004', '二七广场', '410103', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4998', '410103005', '福华街', '410103', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('4999', '410103006', '淮河路', '410103', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('5000', '410103007', '解放路', '410103', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('5001', '410103008', '建中街', '410103', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('5002', '410103009', '京广路', '410103', null, '2015-12-21 16:49:21', null, null);
INSERT INTO `shop_area` VALUES ('5003', '410103010', '老代庄', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5004', '4101030011', '铭功路', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5005', '4101030012', '蜜蜂张', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5006', '4101030013', '庆丰街', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5007', '4101030014', '汝河西路', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5008', '4101030015', '冉屯路', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5009', '4101030016', '嵩山路', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5010', '4101030017', '五里堡', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5011', '4101030018', '一马路', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5012', '4101030019', '医学院', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5013', '4101030020', '其他', '410103', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5014', '410102001', '冯庄', '410102', null, '2015-12-21 16:49:22', null, null);
INSERT INTO `shop_area` VALUES ('5015', '410102002', '华山路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5016', '410102003', '淮河西路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5017', '410102004', '航海西路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5018', '410102005', '建设路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5019', '410102006', '绿东村', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5020', '410102007', '林山寨', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5021', '410102008', '陇海西路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5022', '410102009', '秦岭路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5023', '410102010', '齐礼阎', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5024', '4101020011', '汝河路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5025', '4101020012', '三官庙', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5026', '4101020013', '石佛镇', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5027', '4101020014', '柿园', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5028', '4101020015', '嵩山北路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5029', '4101020016', '桐柏路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5030', '4101020017', '文化宫路', '410102', null, '2015-12-21 16:49:23', null, null);
INSERT INTO `shop_area` VALUES ('5031', '4101020018', '燕庄', '410102', null, '2015-12-21 16:49:24', null, null);
INSERT INTO `shop_area` VALUES ('5032', '4101020019', '伊河路', '410102', null, '2015-12-21 16:49:24', null, null);
INSERT INTO `shop_area` VALUES ('5033', '4101020020', '周新庄', '410102', null, '2015-12-21 16:49:24', null, null);
INSERT INTO `shop_area` VALUES ('5034', '4101020021', '中原西路', '410102', null, '2015-12-21 16:49:24', null, null);
INSERT INTO `shop_area` VALUES ('5035', '4101020022', '其他', '410102', null, '2015-12-21 16:49:24', null, null);
INSERT INTO `shop_area` VALUES ('5036', '510182', '高新西区', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5037', '510183', '青白江', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5038', '510184', '金堂', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5039', '510185', '彭州', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5040', '510186', '新津', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5041', '510187', '崇州', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5042', '510188', '大邑', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5043', '510189', '邛崃', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5044', '510190', '蒲江', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5045', '510191', '其他', '510100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5046', '510190001', '朝阳湖', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5047', '510190002', '成佳', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5048', '510190003', '大塘', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5049', '510190004', '大兴', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5050', '510190005', '甘溪', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5051', '510190006', '鹤山', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5052', '510190007', '寿安', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5053', '510190008', '西来', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5054', '510190009', '其他', '510190', null, '2015-12-21 18:45:40', null, null);
INSERT INTO `shop_area` VALUES ('5055', '510189001', '宝林', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5056', '510189002', '固驿', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5057', '510189003', '高埂', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5058', '510189004', '高何', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5059', '510189005', '火井', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5060', '510189006', '回龙', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5061', '510189007', '夹关', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5062', '510189008', '临邛', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5063', '510189009', '临济', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5064', '510189010', '牟礼', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5065', '5101890011', '平乐', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5066', '5101890012', '前进', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5067', '5101890013', '冉义', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5068', '5101890014', '水口', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5069', '5101890015', '桑园', '510189', null, '2015-12-21 18:45:41', null, null);
INSERT INTO `shop_area` VALUES ('5070', '5101890016', '天台山', '510189', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5071', '5101890017', '卧龙', '510189', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5072', '5101890018', '羊安', '510189', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5073', '5101890019', '其他', '510189', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5074', '510188001', '安仁', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5075', '510188002', '出江', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5076', '510188003', '蔡场', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5077', '510188004', '董场', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5078', '510188005', '韩场', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5079', '510188006', '花水湾', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5080', '510188007', '晋原', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5081', '510188008', '青霞', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5082', '510188009', '三岔', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5083', '510188010', '上安', '510188', null, '2015-12-21 18:45:42', null, null);
INSERT INTO `shop_area` VALUES ('5084', '5101880011', '苏家', '510188', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5085', '5101880012', '沙渠', '510188', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5086', '5101880013', '王泗', '510188', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5087', '5101880014', '西岭', '510188', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5088', '5101880015', '斜源', '510188', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5089', '5101880016', '新场', '510188', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5090', '5101880017', '悦来', '510188', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5091', '5101880018', '其他', '510188', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5092', '510187001', '白头', '510187', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5093', '510187002', '崇阳', '510187', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5094', '510187003', '崇平', '510187', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5095', '510187004', '道明', '510187', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5096', '510187005', '大划', '510187', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5097', '510187006', '观胜', '510187', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5098', '510187007', '怀远', '510187', null, '2015-12-21 18:45:43', null, null);
INSERT INTO `shop_area` VALUES ('5099', '510187008', '街子', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5100', '510187009', '江源', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5101', '510187010', '廖家', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5102', '5101870011', '隆兴', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5103', '5101870012', '桤泉', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5104', '5101870013', '三江', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5105', '5101870014', '三郎', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5106', '5101870015', '万家', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5107', '5101870016', '王场', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5108', '5101870017', '元通', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5109', '5101870018', '羊马', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5110', '5101870019', '梓潼', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5111', '5101870020', '其他', '510187', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5112', '510186001', '安西', '510186', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5113', '510186002', '邓双', '510186', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5114', '510186003', '方兴', '510186', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5115', '510186004', '花桥', '510186', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5116', '510186005', '花源', '510186', null, '2015-12-21 18:45:44', null, null);
INSERT INTO `shop_area` VALUES ('5117', '510186006', '金华', '510186', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5118', '510186007', '普兴', '510186', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5119', '510186008', '五津', '510186', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5120', '510186009', '兴义', '510186', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5121', '510186010', '新平', '510186', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5122', '5101860011', '永商', '510186', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5123', '5101860012', '其他', '510186', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5124', '510185001', '敖平', '510185', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5125', '510185002', '白鹿', '510185', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5126', '510185003', '磁峰', '510185', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5127', '510185004', '丹景山', '510185', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5128', '510185005', '桂花', '510185', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5129', '510185006', '葛仙山', '510185', null, '2015-12-21 18:45:45', null, null);
INSERT INTO `shop_area` VALUES ('5130', '510185007', '红岩', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5131', '510185008', '九尺', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5132', '510185009', '军乐', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5133', '510185010', '隆丰', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5134', '5101850011', '丽春', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5135', '5101850012', '龙门山', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5136', '5101850013', '濛阳', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5137', '5101850014', '三界', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5138', '5101850015', '升平', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5139', '5101850016', '天彭', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5140', '5101850017', '通济', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5141', '5101850018', '新兴', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5142', '5101850019', '小鱼洞', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5143', '5101850020', '致和', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5144', '5101850021', '其他', '510185', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5145', '510184001', '白果', '510184', null, '2015-12-21 18:45:46', null, null);
INSERT INTO `shop_area` VALUES ('5146', '510184002', '福兴', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5147', '510184003', '官仓', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5148', '510184004', '广兴', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5149', '510184005', '高板', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5150', '510184006', '淮口', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5151', '510184007', '金龙', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5152', '510184008', '隆盛', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5153', '510184009', '清江', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5154', '510184010', '三星', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5155', '5101840011', '三溪', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5156', '5101840012', '土桥', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5157', '5101840013', '五凤', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5158', '5101840014', '云合', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5159', '5101840015', '又新', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5160', '5101840016', '赵镇', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5161', '5101840017', '竹篙', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5162', '5101840018', '赵家', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5163', '5101840019', '转龙', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5164', '5101840020', '其他', '510184', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5165', '510183001', '大弯', '510183', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5166', '510183002', '红阳', '510183', null, '2015-12-21 18:45:47', null, null);
INSERT INTO `shop_area` VALUES ('5167', '510183004', '红阳', '510183', null, '2015-12-21 18:45:47', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5168', '510183003', '其他', '510183', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5169', '510182001', '何家桥', '510182', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5170', '510182002', '土桥', '510182', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5171', '510182003', '中海国际', '510182', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5172', '510182004', '其他', '510182', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5173', '510181001', '安龙', '510181', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5174', '510181002', '崇义', '510181', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5175', '510181003', '翠月湖', '510181', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5176', '510181004', '大观', '510181', null, '2015-12-21 18:45:48', null, null);
INSERT INTO `shop_area` VALUES ('5177', '510181005', '灌口', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5178', '510181006', '聚源', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5179', '510181007', '龙池', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5180', '510181008', '柳街', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5181', '510181009', '蒲阳', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5182', '510181010', '石羊', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5183', '5101810011', '天马', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5184', '5101810012', '幸福', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5185', '5101810013', '胥家', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5186', '5101810014', '玉堂', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5187', '5101810015', '中兴', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5188', '5101810016', '紫坪铺', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5189', '5101810017', '其他', '510181', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5190', '510132001', '大源村', '510132', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5191', '510132002', '理想中心', '510132', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5192', '510132003', '美年广场', '510132', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5193', '510132004', '南苑', '510132', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5194', '510132005', '市一医院', '510132', null, '2015-12-21 18:45:49', null, null);
INSERT INTO `shop_area` VALUES ('5195', '510132006', '天府软件园', '510132', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5196', '510132007', '天府大道', '510132', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5197', '510132008', '肖家河', '510132', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5198', '510132009', '新北', '510132', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5199', '510132010', '紫荆', '510132', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5200', '5101320011', '其他', '510132', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5201', '510124001', '安德', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5202', '510124002', '安靖', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5203', '510124003', '德源', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5204', '510124004', '古城', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5205', '510124005', '红光花园', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5206', '510124006', '郫筒', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5207', '510124007', '三道堰', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5208', '510124008', '唐昌', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5209', '510124009', '唐元', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5210', '510124010', '团结', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5211', '5101240011', '新民场', '510124', null, '2015-12-21 18:45:50', null, null);
INSERT INTO `shop_area` VALUES ('5212', '5101240012', '友爱', '510124', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5213', '5101240013', '其他', '510124', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5214', '510122001', '白家', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5215', '510122002', '白沙', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5216', '510122003', '东升', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5217', '510122004', '大林', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5218', '510122005', '公兴', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5219', '510122006', '黄水', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5220', '510122007', '黄甲', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5221', '510122008', '合江', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5222', '510122009', '黄龙溪', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5223', '510122010', '籍田', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5224', '5101220011', '九江', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5225', '5101220012', '煎茶', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5226', '5101220013', '金桥', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5227', '5101220014', '彭镇', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5228', '5101220015', '胜利', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5229', '5101220016', '三星', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5230', '5101220017', '太平', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5231', '5101220018', '文星', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5232', '5101220019', '万安', '510122', null, '2015-12-21 18:45:51', null, null);
INSERT INTO `shop_area` VALUES ('5233', '5101220020', '新兴', '510122', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5234', '5101220021', '兴隆', '510122', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5235', '5101220022', '永兴', '510122', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5236', '5101220026', '永兴', '510122', null, '2015-12-21 18:45:52', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5237', '5101220023', '永安', '510122', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5238', '5101220024', '正兴', '510122', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5239', '5101220025', '其他', '510122', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5240', '510115001', '公平', '510115', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5241', '510115002', '和盛', '510115', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5242', '510115003', '金马', '510115', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5243', '510115004', '南熏大道', '510115', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5244', '510115005', '寿安', '510115', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5245', '510115006', '天府', '510115', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5246', '510115007', '万春', '510115', null, '2015-12-21 18:45:52', null, null);
INSERT INTO `shop_area` VALUES ('5247', '510115008', '永盛', '510115', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5248', '510115009', '永宁', '510115', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5249', '510115010', '其他', '510115', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5250', '510114001', '斑竹园', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5251', '510114002', '军屯', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5252', '510114003', '龙桥', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5253', '510114004', '马家木兰', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5254', '510114005', '清流', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5255', '510114006', '三河', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5256', '510114007', '石板滩', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5257', '510114008', '泰兴', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5258', '510114009', '新都', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5259', '510114010', '新繁', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5260', '5101140011', '新民', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5261', '5101140012', '其他', '510114', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5262', '510112001', '洪河', '510112', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5263', '510112002', '龙泉', '510112', null, '2015-12-21 18:45:53', null, null);
INSERT INTO `shop_area` VALUES ('5264', '510112003', '同安', '510112', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5265', '510112004', '其他', '510112', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5266', '510108001', '八里庄', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5267', '510108002', '二仙桥', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5268', '510108003', '龙潭', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5269', '510108004', '猛追湾', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5270', '510108005', '青龙', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5271', '510108006', '圣灯', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5272', '510108007', '双水碾', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5273', '510108008', '杉板桥', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5274', '510108009', '跳蹬河', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5275', '510108010', '五桂桥', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5276', '5101080011', '其他', '510108', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5277', '510107001', '川音', '510107', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5278', '510107002', '桂溪', '510107', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5279', '510107003', '好望角', '510107', null, '2015-12-21 18:45:54', null, null);
INSERT INTO `shop_area` VALUES ('5280', '510107004', '浆洗街', '510107', null, '2015-12-21 18:45:55', null, null);
INSERT INTO `shop_area` VALUES ('5281', '5101070014', '好望角', '510107', null, '2015-12-21 18:45:55', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5282', '510107005', '金花镇', '510107', null, '2015-12-21 18:45:55', null, null);
INSERT INTO `shop_area` VALUES ('5283', '510107006', '机投桥', '510107', null, '2015-12-21 18:45:55', null, null);
INSERT INTO `shop_area` VALUES ('5284', '5101070015', '机投桥', '510107', null, '2015-12-21 18:45:55', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5285', '510107007', '石羊', '510107', null, '2015-12-21 18:45:55', null, null);
INSERT INTO `shop_area` VALUES ('5286', '510107008', '跳伞塔', '510107', null, '2015-12-21 18:45:55', null, null);
INSERT INTO `shop_area` VALUES ('5287', '510107009', '望江路', '510107', null, '2015-12-21 18:45:55', null, null);
INSERT INTO `shop_area` VALUES ('5288', '510107010', '五大花园', '510107', null, '2015-12-21 18:45:55', null, null);
INSERT INTO `shop_area` VALUES ('5289', '5101070011', '洗面桥', '510107', null, '2015-12-21 18:45:55', null, null);
INSERT INTO `shop_area` VALUES ('5290', '5101070016', '洗面桥', '510107', null, '2015-12-21 18:45:56', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5291', '5101070012', '致民路', '510107', null, '2015-12-21 18:45:56', null, null);
INSERT INTO `shop_area` VALUES ('5292', '5101070013', '其他', '510107', null, '2015-12-21 18:45:56', null, null);
INSERT INTO `shop_area` VALUES ('5293', '5101070017', '其他', '510107', null, '2015-12-21 18:45:56', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5294', '510106001', '凤凰山', '510106', null, '2015-12-21 18:45:56', null, null);
INSERT INTO `shop_area` VALUES ('5295', '510106002', '抚琴', '510106', null, '2015-12-21 18:45:56', null, null);
INSERT INTO `shop_area` VALUES ('5296', '510106003', '黄忠', '510106', null, '2015-12-21 18:45:56', null, null);
INSERT INTO `shop_area` VALUES ('5297', '510106004', '荷花池', '510106', null, '2015-12-21 18:45:56', null, null);
INSERT INTO `shop_area` VALUES ('5298', '510106005', '火车北站', '510106', null, '2015-12-21 18:45:56', null, null);
INSERT INTO `shop_area` VALUES ('5299', '510106006', '欢乐谷', '510106', null, '2015-12-21 18:45:56', null, null);
INSERT INTO `shop_area` VALUES ('5300', '510106007', '金泉', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5301', '510106008', '交大路', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5302', '510106009', '金牛万达', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5303', '510106010', '马鞍路', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5304', '5101060018', '马鞍路', '510106', null, '2015-12-21 18:45:57', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5305', '5101060011', '人民北路', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5306', '5101060012', '沙河源', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5307', '5101060019', '沙河源', '510106', null, '2015-12-21 18:45:57', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5308', '5101060013', '沙湾', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5309', '5101060014', '天回', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5310', '5101060015', '西安路', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5311', '5101060016', '西华', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5312', '5101060017', '其他', '510106', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5313', '510105001', '百花中心站', '510105', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5314', '510105002', '白果林', '510105', null, '2015-12-21 18:45:57', null, null);
INSERT INTO `shop_area` VALUES ('5315', '5101050016', '白果林', '510105', null, '2015-12-21 18:45:58', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5316', '510105003', '草市街', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5317', '510105004', '东坡', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5318', '510105005', '光华', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5319', '510105006', '黄田坝', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5320', '510105007', '青羊小区', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5321', '510105008', '人民公园', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5322', '510105009', '苏坡', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5323', '510105010', '太升路', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5324', '5101050011', '天府广场', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5325', '5101050012', '文家浣', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5326', '5101050017', '文家浣', '510105', null, '2015-12-21 18:45:58', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5327', '5101050013', '花小区', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5328', '5101050014', '新华西路', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5329', '5101050015', '其他', '510105', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5330', '510104001', '滨江路', '510104', null, '2015-12-21 18:45:58', null, null);
INSERT INTO `shop_area` VALUES ('5331', '510104002', '成龙路', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5332', '510104003', '成仁路', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5333', '510104004', '川师', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5334', '5101040017', '川师', '510104', null, '2015-12-21 18:45:59', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5335', '510104005', '东光', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5336', '510104007', '柳江', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5337', '510104008', '牛市口', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5338', '510104009', '牛沙路', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5339', '510104010', '牛王庙', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5340', '5101040011', '书院街', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5341', '5101040012', '双桂路', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5342', '5101040013', '狮子山', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5343', '5101040014', '沙河', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5344', '5101040018', '沙河', '510104', null, '2015-12-21 18:45:59', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5345', '5101040015', '万达', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5346', '5101040016', '其他', '510104', null, '2015-12-21 18:45:59', null, null);
INSERT INTO `shop_area` VALUES ('5347', '1501050020', '巴彦', '150105', null, '2015-12-22 10:05:26', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5348', '1501050021', '大学西路', '150105', null, '2015-12-22 10:05:26', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5349', '1501050022', '大学东路', '150105', null, '2015-12-22 10:05:26', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5350', '1501050023', '金河', '150105', null, '2015-12-22 10:05:26', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5351', '1501050024', '金隅时代城', '150105', null, '2015-12-22 10:05:26', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5352', '1501050012', '人民路', '150105', null, '2015-12-22 10:05:26', null, null);
INSERT INTO `shop_area` VALUES ('5353', '1501050014', '乌兰察布路', '150105', null, '2015-12-22 10:05:26', null, null);
INSERT INTO `shop_area` VALUES ('5354', '1501050017', '榆林', '150105', null, '2015-12-22 10:05:26', null, null);
INSERT INTO `shop_area` VALUES ('5355', '1501050018', '中专路', '150105', null, '2015-12-22 10:05:27', null, null);
INSERT INTO `shop_area` VALUES ('5356', '1501050019', '其他', '150105', null, '2015-12-22 10:05:27', null, null);
INSERT INTO `shop_area` VALUES ('5357', '150104010', '长和廊', '150104', null, '2015-12-22 10:09:46', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5358', '150104011', '鄂尔多斯路', '150104', null, '2015-12-22 10:09:46', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5359', '150104012', '石羊桥东路', '150104', null, '2015-12-22 10:09:46', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5360', '150104013', '小召前街', '150104', null, '2015-12-22 10:09:46', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5361', '150104008', '兴隆巷', '150104', null, '2015-12-22 10:09:46', null, null);
INSERT INTO `shop_area` VALUES ('5362', '150104009', '其他', '150104', null, '2015-12-22 10:09:46', null, null);
INSERT INTO `shop_area` VALUES ('5363', '1501030013', '钢铁路', '150103', null, '2015-12-22 10:15:56', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5364', '1501030014', '海拉尔西路', '150103', null, '2015-12-22 10:15:56', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5365', '1501030015', '环河街', '150103', null, '2015-12-22 10:15:56', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5366', '1501030016', '通道街', '150103', null, '2015-12-22 10:15:56', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5367', '1501030017', '新华西路', '150103', null, '2015-12-22 10:15:56', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5368', '150103009', '攸攸板', '150103', null, '2015-12-22 10:15:56', null, null);
INSERT INTO `shop_area` VALUES ('5369', '1501030012', '其他', '150103', null, '2015-12-22 10:15:56', null, null);
INSERT INTO `shop_area` VALUES ('5370', '1501020020', '长乐宫', '150102', null, '2015-12-22 10:15:56', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5371', '1501020021', '东街', '150102', null, '2015-12-22 10:15:56', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5372', '1501020022', '东风路', '150102', null, '2015-12-22 10:15:57', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5373', '1501020023', '毫沁营', '150102', null, '2015-12-22 10:15:57', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5374', '1501020012', '锡林路', '150102', null, '2015-12-22 10:15:57', null, null);
INSERT INTO `shop_area` VALUES ('5375', '1501020013', '西街', '150102', null, '2015-12-22 10:15:57', null, null);
INSERT INTO `shop_area` VALUES ('5376', '1501020015', '迎新路', '150102', null, '2015-12-22 10:15:57', null, null);
INSERT INTO `shop_area` VALUES ('5377', '1501020016', '中山东路', '150102', null, '2015-12-22 10:15:57', null, null);
INSERT INTO `shop_area` VALUES ('5378', '1501020019', '其他', '150102', null, '2015-12-22 10:15:57', null, null);
INSERT INTO `shop_area` VALUES ('5379', '140110007', '金胜', '140110', null, '2015-12-22 10:34:21', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5380', '140110008', '罗城', '140110', null, '2015-12-22 10:34:21', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5381', '140110006', '其他', '140110', null, '2015-12-22 10:34:21', null, null);
INSERT INTO `shop_area` VALUES ('5382', '1401090016', '滨河西路', '140109', null, '2015-12-22 10:34:21', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5383', '1401090017', '东社', '140109', null, '2015-12-22 10:34:21', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5384', '1401090018', '和平', '140109', null, '2015-12-22 10:34:22', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5385', '1401090019', '南寒', '140109', null, '2015-12-22 10:34:22', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5386', '1401090020', '下元', '140109', null, '2015-12-22 10:34:22', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5387', '1401090014', '迎泽西大街', '140109', null, '2015-12-22 10:34:22', null, null);
INSERT INTO `shop_area` VALUES ('5388', '1401090015', '其他', '140109', null, '2015-12-22 10:34:22', null, null);
INSERT INTO `shop_area` VALUES ('5389', '140108010', '柴村', '140108', null, '2015-12-22 10:34:23', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5390', '140108011', '光社', '140108', null, '2015-12-22 10:34:23', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5391', '140108012', '南寨', '140108', null, '2015-12-22 10:34:23', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5392', '140108006', '上兰', '140108', null, '2015-12-22 10:34:23', null, null);
INSERT INTO `shop_area` VALUES ('5393', '140108009', '其他', '140108', null, '2015-12-22 10:34:23', null, null);
INSERT INTO `shop_area` VALUES ('5394', '1401070024', '坝陵桥', '140107', null, '2015-12-22 10:34:23', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5395', '1401070025', '鼓楼', '140107', null, '2015-12-22 10:34:23', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5396', '1401070026', '涧河', '140107', null, '2015-12-22 10:34:23', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5397', '1401070027', '龙潭公园', '140107', null, '2015-12-22 10:34:23', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5398', '1401070028', '三桥', '140107', null, '2015-12-22 10:34:24', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5399', '1401070015', '三墙路', '140107', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5400', '1401070016', '胜利街', '140107', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5401', '1401070020', '杨家峪', '140107', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5402', '1401070021', '职工新村', '140107', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5403', '1401070022', '中涧河', '140107', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5404', '1401070023', '其他', '140107', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5405', '1401060023', '大营盘', '140106', null, '2015-12-22 10:34:24', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5406', '1401060025', '郝庄', '140106', null, '2015-12-22 10:34:24', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5407', '140106008', '解放路', '140106', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5408', '1401060011', '庙前', '140106', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5409', '1401060019', '文庙', '140106', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5410', '1401060022', '其他', '140106', null, '2015-12-22 10:34:24', null, null);
INSERT INTO `shop_area` VALUES ('5411', '1401050026', '滨河东路', '140105', null, '2015-12-22 10:34:25', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5412', '1401050029', '长风街', '140105', null, '2015-12-22 10:34:25', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5413', '1401050030', '长治路', '140105', null, '2015-12-22 10:34:25', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5414', '1401050031', '高新区', '140105', null, '2015-12-22 10:34:25', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5415', '1401050032', '黄陵', '140105', null, '2015-12-22 10:34:25', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5416', '1401050033', '恒大绿洲', '140105', null, '2015-12-22 10:34:25', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5417', '1401050034', '建设南路', '140105', null, '2015-12-22 10:34:25', '2016-03-16 19:01:00', null);
INSERT INTO `shop_area` VALUES ('5418', '1401050035', '晋阳街', '140105', null, '2015-12-22 10:34:25', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5419', '1401050013', '龙城大街', '140105', null, '2015-12-22 10:34:25', null, null);
INSERT INTO `shop_area` VALUES ('5420', '1401050015', '平阳路', '140105', null, '2015-12-22 10:34:25', null, null);
INSERT INTO `shop_area` VALUES ('5421', '1401050017', '双塔', '140105', null, '2015-12-22 10:34:25', null, null);
INSERT INTO `shop_area` VALUES ('5422', '1401050018', '体育路', '140105', null, '2015-12-22 10:34:25', null, null);
INSERT INTO `shop_area` VALUES ('5423', '1401050019', '太榆路', '140105', null, '2015-12-22 10:34:25', null, null);
INSERT INTO `shop_area` VALUES ('5424', '1401050021', '王村南街', '140105', null, '2015-12-22 10:34:26', null, null);
INSERT INTO `shop_area` VALUES ('5425', '1401050025', '其他', '140105', null, '2015-12-22 10:34:26', null, null);
INSERT INTO `shop_area` VALUES ('5426', '3401040037', '黄岳路', '340104', null, '2015-12-22 11:16:51', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5427', '3401040038', '口怀宁路', '340104', null, '2015-12-22 11:16:52', '2016-03-16 19:01:05', null);
INSERT INTO `shop_area` VALUES ('5428', '530138', '丽江', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5429', '530139', '大理', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5430', '530140', '未来新城', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5431', '530141', '西双版纳', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5432', '530142', '楚雄', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5433', '530143', '红河', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5434', '530144', '腾冲', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5435', '530145', '玉溪', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5436', '530146', '曲靖', '530100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5437', '6501103', '高新开发区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5438', '6501104', '经济开发区', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5439', '6501105', '昌吉市', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5440', '6501106', '五家渠市', '650100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5441', '3401090017', '翡翠湖', '340109', null, '2015-12-22 17:27:45', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5442', '3401090018', '莲花路', '340109', null, '2015-12-22 17:27:45', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5443', '340108009', '柏堰科技园', '340108', null, '2015-12-22 17:27:45', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5444', '340108010', '长江西路', '340108', null, '2015-12-22 17:27:45', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5445', '340108011', '大蜀山', '340108', null, '2015-12-22 17:27:45', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5446', '340108012', '井岗', '340108', null, '2015-12-22 17:27:45', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5447', '340108013', '科学大道', '340108', null, '2015-12-22 17:27:45', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5448', '340108008', '香樟大道', '340108', null, '2015-12-22 17:27:45', null, null);
INSERT INTO `shop_area` VALUES ('5449', '340107005', '物流大道', '340107', null, '2015-12-22 17:27:46', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5450', '340106008', '奥体中心', '340106', null, '2015-12-22 17:27:46', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5451', '340106009', '南匡河', '340106', null, '2015-12-22 17:27:46', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5452', '340106010', '祁门路', '340106', null, '2015-12-22 17:27:46', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5453', '340106005', '市政务办公区', '340106', null, '2015-12-22 17:27:46', null, null);
INSERT INTO `shop_area` VALUES ('5454', '340106006', '天鹅湖', '340106', null, '2015-12-22 17:27:46', null, null);
INSERT INTO `shop_area` VALUES ('5455', '340106007', '新八中', '340106', null, '2015-12-22 17:27:46', null, null);
INSERT INTO `shop_area` VALUES ('5456', '340105007', '包河大道', '340105', null, '2015-12-22 17:27:46', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5457', '340105008', '方兴大道', '340105', null, '2015-12-22 17:27:46', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5458', '340105003', '徽州大道', '340105', null, '2015-12-22 17:27:46', null, null);
INSERT INTO `shop_area` VALUES ('5459', '340105005', '西藏路', '340105', null, '2015-12-22 17:27:46', null, null);
INSERT INTO `shop_area` VALUES ('5460', '340105006', '紫云路', '340105', null, '2015-12-22 17:27:46', null, null);
INSERT INTO `shop_area` VALUES ('5461', '3401230013', '金寨南路', '340123', null, '2015-12-22 17:27:46', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5462', '3401220016', '包公大道', '340122', null, '2015-12-22 17:27:47', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5463', '3401220017', '长江东路', '340122', null, '2015-12-22 17:27:47', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5464', '3401220018', '龙泉路', '340122', null, '2015-12-22 17:27:47', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5465', '3401210012', '北城', '340121', null, '2015-12-22 17:27:47', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5466', '3401210013', '蒙城北路', '340121', null, '2015-12-22 17:27:47', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5467', '3401210014', '水家湖', '340121', null, '2015-12-22 17:27:47', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5468', '3401110021', '包河区政府', '340111', null, '2015-12-22 17:27:47', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5469', '3401110022', '包河工业园', '340111', null, '2015-12-22 17:27:47', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5470', '3401110023', '大钟楼', '340111', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5471', '3401110024', '南七', '340111', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5472', '3401110025', '南门换乘中心', '340111', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5473', '3401040031', '大铺头', '340104', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5474', '3401040032', '大蜀山', '340104', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5475', '3401040033', '黄潜望', '340104', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5476', '3401040034', '青阳北路', '340104', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5477', '3401040035', '蜀山产业园', '340104', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5478', '3401040036', '植物园', '340104', null, '2015-12-22 17:27:48', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5479', '3401030027', '北城', '340103', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5480', '3401030028', '北一环', '340103', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5481', '3401030029', '北二环', '340103', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5482', '3401030030', '市城建医院', '340103', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5483', '3401030031', '四里河', '340103', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5484', '3401030032', '杏花公园', '340103', null, '2015-12-22 17:27:49', '2016-03-16 19:01:02', null);
INSERT INTO `shop_area` VALUES ('5485', '3401020025', '大兴镇', '340102', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5486', '3401020026', '凤阳路菜场', '340102', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5487', '3401020027', '合裕路', '340102', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5488', '3401020028', '龙岗开发区', '340102', null, '2015-12-22 17:27:49', '2016-03-16 19:01:01', null);
INSERT INTO `shop_area` VALUES ('5489', '140182', '榆次', '140100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5490', '410192', '航空港区', '410100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5491', '410186001', '龙湖', '410186', null, '2015-12-23 10:06:25', null, null);
INSERT INTO `shop_area` VALUES ('5492', '410181001', '其他', '410181', null, '2015-12-23 10:06:25', null, null);
INSERT INTO `shop_area` VALUES ('5493', '410181002', '未来', '410181', null, '2015-12-23 10:06:25', null, null);
INSERT INTO `shop_area` VALUES ('5494', '410122001', '高新区', '410122', null, '2015-12-23 10:06:25', null, null);
INSERT INTO `shop_area` VALUES ('5495', '4101080012', '惠济区', '410108', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5496', '4101080013', '惠济区政府', '410108', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5497', '410106009', '龙子湖', '410106', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5498', '410106010', '郑东新区', '410106', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5499', '4101040020', '东西大街', '410104', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5501', '410103001', '二七', '410103', null, '2015-12-23 10:06:26', null, null);
INSERT INTO `shop_area` VALUES ('5502', '4101030021', '南三环', '410103', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5503', '4101030022', '嵩山南路', '410103', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5504', '4101030023', '万达广场', '410103', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5505', '4101020023', '桐柏北路', '410102', null, '2015-12-23 10:06:26', '2016-03-16 19:01:03', null);
INSERT INTO `shop_area` VALUES ('5506', '620125', '临洮县', '620100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5507', '410382', '伊滨区', '410300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5508', '410383', '高新技术开发区', '410300', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5509', '630124', '海东', '630100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5510', '630125', '经济技术开发区', '630100', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5511', '340224', '开发区', '340200', null, null, null, null);
INSERT INTO `shop_area` VALUES ('5512', '420685', '东津', '420600', null, null, null, null);

-- ----------------------------
-- Table structure for shop_attribute
-- ----------------------------
DROP TABLE IF EXISTS `shop_attribute`;
CREATE TABLE `shop_attribute` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '属性名称',
  `admin_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '后台属性标题',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '属性类型',
  `length` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '长度',
  `front_input` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前端数据类型 text radio select texteare file meida ',
  `front_lable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前台属性标题',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `is_system` smallint(1) DEFAULT '0' COMMENT '是否系统属性 1 是 0否',
  `is_hidden` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '是否显示 1 显示 0 隐藏',
  `is_required` tinyint(1) DEFAULT NULL COMMENT '是否必填',
  `is_index` tinyint(1) DEFAULT NULL COMMENT '是否索引',
  `is_fiter` tinyint(1) DEFAULT '0' COMMENT '是否是配置项  1是 0否',
  `valid_rule` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '验证规则',
  `errormsg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '错误信息和提示信息',
  `tipgs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '获得焦点提示信息',
  `default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '默认值',
  `model` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据资源模型',
  `is_visible_on_front` int(1) DEFAULT NULL COMMENT '前端页面是否可见',
  `is_html_allowed_on_front` int(1) DEFAULT NULL COMMENT '商品详情页面，是否以html 显示',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `is_system` (`is_system`),
  KEY `is_hidden` (`is_hidden`),
  KEY `is_required` (`is_required`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='EAV属性表';

-- ----------------------------
-- Records of shop_attribute
-- ----------------------------
INSERT INTO `shop_attribute` VALUES ('1', 'name', '商品名称', 'varchar', '100', 'text', '商品名称', '255', '1', '0', '1', '1', '0', '*', '请输入商品名称', '请输入商品名称', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('2', 'price', '商品价格', 'decimal', '8,2', 'text', '商品价格', '254', '1', '0', '1', '1', '0', '*', '请输入商品价格', '请输入商品价格', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('3', 'cost_price', '进货价', 'decimal', '8,2', 'text', '进货价', '2', '1', '0', '1', '1', '0', '*', '请输入供货价', '请输入供货价', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('4', 'preferential_price', '优惠价', 'decimal', '8,2', 'text', '优惠价', '2', '1', '0', '1', '1', '0', '*', '请输入商品优惠价格', '请输入商品优惠价格', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('7', 'price_begin', '优惠价开始', 'timestamp', '', 'time', '优惠价开始', '2', '1', '0', '1', '0', '0', '', '', '', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('8', 'price_end', '优惠价结束', 'timestamp', '', 'time', '优惠价开始', '2', '1', '0', '1', '0', '0', '', '', '', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('9', 'sku', '商品编码sku', 'varchar', '200', 'text', '商品编码sku', '2', '1', '0', '1', '0', '0', '', '', '', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('10', 'weight', '重量', 'text', '4', 'text', '重量', '3', '1', '0', '1', '0', '0', '', '', '', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('11', 'url_key', 'url地址', 'varchar', '200', 'text', 'url地址', '4', '1', '0', '0', '0', '0', '', 'url地址', '', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('12', 'keysword', '关键字', 'varchar', '200', 'text', '关键字', '2', '1', '0', '0', '0', '0', '', '请输入关键字', '请输入关键字', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('13', 'meta_desc', '关键字描述', 'varchar', '300', 'textarea', '关键字描述', '2', '1', '0', '0', '0', '0', '', '请输入关键字', '请输入关键字', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('14', 'base_image', '图片', 'varchar', '50', 'meida', '图片', '2', '1', '0', '0', '0', '0', '', '图片', '图片', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('15', 'small_image', '缩略图', 'varchar', '50', 'meida', '缩略图', '2', '1', '0', '0', '0', '0', '', '缩略图', '缩略图', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('16', 'thumbnail', '焦点图', 'varchar', '50', 'meida', '焦点图', '2', '1', '0', '0', '0', '0', '', '焦点图', '焦点图', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('19', 'desc', '商品描述', 'text', '8', 'textarea', '商品描述', '2', '1', '0', '0', '1', '0', '*', '请输入商品描述', '请输入商品描述', '', null, '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('21', 'status', '状态', 'int', '1', 'radio', '状态', '2', '1', '0', '1', '0', '0', '', '', '', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('22', 'tuijian', '推荐', 'int', '1', 'radio', '推荐', '1', '1', '0', '1', '0', '0', '', '', '', '', '', '1', '1', '2016-11-03 17:23:33', null, null);
INSERT INTO `shop_attribute` VALUES ('25', 'guige', '产品规格', 'varchar', '50', 'text', '产品规格', '20', '0', '1', '1', null, '0', '0', '输入50位字符', null, null, '', null, null, '2016-11-15 15:56:12', '2016-11-15 15:56:12', null);
INSERT INTO `shop_attribute` VALUES ('26', 'daxiao', '产品大小', 'varchar', '50', 'text', '产品大小', '19', '0', '1', '1', null, '0', '*', '请输入', null, null, '', null, null, '2016-11-15 15:58:01', '2016-11-15 15:58:01', null);

-- ----------------------------
-- Table structure for shop_attribute_set
-- ----------------------------
DROP TABLE IF EXISTS `shop_attribute_set`;
CREATE TABLE `shop_attribute_set` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '属性集名称',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'product' COMMENT '属性集分类 product ，order ,customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_name` (`attribute_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='属性集表';

-- ----------------------------
-- Records of shop_attribute_set
-- ----------------------------
INSERT INTO `shop_attribute_set` VALUES ('1', '洗衣机', 'product', '2016-11-15 15:35:17', '2016-11-15 15:35:17', null);

-- ----------------------------
-- Table structure for shop_attrute_type_value
-- ----------------------------
DROP TABLE IF EXISTS `shop_attrute_type_value`;
CREATE TABLE `shop_attrute_type_value` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attributeid` int(11) NOT NULL COMMENT '属性id',
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'optin value',
  `text` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'optin text',
  `images` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '选项图片',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attributeid` (`attributeid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shop_attrute_type_value
-- ----------------------------
INSERT INTO `shop_attrute_type_value` VALUES ('1', '20', '1', '分组', null, null, null);
INSERT INTO `shop_attrute_type_value` VALUES ('2', '20', '2', '查询', null, null, null);
INSERT INTO `shop_attrute_type_value` VALUES ('3', '20', '3', '分组,查询', null, null, null);
INSERT INTO `shop_attrute_type_value` VALUES ('4', '21', '1', '启用', null, null, null);
INSERT INTO `shop_attrute_type_value` VALUES ('5', '21', '0', '禁用', null, null, null);

-- ----------------------------
-- Table structure for shop_blog
-- ----------------------------
DROP TABLE IF EXISTS `shop_blog`;
CREATE TABLE `shop_blog` (
  `id` int(22) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT '新闻分类',
  `shop_id` int(11) DEFAULT NULL COMMENT '店铺id',
  `keywords` varchar(200) DEFAULT NULL COMMENT '关键字',
  `meta_desc` varchar(300) DEFAULT NULL COMMENT '描述',
  `read_num` int(11) DEFAULT NULL COMMENT '阅读次数',
  `is_comment` int(1) DEFAULT NULL COMMENT '是否评论',
  `beg_time` timestamp NULL DEFAULT NULL COMMENT '生效时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `status` (`status`),
  KEY `shop_id` (`shop_id`),
  KEY `is_comment` (`is_comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_blog
-- ----------------------------

-- ----------------------------
-- Table structure for shop_blog_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_blog_category`;
CREATE TABLE `shop_blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `meta_desc` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_blog_category
-- ----------------------------

-- ----------------------------
-- Table structure for shop_blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `shop_blog_comment`;
CREATE TABLE `shop_blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_blog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for shop_blog_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_blog_detail`;
CREATE TABLE `shop_blog_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  `desc_word` varchar(300) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_blog_detail
-- ----------------------------

-- ----------------------------
-- Table structure for shop_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_category`;
CREATE TABLE `shop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '名称',
  `url` varchar(30) NOT NULL COMMENT '目录地址',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `shop_id` int(11) NOT NULL COMMENT '门店id',
  `parent_id` int(11) NOT NULL COMMENT '上级目录id',
  `children_count` int(1) NOT NULL COMMENT '下级目录数',
  `keywords` varchar(100) DEFAULT NULL COMMENT '关键字',
  `meta_desc` varchar(300) DEFAULT NULL,
  `desc` text,
  `is_show` int(1) NOT NULL COMMENT '是否在前端显示',
  `status` int(1) NOT NULL COMMENT '状态 1 生效 0 禁用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `parent_id` (`parent_id`),
  KEY `is_show` (`is_show`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品分组表';

-- ----------------------------
-- Records of shop_category
-- ----------------------------
INSERT INTO `shop_category` VALUES ('1', '运营编辑', 'admin.appoint.list', 'fa-user', '0', '0', '0', '等我去打网球单位签订', null, null, '1', '1', '2016-10-25 16:41:11', '2016-10-26 15:09:53');
INSERT INTO `shop_category` VALUES ('2', 'php456', '456', '789', '0', '1', '0', '101112', null, null, '0', '1', '2016-10-25 16:48:36', '2016-10-25 17:34:17');
INSERT INTO `shop_category` VALUES ('3', 'jquery', 'sdsd', 'sddsd', '0', '0', '0', 'dsdsdd', null, null, '1', '1', '2016-10-26 15:08:56', '2016-10-26 15:08:56');

-- ----------------------------
-- Table structure for shop_category_product_flat
-- ----------------------------
DROP TABLE IF EXISTS `shop_category_product_flat`;
CREATE TABLE `shop_category_product_flat` (
  `category_id` int(11) DEFAULT NULL COMMENT '分组id',
  `entity_id` int(11) DEFAULT NULL COMMENT '产品id',
  KEY `category_id` (`category_id`),
  KEY `entity_id` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_category_product_flat
-- ----------------------------

-- ----------------------------
-- Table structure for shop_city
-- ----------------------------
DROP TABLE IF EXISTS `shop_city`;
CREATE TABLE `shop_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityID` varchar(6) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `parent` varchar(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8 COMMENT='三级联动市';

-- ----------------------------
-- Records of shop_city
-- ----------------------------
INSERT INTO `shop_city` VALUES ('1', '110100', '市辖区', '110000', null, null, null);
INSERT INTO `shop_city` VALUES ('2', '110200', '县', '110000', null, null, null);
INSERT INTO `shop_city` VALUES ('3', '120100', '市辖区', '120000', null, null, null);
INSERT INTO `shop_city` VALUES ('4', '120200', '县', '120000', null, null, null);
INSERT INTO `shop_city` VALUES ('5', '130100', '石家庄市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('6', '130200', '唐山市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('7', '130300', '秦皇岛市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('8', '130400', '邯郸市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('9', '130500', '邢台市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('10', '130600', '保定市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('11', '130700', '张家口市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('12', '130800', '承德市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('13', '130900', '沧州市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('14', '131000', '廊坊市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('15', '131100', '衡水市', '130000', null, null, null);
INSERT INTO `shop_city` VALUES ('16', '140100', '太原市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('17', '140200', '大同市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('18', '140300', '阳泉市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('19', '140400', '长治市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('20', '140500', '晋城市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('21', '140600', '朔州市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('22', '140700', '晋中市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('23', '140800', '运城市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('24', '140900', '忻州市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('25', '141000', '临汾市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('26', '141100', '吕梁市', '140000', null, null, null);
INSERT INTO `shop_city` VALUES ('27', '150100', '呼和浩特市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('28', '150200', '包头市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('29', '150300', '乌海市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('30', '150400', '赤峰市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('31', '150500', '通辽市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('32', '150600', '鄂尔多斯市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('33', '150700', '呼伦贝尔市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('34', '150800', '巴彦淖尔市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('35', '150900', '乌兰察布市', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('36', '152200', '兴安盟', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('37', '152500', '锡林郭勒盟', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('38', '152900', '阿拉善盟', '150000', null, null, null);
INSERT INTO `shop_city` VALUES ('39', '210100', '沈阳市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('40', '210200', '大连市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('41', '210300', '鞍山市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('42', '210400', '抚顺市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('43', '210500', '本溪市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('44', '210600', '丹东市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('45', '210700', '锦州市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('46', '210800', '营口市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('47', '210900', '阜新市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('48', '211000', '辽阳市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('49', '211100', '盘锦市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('50', '211200', '铁岭市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('51', '211300', '朝阳市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('52', '211400', '葫芦岛市', '210000', null, null, null);
INSERT INTO `shop_city` VALUES ('53', '220100', '长春市', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('54', '220200', '吉林市', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('55', '220300', '四平市', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('56', '220400', '辽源市', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('57', '220500', '通化市', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('58', '220600', '白山市', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('59', '220700', '松原市', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('60', '220800', '白城市', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('61', '222400', '延边朝鲜族自治州', '220000', null, null, null);
INSERT INTO `shop_city` VALUES ('62', '230100', '哈尔滨市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('63', '230200', '齐齐哈尔市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('64', '230300', '鸡西市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('65', '230400', '鹤岗市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('66', '230500', '双鸭山市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('67', '230600', '大庆市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('68', '230700', '伊春市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('69', '230800', '佳木斯市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('70', '230900', '七台河市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('71', '231000', '牡丹江市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('72', '231100', '黑河市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('73', '231200', '绥化市', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('74', '232700', '大兴安岭地区', '230000', null, null, null);
INSERT INTO `shop_city` VALUES ('75', '310100', '市辖区', '310000', null, null, null);
INSERT INTO `shop_city` VALUES ('76', '310200', '县', '310000', null, null, null);
INSERT INTO `shop_city` VALUES ('77', '320100', '南京市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('78', '320200', '无锡市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('79', '320300', '徐州市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('80', '320400', '常州市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('81', '320500', '苏州市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('82', '320600', '南通市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('83', '320700', '连云港市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('84', '320800', '淮安市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('85', '320900', '盐城市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('86', '321000', '扬州市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('87', '321100', '镇江市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('88', '321200', '泰州市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('89', '321300', '宿迁市', '320000', null, null, null);
INSERT INTO `shop_city` VALUES ('90', '330100', '杭州市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('91', '330200', '宁波市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('92', '330300', '温州市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('93', '330400', '嘉兴市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('94', '330500', '湖州市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('95', '330600', '绍兴市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('96', '330700', '金华市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('97', '330800', '衢州市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('98', '330900', '舟山市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('99', '331000', '台州市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('100', '331100', '丽水市', '330000', null, null, null);
INSERT INTO `shop_city` VALUES ('101', '340100', '合肥市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('102', '340200', '芜湖市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('103', '340300', '蚌埠市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('104', '340400', '淮南市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('105', '340500', '马鞍山市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('106', '340600', '淮北市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('107', '340700', '铜陵市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('108', '340800', '安庆市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('109', '341000', '黄山市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('110', '341100', '滁州市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('111', '341200', '阜阳市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('112', '341300', '宿州市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('113', '341400', '巢湖市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('114', '341500', '六安市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('115', '341600', '亳州市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('116', '341700', '池州市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('117', '341800', '宣城市', '340000', null, null, null);
INSERT INTO `shop_city` VALUES ('118', '350100', '福州市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('119', '350200', '厦门市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('120', '350300', '莆田市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('121', '350400', '三明市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('122', '350500', '泉州市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('123', '350600', '漳州市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('124', '350700', '南平市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('125', '350800', '龙岩市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('126', '350900', '宁德市', '350000', null, null, null);
INSERT INTO `shop_city` VALUES ('127', '360100', '南昌市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('128', '360200', '景德镇市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('129', '360300', '萍乡市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('130', '360400', '九江市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('131', '360500', '新余市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('132', '360600', '鹰潭市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('133', '360700', '赣州市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('134', '360800', '吉安市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('135', '360900', '宜春市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('136', '361000', '抚州市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('137', '361100', '上饶市', '360000', null, null, null);
INSERT INTO `shop_city` VALUES ('138', '370100', '济南市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('139', '370200', '青岛市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('140', '370300', '淄博市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('141', '370400', '枣庄市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('142', '370500', '东营市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('143', '370600', '烟台市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('144', '370700', '潍坊市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('145', '370800', '济宁市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('146', '370900', '泰安市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('147', '371000', '威海市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('148', '371100', '日照市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('149', '371200', '莱芜市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('150', '371300', '临沂市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('151', '371400', '德州市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('152', '371500', '聊城市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('153', '371600', '滨州市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('154', '371700', '荷泽市', '370000', null, null, null);
INSERT INTO `shop_city` VALUES ('155', '410100', '郑州市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('156', '410200', '开封市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('157', '410300', '洛阳市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('158', '410400', '平顶山市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('159', '410500', '安阳市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('160', '410600', '鹤壁市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('161', '410700', '新乡市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('162', '410800', '焦作市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('163', '410900', '濮阳市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('164', '411000', '许昌市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('165', '411100', '漯河市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('166', '411200', '三门峡市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('167', '411300', '南阳市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('168', '411400', '商丘市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('169', '411500', '信阳市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('170', '411600', '周口市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('171', '411700', '驻马店市', '410000', null, null, null);
INSERT INTO `shop_city` VALUES ('172', '420100', '武汉市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('173', '420200', '黄石市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('174', '420300', '十堰市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('175', '420500', '宜昌市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('176', '420600', '襄樊市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('177', '420700', '鄂州市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('178', '420800', '荆门市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('179', '420900', '孝感市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('180', '421000', '荆州市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('181', '421100', '黄冈市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('182', '421200', '咸宁市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('183', '421300', '随州市', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('184', '422800', '恩施土家族苗族自治州', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('185', '429000', '省直辖行政单位', '420000', null, null, null);
INSERT INTO `shop_city` VALUES ('186', '430100', '长沙市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('187', '430200', '株洲市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('188', '430300', '湘潭市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('189', '430400', '衡阳市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('190', '430500', '邵阳市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('191', '430600', '岳阳市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('192', '430700', '常德市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('193', '430800', '张家界市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('194', '430900', '益阳市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('195', '431000', '郴州市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('196', '431100', '永州市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('197', '431200', '怀化市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('198', '431300', '娄底市', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('199', '433100', '湘西土家族苗族自治州', '430000', null, null, null);
INSERT INTO `shop_city` VALUES ('200', '440100', '广州市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('201', '440200', '韶关市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('202', '440300', '深圳市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('203', '440400', '珠海市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('204', '440500', '汕头市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('205', '440600', '佛山市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('206', '440700', '江门市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('207', '440800', '湛江市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('208', '440900', '茂名市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('209', '441200', '肇庆市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('210', '441300', '惠州市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('211', '441400', '梅州市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('212', '441500', '汕尾市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('213', '441600', '河源市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('214', '441700', '阳江市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('215', '441800', '清远市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('216', '441900', '东莞市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('217', '442000', '中山市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('218', '445100', '潮州市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('219', '445200', '揭阳市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('220', '445300', '云浮市', '440000', null, null, null);
INSERT INTO `shop_city` VALUES ('221', '450100', '南宁市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('222', '450200', '柳州市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('223', '450300', '桂林市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('224', '450400', '梧州市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('225', '450500', '北海市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('226', '450600', '防城港市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('227', '450700', '钦州市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('228', '450800', '贵港市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('229', '450900', '玉林市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('230', '451000', '百色市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('231', '451100', '贺州市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('232', '451200', '河池市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('233', '451300', '来宾市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('234', '451400', '崇左市', '450000', null, null, null);
INSERT INTO `shop_city` VALUES ('235', '460100', '海口市', '460000', null, null, null);
INSERT INTO `shop_city` VALUES ('236', '460200', '三亚市', '460000', null, null, null);
INSERT INTO `shop_city` VALUES ('237', '469000', '省直辖县级行政单位', '460000', null, null, null);
INSERT INTO `shop_city` VALUES ('238', '500100', '市辖区', '500000', null, null, null);
INSERT INTO `shop_city` VALUES ('239', '500200', '县', '500000', null, null, null);
INSERT INTO `shop_city` VALUES ('240', '500300', '市', '500000', null, null, null);
INSERT INTO `shop_city` VALUES ('241', '510100', '成都市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('242', '510300', '自贡市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('243', '510400', '攀枝花市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('244', '510500', '泸州市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('245', '510600', '德阳市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('246', '510700', '绵阳市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('247', '510800', '广元市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('248', '510900', '遂宁市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('249', '511000', '内江市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('250', '511100', '乐山市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('251', '511300', '南充市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('252', '511400', '眉山市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('253', '511500', '宜宾市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('254', '511600', '广安市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('255', '511700', '达州市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('256', '511800', '雅安市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('257', '511900', '巴中市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('258', '512000', '资阳市', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('259', '513200', '阿坝藏族羌族自治州', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('260', '513300', '甘孜藏族自治州', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('261', '513400', '凉山彝族自治州', '510000', null, null, null);
INSERT INTO `shop_city` VALUES ('262', '520100', '贵阳市', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('263', '520200', '六盘水市', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('264', '520300', '遵义市', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('265', '520400', '安顺市', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('266', '522200', '铜仁地区', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('267', '522300', '黔西南布依族苗族自治州', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('268', '522400', '毕节地区', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('269', '522600', '黔东南苗族侗族自治州', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('270', '522700', '黔南布依族苗族自治州', '520000', null, null, null);
INSERT INTO `shop_city` VALUES ('271', '530100', '昆明市', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('272', '530300', '曲靖市', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('273', '530400', '玉溪市', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('274', '530500', '保山市', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('275', '530600', '昭通市', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('276', '530700', '丽江市', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('277', '530800', '思茅市', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('278', '530900', '临沧市', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('279', '532300', '楚雄彝族自治州', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('280', '532500', '红河哈尼族彝族自治州', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('281', '532600', '文山壮族苗族自治州', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('282', '532800', '西双版纳傣族自治州', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('283', '532900', '大理白族自治州', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('284', '533100', '德宏傣族景颇族自治州', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('285', '533300', '怒江傈僳族自治州', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('286', '533400', '迪庆藏族自治州', '530000', null, null, null);
INSERT INTO `shop_city` VALUES ('287', '540100', '拉萨市', '540000', null, null, null);
INSERT INTO `shop_city` VALUES ('288', '542100', '昌都地区', '540000', null, null, null);
INSERT INTO `shop_city` VALUES ('289', '542200', '山南地区', '540000', null, null, null);
INSERT INTO `shop_city` VALUES ('290', '542300', '日喀则地区', '540000', null, null, null);
INSERT INTO `shop_city` VALUES ('291', '542400', '那曲地区', '540000', null, null, null);
INSERT INTO `shop_city` VALUES ('292', '542500', '阿里地区', '540000', null, null, null);
INSERT INTO `shop_city` VALUES ('293', '542600', '林芝地区', '540000', null, null, null);
INSERT INTO `shop_city` VALUES ('294', '610100', '西安市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('295', '610200', '铜川市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('296', '610300', '宝鸡市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('297', '610400', '咸阳市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('298', '610500', '渭南市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('299', '610600', '延安市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('300', '610700', '汉中市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('301', '610800', '榆林市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('302', '610900', '安康市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('303', '611000', '商洛市', '610000', null, null, null);
INSERT INTO `shop_city` VALUES ('304', '620100', '兰州市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('305', '620200', '嘉峪关市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('306', '620300', '金昌市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('307', '620400', '白银市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('308', '620500', '天水市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('309', '620600', '武威市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('310', '620700', '张掖市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('311', '620800', '平凉市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('312', '620900', '酒泉市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('313', '621000', '庆阳市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('314', '621100', '定西市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('315', '621200', '陇南市', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('316', '622900', '临夏回族自治州', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('317', '623000', '甘南藏族自治州', '620000', null, null, null);
INSERT INTO `shop_city` VALUES ('318', '630100', '西宁市', '630000', null, null, null);
INSERT INTO `shop_city` VALUES ('319', '632100', '海东地区', '630000', null, null, null);
INSERT INTO `shop_city` VALUES ('320', '632200', '海北藏族自治州', '630000', null, null, null);
INSERT INTO `shop_city` VALUES ('321', '632300', '黄南藏族自治州', '630000', null, null, null);
INSERT INTO `shop_city` VALUES ('322', '632500', '海南藏族自治州', '630000', null, null, null);
INSERT INTO `shop_city` VALUES ('323', '632600', '果洛藏族自治州', '630000', null, null, null);
INSERT INTO `shop_city` VALUES ('324', '632700', '玉树藏族自治州', '630000', null, null, null);
INSERT INTO `shop_city` VALUES ('325', '632800', '海西蒙古族藏族自治州', '630000', null, null, null);
INSERT INTO `shop_city` VALUES ('326', '640100', '银川市', '640000', null, null, null);
INSERT INTO `shop_city` VALUES ('327', '640200', '石嘴山市', '640000', null, null, null);
INSERT INTO `shop_city` VALUES ('328', '640300', '吴忠市', '640000', null, null, null);
INSERT INTO `shop_city` VALUES ('329', '640400', '固原市', '640000', null, null, null);
INSERT INTO `shop_city` VALUES ('330', '640500', '中卫市', '640000', null, null, null);
INSERT INTO `shop_city` VALUES ('331', '650100', '乌鲁木齐市', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('332', '650200', '克拉玛依市', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('333', '652100', '吐鲁番地区', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('334', '652200', '哈密地区', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('335', '652300', '昌吉回族自治州', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('336', '652700', '博尔塔拉蒙古自治州', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('337', '652800', '巴音郭楞蒙古自治州', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('338', '652900', '阿克苏地区', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('339', '653000', '克孜勒苏柯尔克孜自治州', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('340', '653100', '喀什地区', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('341', '653200', '和田地区', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('342', '654000', '伊犁哈萨克自治州', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('343', '654200', '塔城地区', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('344', '654300', '阿勒泰地区', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('346', '800001', '库尔勒', '650000', null, null, null);
INSERT INTO `shop_city` VALUES ('347', '659000', '石河子', '650000', null, null, null);

-- ----------------------------
-- Table structure for shop_cms_block
-- ----------------------------
DROP TABLE IF EXISTS `shop_cms_block`;
CREATE TABLE `shop_cms_block` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL,
  `content` mediumtext,
  `is_active` smallint(6) NOT NULL DEFAULT '1',
  `shop_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

-- ----------------------------
-- Records of shop_cms_block
-- ----------------------------

-- ----------------------------
-- Table structure for shop_cms_page
-- ----------------------------
DROP TABLE IF EXISTS `shop_cms_page`;
CREATE TABLE `shop_cms_page` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `type` int(1) DEFAULT NULL COMMENT '类型 1显示 0 不显示',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `shop_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Website Root',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

-- ----------------------------
-- Records of shop_cms_page
-- ----------------------------

-- ----------------------------
-- Table structure for shop_config_core
-- ----------------------------
DROP TABLE IF EXISTS `shop_config_core`;
CREATE TABLE `shop_config_core` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `value` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of shop_config_core
-- ----------------------------
INSERT INTO `shop_config_core` VALUES ('1', '0', 'templete', '网站选择的模板', 'green');
INSERT INTO `shop_config_core` VALUES ('2', '0', 'pay_zhifubao_account', '支付宝账号', '');
INSERT INTO `shop_config_core` VALUES ('3', '0', 'pay_zhifubao_password', '支付宝密码(密文)', '');
INSERT INTO `shop_config_core` VALUES ('4', '0', 'pay_zhifubao_keys', '支付宝key', '');
INSERT INTO `shop_config_core` VALUES ('5', '0', 'pay_zhifubao_shangjiaid', '支付宝商家id', '');

-- ----------------------------
-- Table structure for shop_config_payment
-- ----------------------------
DROP TABLE IF EXISTS `shop_config_payment`;
CREATE TABLE `shop_config_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `remark` varchar(150) DEFAULT NULL,
  `value` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `shop_id` (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='支付设置表';

-- ----------------------------
-- Records of shop_config_payment
-- ----------------------------
INSERT INTO `shop_config_payment` VALUES ('1', '0', 'pay_qixian', '付款期限', '10');
INSERT INTO `shop_config_payment` VALUES ('2', '0', 'shipping_shouhuo_time', '收货期限', '7');
INSERT INTO `shop_config_payment` VALUES ('3', '0', 'shenqing_shouhuo', '申请售后期限', '15');
INSERT INTO `shop_config_payment` VALUES ('4', '0', 'shenqing_tuikuan_queren', '申请退款卖家确认期限', '2');
INSERT INTO `shop_config_payment` VALUES ('5', '0', 'shenqing_tuikuan_fahuo', '退款退货买家发货期限', '5');
INSERT INTO `shop_config_payment` VALUES ('6', '0', 'shenqing_tuikuan_querenshouhuo', '退款退货卖家确认收货期限', '3');
INSERT INTO `shop_config_payment` VALUES ('7', '0', '', null, '');

-- ----------------------------
-- Table structure for shop_config_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_config_product`;
CREATE TABLE `shop_config_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`),
  KEY `name` (`remark`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_config_product
-- ----------------------------
INSERT INTO `shop_config_product` VALUES ('1', null, 'is_pro_check', '商品上架是否检查完整性', '1');
INSERT INTO `shop_config_product` VALUES ('2', null, 'pro_fuhao', '商品价格显示符号', '￥');
INSERT INTO `shop_config_product` VALUES ('3', null, 'pro_price_show', '商品价格显示方式', '保留小数点两位');
INSERT INTO `shop_config_product` VALUES ('4', null, 'pro_price_jisuan', '商品价格计算', '保留2位数字');
INSERT INTO `shop_config_product` VALUES ('5', null, 'pro_list', '列表页面显示条数', '20');
INSERT INTO `shop_config_product` VALUES ('6', null, 'pro_sort_type', '默认排序(1 按综合排序 2 按销量 3 上架时间)', '2');
INSERT INTO `shop_config_product` VALUES ('7', null, 'pro_sort_asc', '排序方式（1升 2降序）', '2');

-- ----------------------------
-- Table structure for shop_config_shipping
-- ----------------------------
DROP TABLE IF EXISTS `shop_config_shipping`;
CREATE TABLE `shop_config_shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_config_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for shop_cron_manager
-- ----------------------------
DROP TABLE IF EXISTS `shop_cron_manager`;
CREATE TABLE `shop_cron_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_cron_manager
-- ----------------------------

-- ----------------------------
-- Table structure for shop_email_templete
-- ----------------------------
DROP TABLE IF EXISTS `shop_email_templete`;
CREATE TABLE `shop_email_templete` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `title` varchar(150) NOT NULL COMMENT 'Template Name',
  `content` text NOT NULL COMMENT 'Template Content',
  `style` text COMMENT 'Templste Styles',
  `type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

-- ----------------------------
-- Records of shop_email_templete
-- ----------------------------

-- ----------------------------
-- Table structure for shop_favoutable_category
-- ----------------------------
DROP TABLE IF EXISTS `shop_favoutable_category`;
CREATE TABLE `shop_favoutable_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rule_id` (`rule_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠表-分类';

-- ----------------------------
-- Records of shop_favoutable_category
-- ----------------------------

-- ----------------------------
-- Table structure for shop_favoutable_product
-- ----------------------------
DROP TABLE IF EXISTS `shop_favoutable_product`;
CREATE TABLE `shop_favoutable_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_gift` int(1) DEFAULT NULL COMMENT '是否礼品',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rule_id` (`rule_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠规则-产品类';

-- ----------------------------
-- Records of shop_favoutable_product
-- ----------------------------

-- ----------------------------
-- Table structure for shop_favoutable_rule
-- ----------------------------
DROP TABLE IF EXISTS `shop_favoutable_rule`;
CREATE TABLE `shop_favoutable_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `desc` varchar(300) DEFAULT NULL COMMENT '优惠规则描述',
  `from_date` date NOT NULL COMMENT '优惠生效开始时间',
  `to_date` date NOT NULL COMMENT '优惠生效结束时间',
  `status` int(1) NOT NULL COMMENT '状态 1生效 0 禁止',
  `conditions_type` varchar(20) NOT NULL COMMENT '规则类型  1满减 2 优惠券 3收银台 4 礼品',
  `rule_code` varchar(30) NOT NULL COMMENT '优惠券',
  `action_type` varchar(20) NOT NULL COMMENT '使用类型 1 固定金额 2 百分比 3 买*件折扣',
  `lssue_num` int(6) NOT NULL COMMENT '发行数量',
  `use_person` int(6) DEFAULT NULL COMMENT '使用人数',
  `userd_num` int(6) DEFAULT NULL COMMENT '使用次数',
  `per_num` int(6) DEFAULT NULL COMMENT '每人/每天使用',
  `shop_id` varchar(20) NOT NULL COMMENT '门店',
  `discount_amount` decimal(12,2) DEFAULT NULL COMMENT '优惠券金额',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`),
  KEY `shop_id` (`shop_id`),
  KEY `conditions_type` (`conditions_type`),
  KEY `action_type` (`action_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠规则表';

-- ----------------------------
-- Records of shop_favoutable_rule
-- ----------------------------

-- ----------------------------
-- Table structure for shop_feedback_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_feedback_info`;
CREATE TABLE `shop_feedback_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员id',
  `name` varchar(60) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `order_id` varchar(11) DEFAULT NULL COMMENT '订单id(针对投诉，售后)',
  `title` varchar(150) DEFAULT NULL,
  `type` int(1) NOT NULL COMMENT '反馈类型5，留言；1，投诉；2 ，询问；3，售后；4，求购',
  `shop_id` int(11) NOT NULL,
  `content` varchar(500) DEFAULT NULL COMMENT '内容',
  `img` varchar(225) DEFAULT NULL COMMENT '图片，多张是json',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_feedback_info
-- ----------------------------

-- ----------------------------
-- Table structure for shop_feedback_re
-- ----------------------------
DROP TABLE IF EXISTS `shop_feedback_re`;
CREATE TABLE `shop_feedback_re` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback_id` int(11) NOT NULL COMMENT '反馈id',
  `user_id` int(11) NOT NULL COMMENT '回复人id',
  `re_remark` varchar(255) DEFAULT NULL COMMENT '回复内容',
  `img` varchar(60) DEFAULT NULL COMMENT '图片',
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '如果 多张图片json',
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_feedback_re
-- ----------------------------

-- ----------------------------
-- Table structure for shop_mendian_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_mendian_info`;
CREATE TABLE `shop_mendian_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(50) NOT NULL,
  `m_manager` varchar(30) NOT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `ico` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_mendian_info
-- ----------------------------

-- ----------------------------
-- Table structure for shop_news
-- ----------------------------
DROP TABLE IF EXISTS `shop_news`;
CREATE TABLE `shop_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_cate_id` int(11) DEFAULT NULL COMMENT '分类名称 - id',
  `news_title` varchar(100) DEFAULT NULL COMMENT '* 资讯标题：',
  `news_keywords` varchar(100) DEFAULT NULL COMMENT '关键字：',
  `news_desc` varchar(255) DEFAULT NULL COMMENT '关键字描述：',
  `news_timeshow` date DEFAULT NULL COMMENT '生效时间：',
  `news_abstract` text COMMENT '摘 要：',
  `news_content` text COMMENT '内 容：',
  `news_source` varchar(255) DEFAULT NULL,
  `news_url` varchar(255) DEFAULT NULL,
  `news_available` tinyint(4) DEFAULT NULL COMMENT '是否显示 2：不显示 1：显示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_news
-- ----------------------------
INSERT INTO `shop_news` VALUES ('3', '2', '中国政治中国政治中国政治中国政治', '中国政治中国政治中国政治', '中国政治中国政治中国政治中国政治中国政治', '0000-00-00', 'test中国政治中国政治中国政治', 'test中国政治中国政治', 'test', 'test', '2', null, '2016-11-21 12:36:10');
INSERT INTO `shop_news` VALUES ('4', '2', '中国政治', '秀梅', '中国政治', '0000-00-00', 'test', 'test', 'test', 'test', '2', null, '2016-11-21 12:35:37');

-- ----------------------------
-- Table structure for shop_news_cate
-- ----------------------------
DROP TABLE IF EXISTS `shop_news_cate`;
CREATE TABLE `shop_news_cate` (
  `news_cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_cate_name` varchar(50) DEFAULT NULL,
  `news_cate_pid` int(11) DEFAULT NULL,
  `news_cate_deepth` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`news_cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_news_cate
-- ----------------------------
INSERT INTO `shop_news_cate` VALUES ('1', '政治', '0', '0', null, null);
INSERT INTO `shop_news_cate` VALUES ('2', '经济', '0', '0', null, null);
INSERT INTO `shop_news_cate` VALUES ('3', '中国政治', '1', '1', null, null);
INSERT INTO `shop_news_cate` VALUES ('4', '秀梅', '0', '0', '2016-11-20 11:32:59', '2016-11-20 11:32:59');

-- ----------------------------
-- Table structure for shop_order_action
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_action`;
CREATE TABLE `shop_order_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_status` tinyint(1) NOT NULL COMMENT '订单状态 1待付款; 2已取消; 3无效; 4待发货 5待收货  6部分完成 7完成  8退款退货',
  `shipping_status` tinyint(1) DEFAULT NULL COMMENT '发货状态; 0未发货; 1已发货  2已取消  3备货中 4 部分发货',
  `pay_status` tinyint(1) DEFAULT NULL COMMENT '支付状态 0未付款;  1已付款中;  2已付款',
  `option_id` int(11) NOT NULL COMMENT '操作人id',
  `option_name` varchar(50) NOT NULL COMMENT '操作人',
  `remark` varchar(800) NOT NULL COMMENT '内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_action
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_back
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_back`;
CREATE TABLE `shop_order_back` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_sn` varchar(50) DEFAULT NULL COMMENT '订单sn',
  `order_item_id` int(11) NOT NULL COMMENT '订单商品表id',
  `type` tinyint(1) NOT NULL COMMENT '类型1 退款2 退货退款',
  `p_entity_id` int(11) NOT NULL COMMENT '商品id',
  `p_sku` varchar(30) NOT NULL COMMENT '商品sku',
  `p_suppliers_id` int(11) NOT NULL COMMENT '商品的供应商',
  `p_mendian_id` int(11) DEFAULT NULL COMMENT '商品门店',
  `is_delivery` int(1) DEFAULT NULL COMMENT '是否收货',
  `invoice_no` varchar(40) DEFAULT NULL COMMENT '客户发货运单号',
  `invoice_name` varchar(50) DEFAULT NULL COMMENT '客户发货快递公司名称',
  `shipping_id` int(11) NOT NULL COMMENT '客户收货id 从订单处获取',
  `shipping_name` varchar(30) NOT NULL COMMENT '收货人名称 从订单处获取',
  `shipping_status` tinyint(1) NOT NULL COMMENT '收货状态 从订单处获取',
  `user_id` int(11) NOT NULL COMMENT '客户id',
  `user_phone` varchar(30) DEFAULT NULL COMMENT '客户电话',
  `country` int(10) DEFAULT NULL COMMENT '国家',
  `province` int(10) DEFAULT NULL COMMENT '省',
  `city` int(10) DEFAULT NULL COMMENT '城市',
  `address` varchar(120) DEFAULT NULL COMMENT '地址',
  `zipcode` varchar(30) DEFAULT NULL COMMENT '邮编',
  `shipping_fee` decimal(8,2) DEFAULT NULL COMMENT '客户发货运费',
  `status` tinyint(1) NOT NULL COMMENT '状态 1 未确认 2 确认 3 未发货 4 运输中 5 已收货 6 退款',
  `content` text COMMENT '客户退款退货原因',
  `image` varchar(300) DEFAULT NULL COMMENT '图片(json)',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `type` (`type`),
  KEY `invoice_no` (`invoice_no`),
  KEY `user_id` (`user_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='订单退款退货表';

-- ----------------------------
-- Records of shop_order_back
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_favoutable
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_favoutable`;
CREATE TABLE `shop_order_favoutable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `pmt_id` int(11) NOT NULL COMMENT '优惠规则id',
  `pmt_nanme` varchar(50) NOT NULL COMMENT '优惠规则名称',
  `amount` decimal(8,2) DEFAULT NULL COMMENT '优惠的金额',
  `status` varchar(20) DEFAULT NULL COMMENT '规则使用状态 未使用 已使用',
  `use_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_favoutable
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_info`;
CREATE TABLE `shop_order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(50) NOT NULL COMMENT '订单编号',
  `user_id` int(11) NOT NULL COMMENT '会员id',
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `form` tinyint(1) DEFAULT NULL COMMENT '订单来源 1pc 2wap',
  `status` int(1) NOT NULL COMMENT '订单状态 1待付款; 2已取消; 3无效; 4待发货 5待收货 6部分完成 7完成 8退款退货 9退款完成',
  `pay_status` int(1) NOT NULL COMMENT '支付状态 1未付款 2 付款中  3 已付款',
  `payment_id` int(11) DEFAULT NULL COMMENT '支付单号',
  `payment` varchar(30) DEFAULT NULL COMMENT '支付方式 1 支付宝 2 微信支付',
  `itemnum` int(2) DEFAULT NULL COMMENT '商品数量',
  `ship_name` varchar(50) DEFAULT NULL COMMENT '收货人姓名',
  `ship_addr` varchar(100) DEFAULT NULL COMMENT '收货人地址',
  `ship_post` int(10) DEFAULT NULL COMMENT '邮编',
  `ship_phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `ship_time` varchar(100) DEFAULT NULL COMMENT '配送时间',
  `cost_item` decimal(8,2) DEFAULT NULL COMMENT '商品价格',
  `cost_freight` decimal(8,2) DEFAULT NULL COMMENT '优惠价格',
  `total_amount` decimal(8,2) DEFAULT NULL COMMENT '总价',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_info
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_item
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_item`;
CREATE TABLE `shop_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form` varchar(20) DEFAULT NULL COMMENT '订单来源 pc,wap',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `product_name` varchar(30) DEFAULT NULL COMMENT '商品名称',
  `product_status` int(1) DEFAULT NULL COMMENT '商品状态 1 正常 2 下架 3 删除',
  `sku` varchar(20) DEFAULT NULL COMMENT '商品编码',
  `price` decimal(8,2) DEFAULT NULL COMMENT '价格',
  `wegith` int(10) DEFAULT NULL COMMENT '重量',
  `num` int(2) DEFAULT NULL COMMENT '购买商品数量',
  `guige` varchar(255) DEFAULT NULL COMMENT '属性的json',
  `shipping_name` varchar(60) DEFAULT NULL COMMENT '快递公司',
  `shipping_id` varchar(80) DEFAULT NULL COMMENT '运单号',
  `shipping_status` varchar(11) DEFAULT NULL COMMENT '运输状态 1 未发货 2运输中 3 已收货',
  `support_cod` tinyint(1) DEFAULT NULL COMMENT '是否支持货到付款 1 支持 0 不支持',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_payment
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_payment`;
CREATE TABLE `shop_order_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `payment_account` varchar(50) DEFAULT NULL COMMENT '支付账号',
  `payment_method` varchar(30) NOT NULL COMMENT '支付方式 1 支付宝 2 微信',
  `payment_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `cc_id` varchar(100) NOT NULL COMMENT '返回id',
  `cc_total_fee` decimal(8,2) DEFAULT NULL COMMENT '返回支付金额',
  `cc_trade_no` varchar(50) DEFAULT NULL COMMENT '返回订单id',
  `cc_status` varchar(40) DEFAULT NULL COMMENT '返回支付状态',
  `cc_time` timestamp NULL DEFAULT NULL COMMENT '返回时间',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_payment
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_payment_log
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_payment_log`;
CREATE TABLE `shop_order_payment_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT 'order_id',
  `payment_recive` text COMMENT '支付接收的数据',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_payment_log
-- ----------------------------

-- ----------------------------
-- Table structure for shop_order_refundreason_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_refundreason_type`;
CREATE TABLE `shop_order_refundreason_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT '1' COMMENT '退款分类 1 退款 2 退货',
  `value` varchar(100) DEFAULT NULL COMMENT '原因分类值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_refundreason_type
-- ----------------------------
INSERT INTO `shop_order_refundreason_type` VALUES ('1', '1', '承诺没做到');
INSERT INTO `shop_order_refundreason_type` VALUES ('2', '1', '未按照约定时间发货');
INSERT INTO `shop_order_refundreason_type` VALUES ('3', '1', '未按成交价格交易');
INSERT INTO `shop_order_refundreason_type` VALUES ('4', '1', '未按成交价格交易');
INSERT INTO `shop_order_refundreason_type` VALUES ('5', '1', '拒绝提供售后服务');
INSERT INTO `shop_order_refundreason_type` VALUES ('6', '1', '空包裹');
INSERT INTO `shop_order_refundreason_type` VALUES ('7', '2', '退运费');
INSERT INTO `shop_order_refundreason_type` VALUES ('8', '2', '商品质量');
INSERT INTO `shop_order_refundreason_type` VALUES ('9', '2', '做工瑕疵');
INSERT INTO `shop_order_refundreason_type` VALUES ('10', '2', '商品无法使用');
INSERT INTO `shop_order_refundreason_type` VALUES ('11', '2', '尺寸大小不符');
INSERT INTO `shop_order_refundreason_type` VALUES ('12', '2', '颜色/图案/款式不符');
INSERT INTO `shop_order_refundreason_type` VALUES ('13', '2', '颜式不符');
INSERT INTO `shop_order_refundreason_type` VALUES ('14', '2', '与描述差异太大');
INSERT INTO `shop_order_refundreason_type` VALUES ('15', '2', '少发，漏件');
INSERT INTO `shop_order_refundreason_type` VALUES ('16', '2', '颜款式不符');
INSERT INTO `shop_order_refundreason_type` VALUES ('17', '2', '假冒商品');

-- ----------------------------
-- Table structure for shop_product_brand
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_brand`;
CREATE TABLE `shop_product_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '供应商id',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '品牌名称',
  `pinyin` char(3) CHARACTER SET utf8 DEFAULT NULL COMMENT '首字母',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '品牌官网',
  `logo` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '品牌logo',
  `extension` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '推广图片',
  `status` tinyint(1) DEFAULT NULL COMMENT '品牌状态 1 启用  0禁用',
  `content` text CHARACTER SET utf8 COMMENT '品牌描述',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `recommend` tinyint(1) DEFAULT '0' COMMENT '0 不推荐 1推荐',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shop_product_brand
-- ----------------------------
INSERT INTO `shop_product_brand` VALUES ('1', '0', '的大幅度22', 'S', 'admin.appoint.list', null, null, null, null, '22', '0', '2016-10-26 17:15:07', '2016-10-27 12:16:00', null);
INSERT INTO `shop_product_brand` VALUES ('2', '0', '运营编辑33', 'w', 'admin.appoint.list', null, null, null, null, '22', '0', '2016-10-26 17:16:43', '2016-10-27 12:16:09', null);
INSERT INTO `shop_product_brand` VALUES ('3', '1', 'ddd', 'w', 'dwqd', null, null, null, null, '33', '0', '2016-10-28 10:30:13', '2016-10-28 10:30:13', null);
INSERT INTO `shop_product_brand` VALUES ('4', '1', '1231', 'A', '', null, null, null, '', '0', '0', '2016-11-03 00:57:14', '2016-11-20 20:30:28', null);
INSERT INTO `shop_product_brand` VALUES ('5', '1', '', '', '', null, null, null, null, '0', '0', '2016-11-03 00:57:21', '2016-11-20 18:46:20', '2016-11-20 18:46:20');

-- ----------------------------
-- Table structure for shop_product_eav
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_eav`;
CREATE TABLE `shop_product_eav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attbute_set_id` int(11) DEFAULT NULL COMMENT '属性集',
  `attbute_id` int(11) NOT NULL COMMENT '属性名称',
  `group` varchar(30) DEFAULT NULL COMMENT '显示分组 1标准2 价格，3seo,4图片 5 可配置 6 描述',
  `is_fiter` int(1) DEFAULT NULL COMMENT '是否可配置 1 是 0 否',
  `is_visible_on_front` int(1) DEFAULT NULL COMMENT '前端页面是否可见',
  `is_html_allowed_on_front` int(1) DEFAULT NULL COMMENT '商品详情页面，是否以html 显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shop_product_eav
-- ----------------------------
INSERT INTO `shop_product_eav` VALUES ('1', '1', '1', '1', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('2', '1', '10', '1', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('3', '1', '11', '1', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('4', '1', '21', '1', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('5', '1', '26', '1', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('6', '1', '25', '1', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('7', '1', '2', '2', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('8', '1', '3', '2', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('9', '1', '4', '2', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('10', '1', '7', '2', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('11', '1', '8', '2', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('12', '1', '12', '3', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('13', '1', '13', '3', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('14', '1', '14', '4', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('15', '1', '15', '4', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('16', '1', '16', '4', null, null, null);
INSERT INTO `shop_product_eav` VALUES ('17', '1', '19', '5', null, null, null);

-- ----------------------------
-- Table structure for shop_product_entity
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_entity`;
CREATE TABLE `shop_product_entity` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '产品类型 1 简单产品 2 可配置产品，3 虚拟产品 4 可下载产品',
  `attribute_set_id` int(11) DEFAULT NULL COMMENT '商品属性集id',
  `entity_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_entity
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_entity_decimal
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_entity_decimal`;
CREATE TABLE `shop_product_entity_decimal` (
  `id` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `attbute_id` int(11) DEFAULT NULL,
  `value` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_entity_decimal
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_entity_int
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_entity_int`;
CREATE TABLE `shop_product_entity_int` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `entity_id` int(20) NOT NULL,
  `attbute_id` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_entity_int
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_entity_stock
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_entity_stock`;
CREATE TABLE `shop_product_entity_stock` (
  `id` int(11) DEFAULT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `jingjie` int(11) DEFAULT NULL COMMENT '警戒库存',
  `stock` int(11) DEFAULT NULL COMMENT '现有库存',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_entity_stock
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_entity_supplier
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_entity_supplier`;
CREATE TABLE `shop_product_entity_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `suppier_id` int(11) NOT NULL COMMENT '供应商id',
  `supplier_name` varchar(60) NOT NULL COMMENT '供货商名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_entity_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_entity_text
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_entity_text`;
CREATE TABLE `shop_product_entity_text` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `attbute_id` int(11) NOT NULL,
  `value` text,
  `created_at` text,
  `updated_at` text,
  `deleted_at` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_entity_text
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_entity_varchar
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_entity_varchar`;
CREATE TABLE `shop_product_entity_varchar` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `entity_id` int(20) NOT NULL,
  `attbute_id` int(11) NOT NULL,
  `value` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_entity_varchar
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_flat
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_flat`;
CREATE TABLE `shop_product_flat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `attribute_set_id` int(11) DEFAULT NULL COMMENT '商品属性集id',
  `name` varchar(100) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `url_key` varchar(200) DEFAULT NULL,
  `weight` text NOT NULL,
  `cost_price` decimal(8,2) NOT NULL,
  `preferential_price` decimal(8,2) NOT NULL,
  `supplier` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `brand` int(11) DEFAULT NULL,
  `price_begin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sku` varchar(50) NOT NULL COMMENT '商品编码',
  `keysword` varchar(200) DEFAULT NULL,
  `meta_desc` varchar(300) DEFAULT NULL,
  `base_image` varchar(50) DEFAULT NULL,
  `small_image` varchar(50) DEFAULT NULL,
  `thumbnail` varchar(50) DEFAULT NULL,
  `kc_qty` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `desc` text,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `tuijian` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_flat_name_index` (`name`),
  KEY `product_flat_price_index` (`price`),
  KEY `product_flat_cost_price_index` (`cost_price`),
  KEY `product_flat_preferential_price_index` (`preferential_price`),
  KEY `product_flat_kc_qty_index` (`kc_qty`),
  KEY `product_flat_category_id_index` (`category_id`),
  KEY `product_flat_visibility_index` (`visibility`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='产品表,从eav模式中扩展，系统字段，自定义字段扩展到detail';

-- ----------------------------
-- Records of shop_product_flat
-- ----------------------------
INSERT INTO `shop_product_flat` VALUES ('1', '1479264267', null, '冰箱', '5000.00', '/bingxiang', '', '4000.00', '4500.00', '4', '2', null, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '好冰箱', '好冰箱就是好', null, null, null, '500', '3', null, '0', '1', '0');

-- ----------------------------
-- Table structure for shop_product_flat_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_flat_detail`;
CREATE TABLE `shop_product_flat_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `guige` varchar(50) NOT NULL,
  `daxiao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_flat_detail
-- ----------------------------
INSERT INTO `shop_product_flat_detail` VALUES ('1', '1479264267', '150x200', '超大');

-- ----------------------------
-- Table structure for shop_product_images
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_images`;
CREATE TABLE `shop_product_images` (
  `int` int(20) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `attbute_id` int(11) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`int`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_images
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_links
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_links`;
CREATE TABLE `shop_product_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) DEFAULT NULL,
  `link_entity_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_links
-- ----------------------------

-- ----------------------------
-- Table structure for shop_product_type
-- ----------------------------
DROP TABLE IF EXISTS `shop_product_type`;
CREATE TABLE `shop_product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updeted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_product_type
-- ----------------------------
INSERT INTO `shop_product_type` VALUES ('1', '实物商品', '2016-10-25 11:14:10', null);
INSERT INTO `shop_product_type` VALUES ('2', '虚拟商品', '2016-10-25 11:14:12', null);
INSERT INTO `shop_product_type` VALUES ('3', '可下载商品', '2016-10-25 11:14:15', null);

-- ----------------------------
-- Table structure for shop_province
-- ----------------------------
DROP TABLE IF EXISTS `shop_province`;
CREATE TABLE `shop_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinceID` varchar(6) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `provinceID` (`provinceID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='三级联动省';

-- ----------------------------
-- Records of shop_province
-- ----------------------------
INSERT INTO `shop_province` VALUES ('1', '110000', '北京市', null, null, null);
INSERT INTO `shop_province` VALUES ('2', '120000', '天津市', null, null, null);
INSERT INTO `shop_province` VALUES ('3', '130000', '河北省', null, null, null);
INSERT INTO `shop_province` VALUES ('4', '140000', '山西省', null, null, null);
INSERT INTO `shop_province` VALUES ('5', '150000', '内蒙古自治区', null, null, null);
INSERT INTO `shop_province` VALUES ('6', '210000', '辽宁省', null, null, null);
INSERT INTO `shop_province` VALUES ('7', '220000', '吉林省', null, null, null);
INSERT INTO `shop_province` VALUES ('8', '230000', '黑龙江省', null, null, null);
INSERT INTO `shop_province` VALUES ('9', '310000', '上海市', null, null, null);
INSERT INTO `shop_province` VALUES ('10', '320000', '江苏省', null, null, null);
INSERT INTO `shop_province` VALUES ('11', '330000', '浙江省', null, null, null);
INSERT INTO `shop_province` VALUES ('12', '340000', '安徽省', null, null, null);
INSERT INTO `shop_province` VALUES ('13', '350000', '福建省', null, null, null);
INSERT INTO `shop_province` VALUES ('14', '360000', '江西省', null, null, null);
INSERT INTO `shop_province` VALUES ('15', '370000', '山东省', null, null, null);
INSERT INTO `shop_province` VALUES ('16', '410000', '河南省', null, null, null);
INSERT INTO `shop_province` VALUES ('17', '420000', '湖北省', null, null, null);
INSERT INTO `shop_province` VALUES ('18', '430000', '湖南省', null, null, null);
INSERT INTO `shop_province` VALUES ('19', '440000', '广东省', null, null, null);
INSERT INTO `shop_province` VALUES ('20', '450000', '广西壮族自治区', null, null, null);
INSERT INTO `shop_province` VALUES ('21', '460000', '海南省', null, null, null);
INSERT INTO `shop_province` VALUES ('22', '500000', '重庆市', null, null, null);
INSERT INTO `shop_province` VALUES ('23', '510000', '四川省', null, null, null);
INSERT INTO `shop_province` VALUES ('24', '520000', '贵州省', null, null, null);
INSERT INTO `shop_province` VALUES ('25', '530000', '云南省', null, null, null);
INSERT INTO `shop_province` VALUES ('26', '540000', '西藏自治区', null, null, null);
INSERT INTO `shop_province` VALUES ('27', '610000', '陕西省', null, null, null);
INSERT INTO `shop_province` VALUES ('28', '620000', '甘肃省', null, null, null);
INSERT INTO `shop_province` VALUES ('29', '630000', '青海省', null, null, null);
INSERT INTO `shop_province` VALUES ('30', '640000', '宁夏回族自治区', null, null, null);
INSERT INTO `shop_province` VALUES ('31', '650000', '新疆维吾尔自治区', null, null, null);
INSERT INTO `shop_province` VALUES ('32', '710000', '台湾省', null, null, null);
INSERT INTO `shop_province` VALUES ('33', '810000', '香港特别行政区', null, null, null);
INSERT INTO `shop_province` VALUES ('34', '820000', '澳门特别行政区', null, null, null);

-- ----------------------------
-- Table structure for shop_search_record
-- ----------------------------
DROP TABLE IF EXISTS `shop_search_record`;
CREATE TABLE `shop_search_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '查询id',
  `keywords` varchar(200) NOT NULL COMMENT '查询关键字',
  `result` int(11) DEFAULT '0' COMMENT '查询结果数量',
  `query_num` int(11) DEFAULT '0' COMMENT '查询次数',
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='搜索记录表';

-- ----------------------------
-- Records of shop_search_record
-- ----------------------------

-- ----------------------------
-- Table structure for shop_send_mail
-- ----------------------------
DROP TABLE IF EXISTS `shop_send_mail`;
CREATE TABLE `shop_send_mail` (
  `id` int(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `templete_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `send_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_send_mail
-- ----------------------------

-- ----------------------------
-- Table structure for shop_shopmanage_log
-- ----------------------------
DROP TABLE IF EXISTS `shop_shopmanage_log`;
CREATE TABLE `shop_shopmanage_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL COMMENT '类型 1 用户信息修改 2 积分',
  `manager_id` int(11) NOT NULL COMMENT '管理员id',
  `context` varchar(300) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_shopmanage_log
-- ----------------------------

-- ----------------------------
-- Table structure for shop_shopmanage_priv
-- ----------------------------
DROP TABLE IF EXISTS `shop_shopmanage_priv`;
CREATE TABLE `shop_shopmanage_priv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_shopmanage_priv
-- ----------------------------

-- ----------------------------
-- Table structure for shop_shopmanage_user
-- ----------------------------
DROP TABLE IF EXISTS `shop_shopmanage_user`;
CREATE TABLE `shop_shopmanage_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(128) NOT NULL COMMENT '密码',
  `type` int(1) NOT NULL COMMENT '类型 1 管理员 2 财务 3 普通操作人',
  `points` int(11) DEFAULT NULL COMMENT '积分',
  `header` varchar(30) DEFAULT NULL COMMENT '头像',
  `sex` int(1) DEFAULT NULL COMMENT '性别1 男 0 女',
  `mail` varchar(30) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `tel` varchar(30) NOT NULL,
  `store_id` int(11) DEFAULT NULL COMMENT '站点',
  `status` int(1) DEFAULT NULL COMMENT '状态 1 启用，0禁用',
  `bumen` varchar(30) DEFAULT NULL COMMENT '部门',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_shopmanage_user
-- ----------------------------

-- ----------------------------
-- Table structure for shop_supplier_info
-- ----------------------------
DROP TABLE IF EXISTS `shop_supplier_info`;
CREATE TABLE `shop_supplier_info` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '供应商名称',
  `yingyehao` varchar(30) DEFAULT NULL COMMENT '营业号',
  `type` int(1) NOT NULL COMMENT '类型1 有限公司 2 集团公司 3 股份公司',
  `zhuce_zijin` int(11) DEFAULT NULL COMMENT '注册资金',
  `postcode` varchar(30) DEFAULT NULL COMMENT '邮编',
  `city` varchar(30) DEFAULT NULL COMMENT '公司所在城市',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `site` varchar(20) DEFAULT NULL COMMENT '公司官网',
  `status` int(1) NOT NULL COMMENT '状态 1 待审核 2 审核通过，3审核未通过',
  `bank` varchar(30) NOT NULL COMMENT '开户行',
  `bank_num` varchar(20) NOT NULL COMMENT '银行卡号',
  `faren` varchar(30) DEFAULT NULL COMMENT '法人',
  `lianxiren` varchar(30) NOT NULL COMMENT '联系人',
  `phone` varchar(12) NOT NULL COMMENT '手机',
  `tel` varchar(20) DEFAULT NULL COMMENT '固话',
  `yingye` varchar(200) DEFAULT NULL COMMENT '营业内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `site` (`site`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_supplier_info
-- ----------------------------
INSERT INTO `shop_supplier_info` VALUES ('1', '服务', '55555', '2', '50', '05020', null, '得到单位的', null, '0', '', '', '单位党委问得我', '对我的', '150940252020', '029-8345678', null, '2016-10-26 10:52:59', '2016-10-26 10:52:59', null);
INSERT INTO `shop_supplier_info` VALUES ('2', '服务', '55555', '2', '50', '05020', null, '得到单位的', null, '0', '', '', '单位党委问得我', '对我的', '150940252020', '029-8345678', null, '2016-10-26 11:12:41', '2016-10-26 11:12:41', null);

-- ----------------------------
-- Table structure for shop_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `shop_userinfo`;
CREATE TABLE `shop_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '真实姓名',
  `group_id` int(11) DEFAULT NULL COMMENT '用户组id',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `email` varchar(20) DEFAULT NULL COMMENT '邮箱',
  `office_phone` varchar(20) DEFAULT NULL COMMENT '办公室电话',
  `mobile_phone` varchar(20) DEFAULT NULL COMMENT '移动电话',
  `home_phone` varchar(20) DEFAULT NULL COMMENT '固话',
  `sex` int(1) DEFAULT NULL COMMENT '性别 1 男 0 女',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  `user_points` int(11) DEFAULT NULL COMMENT '积分数',
  `pay_points` int(11) DEFAULT NULL COMMENT '消费积分',
  `last_time` timestamp NULL DEFAULT NULL COMMENT '最后一次登陆',
  `last_ip` varchar(30) DEFAULT NULL COMMENT '最后一次登陆ip',
  `alias` varchar(30) DEFAULT NULL COMMENT '昵称',
  `qq` varchar(30) DEFAULT NULL COMMENT 'qq',
  `wechat` varchar(30) DEFAULT NULL COMMENT '微信账号',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_userinfo
-- ----------------------------
INSERT INTO `shop_userinfo` VALUES ('1', 'test', null, 'Y29tcG9zZXJSZXF1aXJlZTg3ZmJmZDhiYjMzOGQ3MTIxY2E0YjI1YWJlNDkwMWMxMTExMTE=', 'www@163.com', null, null, null, null, null, null, null, null, null, null, null, null, '2016-11-02 20:35:12', '2016-11-02 20:35:12', null);
INSERT INTO `shop_userinfo` VALUES ('2', 'leon', null, 'Y29tcG9zZXJSZXF1aXJlZTg3ZmJmZDhiYjMzOGQ3MTIxY2E0YjI1YWJlNDkwMWMxMTExMTE=', 'test@test.cn', null, null, null, null, null, null, null, null, null, null, null, null, '2016-11-02 20:45:29', '2016-11-02 20:45:29', null);
INSERT INTO `shop_userinfo` VALUES ('3', 'test1', null, 'Y29tcG9zZXJSZXF1aXJlZTg3ZmJmZDhiYjMzOGQ3MTIxY2E0YjI1YWJlNDkwMWMxMTExMTE=', 'ttt@ttt.com', '11111111', '11111111', '111', '1', null, null, null, null, null, null, '123123', '12312', '2016-11-03 01:07:32', '2016-11-03 01:07:32', null);
INSERT INTO `shop_userinfo` VALUES ('4', 'admin', null, '$2y$10$6dYG8eyz2rCWrEIRe8wmGOvRQdkjXYl/GC7BCbFo2wTYNOKVIJo.a', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for shop_userinfo_address
-- ----------------------------
DROP TABLE IF EXISTS `shop_userinfo_address`;
CREATE TABLE `shop_userinfo_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `name` varchar(50) NOT NULL COMMENT '收货人名称',
  `email` varchar(30) DEFAULT NULL COMMENT 'mail',
  `phone` varchar(12) NOT NULL COMMENT '手机',
  `tel` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '城市',
  `district` int(11) DEFAULT NULL COMMENT '区域',
  `address` varchar(100) NOT NULL COMMENT '地址',
  `zipcode` varchar(10) NOT NULL COMMENT '邮编',
  `best_time` varchar(30) DEFAULT NULL COMMENT '送货最好时间 中午 下午 全天，周日 任何时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态 1 生效 0 未生效',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_userinfo_address
-- ----------------------------

-- ----------------------------
-- Table structure for shop_userinfo_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_userinfo_cart`;
CREATE TABLE `shop_userinfo_cart` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(20) NOT NULL COMMENT '用户id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `product_sku` varchar(50) NOT NULL COMMENT '产品编码',
  `product_name` varchar(150) DEFAULT NULL COMMENT '产品名字',
  `price` decimal(8,2) NOT NULL COMMENT '价格',
  `rates_price` decimal(8,2) DEFAULT NULL COMMENT '优惠价',
  `group_id` int(11) DEFAULT NULL COMMENT '群组id',
  `group_price` decimal(8,2) DEFAULT NULL COMMENT '团购价-群组价',
  `trade_price` decimal(8,2) DEFAULT NULL COMMENT '批发价',
  `cart_num` int(2) NOT NULL COMMENT '数量',
  `is_gift` int(1) NOT NULL COMMENT '是否赠品 1 是赠品  0 不是赠品',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_userinfo_cart
-- ----------------------------

-- ----------------------------
-- Table structure for shop_userinfo_collect
-- ----------------------------
DROP TABLE IF EXISTS `shop_userinfo_collect`;
CREATE TABLE `shop_userinfo_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `entity_id` int(20) NOT NULL COMMENT '收藏id',
  `is_show` int(11) NOT NULL COMMENT '是否显示 1 显示 0 不显示',
  `share_code` varchar(100) DEFAULT NULL COMMENT '分享代码',
  `entity_name` varchar(20) DEFAULT NULL COMMENT '产品名称',
  `shop_id` int(11) NOT NULL COMMENT '站点',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`,`entity_id`,`is_show`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_userinfo_collect
-- ----------------------------

-- ----------------------------
-- Table structure for shop_userinfo_comment
-- ----------------------------
DROP TABLE IF EXISTS `shop_userinfo_comment`;
CREATE TABLE `shop_userinfo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '会员id',
  `type` int(1) NOT NULL COMMENT '类型 1 商品',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父节点',
  `id_value` int(11) NOT NULL COMMENT '商品的id',
  `email` varchar(30) DEFAULT NULL COMMENT '评论的email',
  `username` varchar(30) NOT NULL COMMENT '用户名，默认为会员昵称',
  `content` text COMMENT '内容',
  `comment_rank` int(1) DEFAULT NULL COMMENT '回复内容',
  `ip_address` varchar(30) DEFAULT NULL COMMENT '评论的ip',
  `status` int(1) NOT NULL COMMENT '状态 1审核显示 0 未批准显示',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_comment_userinfo` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品评价表';

-- ----------------------------
-- Records of shop_userinfo_comment
-- ----------------------------

-- ----------------------------
-- Table structure for shop_userinfo_group
-- ----------------------------
DROP TABLE IF EXISTS `shop_userinfo_group`;
CREATE TABLE `shop_userinfo_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '用户组',
  `beg_ponint` decimal(8,2) NOT NULL COMMENT '用户积分',
  `end_ponits` decimal(8,2) DEFAULT NULL COMMENT '用户积分',
  `store_id` int(11) NOT NULL COMMENT '站点',
  `type` int(1) DEFAULT NULL COMMENT '类型 1',
  `receive` int(1) DEFAULT NULL COMMENT '是否接收数据，营销用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_userinfo_group
-- ----------------------------

-- ----------------------------
-- Table structure for shop_userinfo_points_log
-- ----------------------------
DROP TABLE IF EXISTS `shop_userinfo_points_log`;
CREATE TABLE `shop_userinfo_points_log` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `rank_points` decimal(8,2) DEFAULT NULL COMMENT '用户等级积分 1-5星',
  `pay_points` decimal(8,2) DEFAULT NULL COMMENT '消费积分正数添加，负数消费',
  `change_desc` varchar(255) DEFAULT NULL COMMENT '描述内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_userinfo_points_log
-- ----------------------------

-- ----------------------------
-- Table structure for shop_visitors_log
-- ----------------------------
DROP TABLE IF EXISTS `shop_visitors_log`;
CREATE TABLE `shop_visitors_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `browser` varchar(200) DEFAULT NULL COMMENT '浏览器类型',
  `ip_address` varchar(30) NOT NULL COMMENT '用户访问地址',
  `type` int(1) NOT NULL COMMENT '日志类型：1 产品，2 分类，3广告',
  `store_id` int(11) NOT NULL COMMENT '站点',
  `vs_value` varchar(255) DEFAULT NULL COMMENT '访问地址',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_visitors_log
-- ----------------------------
