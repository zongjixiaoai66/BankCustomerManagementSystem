/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t362`;
CREATE DATABASE IF NOT EXISTS `t362` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t362`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 4, '广东省广东省', '2023-04-19 09:27:57', NULL, NULL, 2, 1, '2023-04-19 09:27:57'),
	(2, 4, NULL, NULL, '和哼哼唧唧', '2023-04-19 09:28:14', NULL, 2, '2023-04-19 09:28:14'),
	(3, 4, NULL, NULL, '发货的回复', '2023-04-19 09:28:17', NULL, 2, '2023-04-19 09:28:18'),
	(4, 4, NULL, NULL, '大杀四方第三个', '2023-04-19 09:28:20', NULL, 2, '2023-04-19 09:28:21');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1孤独颂歌第三个十多个', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(17, 'zhengxindengji_types', '征信等级', 1, '一级', NULL, NULL, '2023-04-19 06:52:07'),
	(18, 'zhengxindengji_types', '征信等级', 2, '二级', NULL, NULL, '2023-04-19 06:52:07'),
	(19, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-19 06:52:07'),
	(20, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-19 06:52:07'),
	(21, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-19 06:52:07'),
	(22, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-19 06:52:07'),
	(23, 'yinhang_types', '银行', 1, '中国银行', NULL, NULL, '2023-04-19 06:52:07'),
	(24, 'yinhang_types', '银行', 2, '建设银行', NULL, NULL, '2023-04-19 06:52:07'),
	(25, 'yinhang_types', '银行', 3, '邮政银行', NULL, NULL, '2023-04-19 06:52:07'),
	(26, 'yinhang_types', '银行', 4, '中原银行', NULL, NULL, '2023-04-19 06:52:07'),
	(27, 'yinhangka_types', '银行卡类型', 1, '银行卡类型1', NULL, NULL, '2023-04-19 06:52:07'),
	(28, 'yinhangka_types', '银行卡类型', 2, '银行卡类型2', NULL, NULL, '2023-04-19 06:52:07'),
	(29, 'yinhangka_types', '银行卡类型', 3, '银行卡类型3', NULL, NULL, '2023-04-19 06:52:08'),
	(30, 'yinhangka_types', '银行卡类型', 4, '银行卡类型4', NULL, NULL, '2023-04-19 06:52:08'),
	(31, 'yinhangka_jilu_types', '记录类型', 1, '购买理财', NULL, NULL, '2023-04-19 06:52:08'),
	(32, 'yinhangka_jilu_types', '记录类型', 2, '借贷', NULL, NULL, '2023-04-19 06:52:08'),
	(33, 'yinhangka_jilu_types', '记录类型', 3, '还款', NULL, NULL, '2023-04-19 06:52:08'),
	(34, 'yinhangka_jilu_types', '记录类型', 4, '存款', NULL, NULL, '2023-04-19 06:52:08'),
	(35, 'yinhangka_jilu_types', '记录类型', 5, '取款', NULL, NULL, '2023-04-19 06:52:08'),
	(36, 'yinhangka_jilu_types', '记录类型', 6, '转账', NULL, NULL, '2023-04-19 06:52:08'),
	(37, 'licaichanpin_fengxian_types', '风险等级', 1, '高级', NULL, NULL, '2023-04-19 06:52:08'),
	(38, 'licaichanpin_fengxian_types', '风险等级', 2, '中级', NULL, NULL, '2023-04-19 06:52:08'),
	(39, 'licaichanpin_fengxian_types', '风险等级', 3, '低级', NULL, NULL, '2023-04-19 06:52:08'),
	(40, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-04-19 06:52:08'),
	(41, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-04-19 06:52:08'),
	(42, 'licaichanpin_types', '投资类型', 1, '投资类型1', NULL, NULL, '2023-04-19 06:52:08'),
	(43, 'licaichanpin_types', '投资类型', 2, '投资类型2', NULL, NULL, '2023-04-19 06:52:08'),
	(44, 'licaichanpin_types', '投资类型', 3, '投资类型3', NULL, NULL, '2023-04-19 06:52:08'),
	(45, 'licaichanpin_types', '投资类型', 4, '投资类型4', NULL, NULL, '2023-04-19 06:52:08'),
	(46, 'licaichanpin_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-19 06:52:08'),
	(47, 'licaichanpin_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-19 06:52:08'),
	(48, 'licaichanpin_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-19 06:52:08'),
	(49, 'licaichanpin_order_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2023-04-19 06:52:08'),
	(50, 'licaichanpin_order_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2023-04-19 06:52:08'),
	(51, 'licaichanpin_order_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2023-04-19 06:52:08'),
	(52, 'licaichanpin_order_types', '订单类型', 101, '已购买', NULL, NULL, '2023-04-19 06:52:08'),
	(53, 'licaichanpin_order_types', '订单类型', 102, '已取消购买', NULL, NULL, '2023-04-19 06:52:08'),
	(54, 'licaichanpin_order_types', '订单类型', 103, '已同意', NULL, NULL, '2023-04-19 06:52:08'),
	(55, 'licaichanpin_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-19 06:52:08'),
	(56, 'licaichanpin_order_types', '订单类型', 106, '已拒绝购买', NULL, NULL, '2023-04-19 06:52:08'),
	(57, 'licaichanpin_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-04-19 06:52:08'),
	(58, 'jinronggongju_types', '产品类型', 1, '产品类型1', NULL, NULL, '2023-04-19 06:52:08'),
	(59, 'jinronggongju_types', '产品类型', 2, '产品类型2', NULL, NULL, '2023-04-19 06:52:09'),
	(60, 'jinronggongju_types', '产品类型', 3, '产品类型3', NULL, NULL, '2023-04-19 06:52:09'),
	(61, 'jinronggongju_types', '产品类型', 4, '产品类型4', NULL, NULL, '2023-04-19 06:52:09'),
	(62, 'jinronggongju_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-19 06:52:09'),
	(63, 'jinronggongju_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2023-04-19 06:52:09'),
	(64, 'jinronggongju_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2023-04-19 06:52:09'),
	(65, 'jinronggongju_order_yesno_types', '审核状态', 1, '待审核', NULL, NULL, '2023-04-19 06:52:09'),
	(66, 'jinronggongju_order_yesno_types', '审核状态', 2, '同意', NULL, NULL, '2023-04-19 06:52:09'),
	(67, 'jinronggongju_order_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2023-04-19 06:52:09'),
	(68, 'jinronggongju_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-04-19 06:52:09'),
	(69, 'jinronggongju_order_types', '订单类型', 102, '已取消', NULL, NULL, '2023-04-19 06:52:09'),
	(70, 'jinronggongju_order_types', '订单类型', 103, '已同意借款', NULL, NULL, '2023-04-19 06:52:09'),
	(71, 'jinronggongju_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-19 06:52:09'),
	(72, 'jinronggongju_order_types', '订单类型', 106, '已拒绝借款', NULL, NULL, '2023-04-19 06:52:09'),
	(73, 'jinronggongju_order_types', '订单类型', 107, '已还款', NULL, NULL, '2023-04-19 06:52:09'),
	(74, 'jinronggongju_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-04-19 06:52:09'),
	(75, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-19 06:52:09'),
	(76, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-19 06:52:09'),
	(77, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-04-19 06:52:09'),
	(78, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-04-19 06:52:09'),
	(79, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-04-19 06:52:09'),
	(80, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-04-19 06:52:09'),
	(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(83, 'yinhangka_types', '银行卡类型', 5, '银行卡类型5', NULL, '', '2023-04-19 09:43:55');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 1, '2023-04-19 06:52:12', '公告详情1', '2023-04-19 06:52:12'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 2, '2023-04-19 06:52:12', '公告详情2', '2023-04-19 06:52:12'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-04-19 06:52:12', '公告详情3', '2023-04-19 06:52:12'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-04-19 06:52:12', '公告详情4', '2023-04-19 06:52:12'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-19 06:52:12', '公告详情5', '2023-04-19 06:52:12'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-19 06:52:12', '公告详情6', '2023-04-19 06:52:12'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-04-19 06:52:12', '公告详情7', '2023-04-19 06:52:12'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-19 06:52:12', '公告详情8', '2023-04-19 06:52:12'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-19 06:52:12', '公告详情9', '2023-04-19 06:52:12'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-04-19 06:52:12', '公告详情10', '2023-04-19 06:52:12'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-04-19 06:52:12', '公告详情11', '2023-04-19 06:52:12'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-19 06:52:12', '公告详情12', '2023-04-19 06:52:12'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-04-19 06:52:12', '公告详情13', '2023-04-19 06:52:12'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-19 06:52:12', '公告详情14', '2023-04-19 06:52:12');

DROP TABLE IF EXISTS `jinronggongju`;
CREATE TABLE IF NOT EXISTS `jinronggongju` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jinronggongju_name` varchar(200) DEFAULT NULL COMMENT '产品名称  Search111 ',
  `jinronggongju_uuid_number` varchar(200) DEFAULT NULL COMMENT '金融工具编号',
  `jinronggongju_photo` varchar(200) DEFAULT NULL COMMENT '产品照片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `jinronggongju_types` int DEFAULT NULL COMMENT '产品类型 Search111',
  `huankuan_number` int DEFAULT NULL COMMENT '还款天数',
  `jinronggongju_lilv` decimal(10,2) DEFAULT NULL COMMENT '利率',
  `jinronggongju_clicknum` int DEFAULT NULL COMMENT '金融工具热度',
  `jinronggongju_content` longtext COMMENT '产品介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `jinronggongju_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='金融工具';

DELETE FROM `jinronggongju`;
INSERT INTO `jinronggongju` (`id`, `jinronggongju_name`, `jinronggongju_uuid_number`, `jinronggongju_photo`, `zan_number`, `cai_number`, `jinronggongju_types`, `huankuan_number`, `jinronggongju_lilv`, `jinronggongju_clicknum`, `jinronggongju_content`, `shangxia_types`, `jinronggongju_delete`, `insert_time`, `create_time`) VALUES
	(1, '产品名称1', '1681887132704', 'upload/jinronggongju1.jpg', 177, 401, 4, 387, 0.18, 304, '产品介绍1', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, '产品名称2', '1681887132654', 'upload/jinronggongju2.jpg', 356, 377, 3, 288, 0.18, 349, '产品介绍2', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, '产品名称3', '1681887132704', 'upload/jinronggongju3.jpg', 21, 171, 1, 397, 0.18, 400, '产品介绍3', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, '产品名称4', '1681887132665', 'upload/jinronggongju4.jpg', 237, 5, 3, 441, 0.18, 129, '产品介绍4', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, '产品名称5', '1681887132689', 'upload/jinronggongju5.jpg', 40, 22, 4, 98, 0.18, 195, '产品介绍5', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, '产品名称6', '1681887132687', 'upload/jinronggongju6.jpg', 487, 480, 1, 458, 0.18, 18, '产品介绍6', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, '产品名称7', '1681887132641', 'upload/jinronggongju7.jpg', 228, 334, 3, 383, 0.18, 306, '产品介绍7', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, '产品名称8', '1681887132688', 'upload/jinronggongju8.jpg', 200, 47, 2, 223, 0.18, 55, '产品介绍8', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, '产品名称9', '1681887132698', 'upload/jinronggongju9.jpg', 115, 333, 2, 197, 0.18, 250, '产品介绍9', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, '产品名称10', '1681887132712', 'upload/jinronggongju10.jpg', 155, 68, 4, 469, 0.18, 253, '产品介绍10', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, '产品名称11', '1681887132685', 'upload/jinronggongju11.jpg', 136, 25, 3, 95, 0.18, 467, '产品介绍11', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, '产品名称12', '1681887132715', 'upload/jinronggongju12.jpg', 426, 167, 3, 24, 0.18, 45, '产品介绍12', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, '产品名称13', '1681887132670', 'upload/jinronggongju13.jpg', 66, 121, 2, 225, 0.18, 429, '产品介绍13', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, '产品名称14', '1681887132651', 'upload/jinronggongju14.jpg', 277, 143, 4, 349, 0.18, 464, '产品介绍14', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12');

DROP TABLE IF EXISTS `jinronggongju_collection`;
CREATE TABLE IF NOT EXISTS `jinronggongju_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jinronggongju_id` int DEFAULT NULL COMMENT '金融工具',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jinronggongju_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='金融工具收藏';

DELETE FROM `jinronggongju_collection`;
INSERT INTO `jinronggongju_collection` (`id`, `jinronggongju_id`, `yonghu_id`, `jinronggongju_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, 2, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, 3, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, 4, 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, 5, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, 6, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, 7, 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, 8, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, 9, 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, 10, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, 11, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, 12, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, 13, 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, 14, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(15, 11, 1, 2, '2023-04-19 08:54:03', '2023-04-19 08:54:03'),
	(16, 13, 4, 1, '2023-04-19 09:27:50', '2023-04-19 09:27:50'),
	(17, 12, 4, 1, '2023-04-19 09:27:51', '2023-04-19 09:27:51'),
	(18, 7, 4, 1, '2023-04-19 09:27:52', '2023-04-19 09:27:52');

DROP TABLE IF EXISTS `jinronggongju_commentback`;
CREATE TABLE IF NOT EXISTS `jinronggongju_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jinronggongju_id` int DEFAULT NULL COMMENT '金融工具',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `jinronggongju_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='金融工具评价';

DELETE FROM `jinronggongju_commentback`;
INSERT INTO `jinronggongju_commentback` (`id`, `jinronggongju_id`, `yonghu_id`, `jinronggongju_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '2023-04-19 06:52:12', '回复信息1', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, 2, 1, '评价内容2', '2023-04-19 06:52:12', '回复信息2', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, 3, 2, '评价内容3', '2023-04-19 06:52:12', '回复信息3', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, 4, 1, '评价内容4', '2023-04-19 06:52:12', '回复信息4', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, 5, 3, '评价内容5', '2023-04-19 06:52:12', '回复信息5', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, 6, 3, '评价内容6', '2023-04-19 06:52:12', '回复信息6', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, 7, 1, '评价内容7', '2023-04-19 06:52:12', '回复信息7', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, 8, 1, '评价内容8', '2023-04-19 06:52:12', '回复信息8', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, 9, 2, '评价内容9', '2023-04-19 06:52:12', '回复信息9', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, 10, 2, '评价内容10', '2023-04-19 06:52:12', '回复信息10', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, 11, 2, '评价内容11', '2023-04-19 06:52:12', '回复信息11', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, 12, 1, '评价内容12', '2023-04-19 06:52:12', '回复信息12', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, 13, 1, '评价内容13', '2023-04-19 06:52:12', '回复信息13', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, 14, 2, '评价内容14', '2023-04-19 06:52:12', '回复信息14', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(15, 11, 1, '和东方市公司的发给', '2023-04-19 09:05:56', NULL, NULL, '2023-04-19 09:05:56'),
	(16, 11, 4, '回复的第三个', '2023-04-19 09:25:55', '个打法', '2023-04-19 09:44:04', '2023-04-19 09:25:55');

DROP TABLE IF EXISTS `jinronggongju_order`;
CREATE TABLE IF NOT EXISTS `jinronggongju_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jinronggongju_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `jinronggongju_id` int DEFAULT NULL COMMENT '金融工具',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yinhangka_id` int DEFAULT NULL COMMENT '银行卡',
  `jinronggongju_order_jiekuanjine` decimal(10,2) DEFAULT NULL COMMENT '借款金额',
  `jinronggongju_order_huankuanjine` decimal(10,2) DEFAULT NULL COMMENT '还款金额',
  `zuiwanhuankuan_time` timestamp NULL DEFAULT NULL COMMENT '最晚还款日期',
  `jinronggongju_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `jinronggongju_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `jinronggongju_order_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `jinronggongju_order_yesno_text` longtext COMMENT '审核意见',
  `jinronggongju_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='借款';

DELETE FROM `jinronggongju_order`;
INSERT INTO `jinronggongju_order` (`id`, `jinronggongju_order_uuid_number`, `jinronggongju_id`, `yonghu_id`, `yinhangka_id`, `jinronggongju_order_jiekuanjine`, `jinronggongju_order_huankuanjine`, `zuiwanhuankuan_time`, `jinronggongju_order_types`, `jinronggongju_order_payment_types`, `jinronggongju_order_yesno_types`, `jinronggongju_order_yesno_text`, `jinronggongju_order_shenhe_time`, `insert_time`, `create_time`) VALUES
	(1, '1681894952008', 11, 1, 10, 300.00, 354.00, '2023-07-04 09:05:45', 107, 1, 2, '的格式股份第三个', '2023-04-19 09:05:45', '2023-04-19 09:02:32', '2023-04-19 09:02:32'),
	(2, '1681896307794', 11, 4, 15, 10000.00, 11800.00, '2023-07-04 09:25:32', 105, 1, 2, '个是大纲的三个', '2023-04-19 09:25:32', '2023-04-19 09:25:08', '2023-04-19 09:25:08'),
	(3, '1681897304021', 14, 1, 13, 9999.00, 11798.82, '2024-03-14 09:42:12', 103, 1, 2, '第三个第三个', '2023-04-19 09:42:12', '2023-04-19 09:41:44', '2023-04-19 09:41:44');

DROP TABLE IF EXISTS `licaichanpin`;
CREATE TABLE IF NOT EXISTS `licaichanpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `licaichanpin_name` varchar(200) DEFAULT NULL COMMENT '理财产品名称  Search111 ',
  `licaichanpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '理财产品编号',
  `licaichanpin_photo` varchar(200) DEFAULT NULL COMMENT '理财产品照片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `licaichanpin_types` int DEFAULT NULL COMMENT '投资类型 Search111',
  `fashou_time` timestamp NULL DEFAULT NULL COMMENT '发售时间',
  `licaichanpin_nianshouyi` varchar(200) DEFAULT NULL COMMENT '年收益',
  `licaichanpin_fengxian_types` int DEFAULT NULL COMMENT '风险等级 Search111',
  `licaichanpin_kucun_number` int DEFAULT NULL COMMENT '剩余份数',
  `licaichanpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '原价/份',
  `licaichanpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/份 ',
  `licaichanpin_clicknum` int DEFAULT NULL COMMENT '理财产品热度',
  `licaichanpin_content` longtext COMMENT '理财产品介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `licaichanpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='理财产品';

DELETE FROM `licaichanpin`;
INSERT INTO `licaichanpin` (`id`, `licaichanpin_name`, `licaichanpin_uuid_number`, `licaichanpin_photo`, `zan_number`, `cai_number`, `licaichanpin_types`, `fashou_time`, `licaichanpin_nianshouyi`, `licaichanpin_fengxian_types`, `licaichanpin_kucun_number`, `licaichanpin_old_money`, `licaichanpin_new_money`, `licaichanpin_clicknum`, `licaichanpin_content`, `shangxia_types`, `licaichanpin_delete`, `insert_time`, `create_time`) VALUES
	(1, '理财产品名称1', '1681887132631', 'upload/licaichanpin1.jpg', 110, 423, 2, '2023-04-19 06:52:12', '年收益1', 2, 99, 504.72, 148.06, 433, '理财产品介绍1', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, '理财产品名称2', '1681887132656', 'upload/licaichanpin2.jpg', 1, 23, 4, '2023-04-19 06:52:12', '年收益2', 2, 102, 729.35, 209.87, 37, '理财产品介绍2', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, '理财产品名称3', '1681887132640', 'upload/licaichanpin3.jpg', 98, 480, 2, '2023-04-19 06:52:12', '年收益3', 2, 101, 707.02, 141.95, 234, '理财产品介绍3', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, '理财产品名称4', '1681887132636', 'upload/licaichanpin4.jpg', 209, 302, 3, '2023-04-19 06:52:12', '年收益4', 3, 104, 959.47, 124.19, 146, '理财产品介绍4', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, '理财产品名称5', '1681887132698', 'upload/licaichanpin5.jpg', 476, 170, 1, '2023-04-19 06:52:12', '年收益5', 1, 105, 568.25, 203.44, 202, '理财产品介绍5', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, '理财产品名称6', '1681887132651', 'upload/licaichanpin6.jpg', 4, 440, 2, '2023-04-19 06:52:12', '年收益6', 1, 106, 977.70, 218.39, 291, '理财产品介绍6', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, '理财产品名称7', '1681887132709', 'upload/licaichanpin7.jpg', 493, 433, 1, '2023-04-19 06:52:12', '年收益7', 1, 107, 534.08, 109.74, 208, '理财产品介绍7', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, '理财产品名称8', '1681887132708', 'upload/licaichanpin8.jpg', 321, 208, 2, '2023-04-19 06:52:12', '年收益8', 2, 108, 801.93, 178.08, 351, '理财产品介绍8', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, '理财产品名称9', '1681887132674', 'upload/licaichanpin9.jpg', 351, 411, 4, '2023-04-19 06:52:12', '年收益9', 1, 109, 939.10, 21.01, 443, '理财产品介绍9', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, '理财产品名称10', '1681887132717', 'upload/licaichanpin10.jpg', 418, 103, 3, '2023-04-19 06:52:12', '年收益10', 3, 1007, 558.69, 220.15, 383, '理财产品介绍10', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, '理财产品名称11', '1681887132717', 'upload/licaichanpin11.jpg', 187, 87, 3, '2023-04-19 06:52:12', '年收益11', 2, 1011, 602.82, 24.94, 62, '理财产品介绍11', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, '理财产品名称12', '1681887132706', 'upload/licaichanpin12.jpg', 82, 52, 2, '2023-04-19 06:52:12', '年收益12', 3, 1012, 587.50, 454.56, 101, '理财产品介绍12', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, '理财产品名称13', '1681887132700', 'upload/licaichanpin13.jpg', 111, 405, 2, '2023-04-19 06:52:12', '年收益13', 1, 1013, 527.58, 375.39, 93, '理财产品介绍13', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, '理财产品名称14', '1681887132719', 'upload/licaichanpin14.jpg', 209, 23, 1, '2023-04-19 06:52:12', '年收益14', 2, 1012, 715.32, 194.56, 336, '理财产品介绍14', 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12');

DROP TABLE IF EXISTS `licaichanpin_collection`;
CREATE TABLE IF NOT EXISTS `licaichanpin_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `licaichanpin_id` int DEFAULT NULL COMMENT '理财产品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `licaichanpin_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='理财产品收藏';

DELETE FROM `licaichanpin_collection`;
INSERT INTO `licaichanpin_collection` (`id`, `licaichanpin_id`, `yonghu_id`, `licaichanpin_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, 2, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, 3, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, 4, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, 5, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, 6, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, 7, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, 8, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, 9, 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, 10, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, 11, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, 12, 3, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, 13, 2, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, 14, 1, 1, '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(15, 1, 4, 1, '2023-04-19 09:22:30', '2023-04-19 09:22:30'),
	(16, 3, 4, 1, '2023-04-19 09:27:32', '2023-04-19 09:27:32'),
	(17, 14, 1, 2, '2023-04-19 09:41:50', '2023-04-19 09:41:50'),
	(18, 7, 1, 1, '2024-08-12 05:55:27', '2024-08-12 05:55:27');

DROP TABLE IF EXISTS `licaichanpin_commentback`;
CREATE TABLE IF NOT EXISTS `licaichanpin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `licaichanpin_id` int DEFAULT NULL COMMENT '理财产品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `licaichanpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='理财产品评价';

DELETE FROM `licaichanpin_commentback`;
INSERT INTO `licaichanpin_commentback` (`id`, `licaichanpin_id`, `yonghu_id`, `licaichanpin_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2023-04-19 06:52:12', '回复信息1', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, 2, 1, '评价内容2', '2023-04-19 06:52:12', '回复信息2', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, 3, 2, '评价内容3', '2023-04-19 06:52:12', '回复信息3', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, 4, 2, '评价内容4', '2023-04-19 06:52:12', '回复信息4', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, 5, 2, '评价内容5', '2023-04-19 06:52:12', '回复信息5', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, 6, 2, '评价内容6', '2023-04-19 06:52:12', '回复信息6', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, 7, 1, '评价内容7', '2023-04-19 06:52:12', '回复信息7', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, 8, 1, '评价内容8', '2023-04-19 06:52:12', '回复信息8', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, 9, 3, '评价内容9', '2023-04-19 06:52:12', '回复信息9', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, 10, 3, '评价内容10', '2023-04-19 06:52:12', '回复信息10', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, 11, 1, '评价内容11', '2023-04-19 06:52:12', '回复信息11', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, 12, 1, '评价内容12', '2023-04-19 06:52:12', '回复信息12', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, 13, 3, '评价内容13', '2023-04-19 06:52:12', '回复信息13', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, 14, 2, '评价内容14', '2023-04-19 06:52:12', '回复信息14', '2023-04-19 06:52:12', '2023-04-19 06:52:12');

DROP TABLE IF EXISTS `licaichanpin_order`;
CREATE TABLE IF NOT EXISTS `licaichanpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `licaichanpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `licaichanpin_id` int DEFAULT NULL COMMENT '理财产品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yinhangka_id` int DEFAULT NULL COMMENT '银行卡',
  `buy_number` int DEFAULT NULL COMMENT '购买份数',
  `licaichanpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `licaichanpin_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `licaichanpin_order_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `licaichanpin_order_yesno_text` longtext COMMENT '审核意见',
  `licaichanpin_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `licaichanpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='理财产品订单';

DELETE FROM `licaichanpin_order`;
INSERT INTO `licaichanpin_order` (`id`, `licaichanpin_order_uuid_number`, `licaichanpin_id`, `yonghu_id`, `yinhangka_id`, `buy_number`, `licaichanpin_order_true_price`, `licaichanpin_order_types`, `licaichanpin_order_yesno_types`, `licaichanpin_order_yesno_text`, `licaichanpin_order_shenhe_time`, `licaichanpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1681895678651', 1, 1, 13, 1, 0.00, 102, NULL, NULL, NULL, 1, '2023-04-19 09:14:39', '2023-04-19 09:14:39'),
	(2, '1681895748603', 10, 1, 13, 2, 440.30, 101, 1, NULL, NULL, 1, '2023-04-19 09:15:49', '2023-04-19 09:15:49'),
	(3, '1681896373626', 1, 4, 15, 2, 296.12, 101, 1, NULL, NULL, 1, '2023-04-19 09:26:14', '2023-04-19 09:26:14'),
	(4, '1681896439025', 10, 4, 15, 1, 220.15, 101, 1, NULL, NULL, 1, '2023-04-19 09:27:19', '2023-04-19 09:27:19'),
	(5, '1681896457310', 3, 4, 15, 2, 283.90, 103, 2, '低功耗十多个', '2023-04-19 09:42:49', 1, '2023-04-19 09:27:37', '2023-04-19 09:27:37'),
	(6, '1681897312663', 14, 1, 13, 2, 389.12, 106, 3, '单双杠事故', '2023-04-19 09:42:23', 1, '2023-04-19 09:41:53', '2023-04-19 09:41:53');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'b350bhv66tyzvcesx3lj5qclqeg3546g', '2023-04-19 07:54:57', '2024-08-12 06:53:03'),
	(2, 1, 'a1', 'yonghu', '用户', '03x9l04k1a1o56ektslmfbrkb4y59epl', '2023-04-19 08:53:27', '2024-08-12 06:55:12'),
	(3, 1, 'a1', 'yuangong', '员工', 'u0yb1bruzzhliv9vpp4e1e7gfkf8lmtm', '2023-04-19 09:05:34', '2024-08-12 06:54:49'),
	(4, 4, 'a5', 'yonghu', '用户', 'thoe1ybd60eziob36kkxwbj626nd471y', '2023-04-19 09:21:11', '2023-04-19 10:33:20');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-19 06:52:07');

DROP TABLE IF EXISTS `yinhangka`;
CREATE TABLE IF NOT EXISTS `yinhangka` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yinhangka_uuid_number` varchar(200) DEFAULT NULL COMMENT '银行卡卡号',
  `yinhangka_photo` varchar(200) DEFAULT NULL COMMENT '银行卡照片',
  `yinhangka_kaikadi` varchar(200) DEFAULT NULL COMMENT '开卡地',
  `yinhang_types` int DEFAULT NULL COMMENT '银行 Search111',
  `yinhangka_types` int DEFAULT NULL COMMENT '银行卡类型 Search111',
  `insert_time` date DEFAULT NULL COMMENT '开卡日期',
  `yinhangka_address` varchar(200) DEFAULT NULL COMMENT '编码',
  `yinhangka_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `yinhangka_content` longtext COMMENT '卡片备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='银行卡';

DELETE FROM `yinhangka`;
INSERT INTO `yinhangka` (`id`, `yonghu_id`, `yinhangka_uuid_number`, `yinhangka_photo`, `yinhangka_kaikadi`, `yinhang_types`, `yinhangka_types`, `insert_time`, `yinhangka_address`, `yinhangka_money`, `yinhangka_content`, `create_time`) VALUES
	(1, 2, '1681887132673', 'upload/yinhangka1.jpg', '开卡地1', 4, 1, '2023-04-19', '编码1', 927.38, '卡片备注1', '2023-04-19 06:52:12'),
	(2, 2, '1681887132730', 'upload/yinhangka2.jpg', '开卡地2', 4, 3, '2023-04-19', '编码2', 519.24, '卡片备注2', '2023-04-19 06:52:12'),
	(3, 2, '1681887132640', 'upload/yinhangka3.jpg', '开卡地3', 3, 4, '2023-04-19', '编码3', 200.49, '卡片备注3', '2023-04-19 06:52:12'),
	(4, 3, '1681887132692', 'upload/yinhangka4.jpg', '开卡地4', 2, 1, '2023-04-19', '编码4', 525.55, '卡片备注4', '2023-04-19 06:52:12'),
	(5, 3, '1681887132702', 'upload/yinhangka5.jpg', '开卡地5', 4, 3, '2023-04-19', '编码5', 599.70, '卡片备注5', '2023-04-19 06:52:12'),
	(6, 3, '1681887132681', 'upload/yinhangka6.jpg', '开卡地6', 4, 1, '2023-04-19', '编码6', 433.37, '卡片备注6', '2023-04-19 06:52:12'),
	(7, 2, '1681887132660', 'upload/yinhangka7.jpg', '开卡地7', 2, 4, '2023-04-19', '编码7', 393.92, '卡片备注7', '2023-04-19 06:52:12'),
	(8, 3, '1681887132702', 'upload/yinhangka8.jpg', '开卡地8', 4, 3, '2023-04-19', '编码8', 82.85, '卡片备注8', '2023-04-19 06:52:12'),
	(9, 1, '1681887132638', 'upload/yinhangka9.jpg', '开卡地9', 3, 4, '2023-04-19', '编码9', 632.91, '卡片备注9', '2023-04-19 06:52:12'),
	(10, 1, '1681887132693', 'upload/yinhangka10.jpg', '开卡地10', 4, 1, '2023-04-19', '编码10', 823.31, '卡片备注10', '2023-04-19 06:52:12'),
	(11, 1, '1681887132647', 'upload/yinhangka11.jpg', '开卡地11', 3, 2, '2023-04-19', '编码11', 367.65, '卡片备注11', '2023-04-19 06:52:12'),
	(12, 1, '1681887132712', 'upload/yinhangka12.jpg', '开卡地12', 4, 2, '2023-04-19', '编码12', 52.29, '卡片备注12', '2023-04-19 06:52:12'),
	(13, 1, '1681887132735', 'upload/yinhangka13.jpg', '开卡地13', 1, 1, '2023-04-19', '编码13', 11048.09, '卡片备注13', '2023-04-19 06:52:12'),
	(14, 3, '1681887132719', 'upload/yinhangka14.jpg', '开卡地14', 3, 3, '2023-04-19', '编码14', 457.42, '卡片备注14', '2023-04-19 06:52:12'),
	(15, 4, '1681896276752', 'upload/1681896285578.jpg', '地址1111', 4, 2, '2023-04-19', '54354151', 9196.95, '地方施工法规富商大贾', '2023-04-19 09:24:51');

DROP TABLE IF EXISTS `yinhangka_cunkuan`;
CREATE TABLE IF NOT EXISTS `yinhangka_cunkuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yinhangka_id` int DEFAULT NULL COMMENT '银行卡',
  `yinhangka_cunkuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '存款编号',
  `yinhangka_cunkuan_jine` decimal(10,2) DEFAULT NULL COMMENT '存款金额 ',
  `yinhangka_cunkuan_content` longtext COMMENT '存款备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '存款时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='存款';

DELETE FROM `yinhangka_cunkuan`;
INSERT INTO `yinhangka_cunkuan` (`id`, `yinhangka_id`, `yinhangka_cunkuan_uuid_number`, `yinhangka_cunkuan_jine`, `yinhangka_cunkuan_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681887132697', 603.52, '存款备注1', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, 2, '1681887132711', 862.42, '存款备注2', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, 3, '1681887132726', 6.99, '存款备注3', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, 4, '1681887132695', 694.52, '存款备注4', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, 5, '1681887132703', 442.80, '存款备注5', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, 6, '1681887132720', 305.81, '存款备注6', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, 7, '1681887132737', 758.66, '存款备注7', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, 8, '1681887132734', 869.96, '存款备注8', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, 9, '1681887132689', 372.89, '存款备注9', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, 10, '1681887132737', 179.87, '存款备注10', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, 11, '1681887132649', 23.75, '存款备注11', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, 12, '1681887132696', 956.00, '存款备注12', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, 13, '1681887132682', 853.06, '存款备注13', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, 14, '1681887132691', 268.25, '存款备注14', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(15, 15, '1681896839016', 300.00, '<p>广东省广东省固定是</p>', '2023-04-19 09:34:07', '2023-04-19 09:34:07'),
	(16, 15, '1681897015585', 1000.00, '<p>的个是大纲的三个</p>', '2023-04-19 09:37:03', '2023-04-19 09:37:03');

DROP TABLE IF EXISTS `yinhangka_jilu`;
CREATE TABLE IF NOT EXISTS `yinhangka_jilu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yinhangka_id` int DEFAULT NULL COMMENT '银行卡',
  `yinhangka_jilu_uuid_number` varchar(200) DEFAULT NULL COMMENT '记录卡号',
  `yinhangka_jilu_types` int DEFAULT NULL COMMENT '银行卡记录类型 Search111',
  `yinhangka_jilu_jine` decimal(10,2) DEFAULT NULL COMMENT '记录金额',
  `yinhangka_jilu_content` longtext COMMENT '详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3 COMMENT='银行卡记录';

DELETE FROM `yinhangka_jilu`;
INSERT INTO `yinhangka_jilu` (`id`, `yinhangka_id`, `yinhangka_jilu_uuid_number`, `yinhangka_jilu_types`, `yinhangka_jilu_jine`, `yinhangka_jilu_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681887132681', 5, 196.11, '详情1', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, 2, '1681887132662', 2, 30.95, '详情2', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, 3, '1681887132726', 6, 19.29, '详情3', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, 4, '1681887132687', 4, 80.03, '详情4', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, 5, '1681887132671', 4, 297.20, '详情5', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, 6, '1681887132647', 5, 570.58, '详情6', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, 7, '1681887132678', 6, 256.60, '详情7', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, 8, '1681887132708', 1, 635.02, '详情8', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, 9, '1681887132650', 4, 1.77, '详情9', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, 10, '1681887132644', 1, 509.26, '详情10', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, 11, '1681887132741', 6, 956.64, '详情11', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, 12, '1681887132701', 5, 249.60, '详情12', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, 13, '1681887132735', 4, 388.64, '详情13', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, 14, '1681887132726', 4, 561.67, '详情14', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(15, 10, '1681895144559', 2, 300.00, '购买金融工具,转入了300.0', '2023-04-19 09:05:45', '2023-04-19 09:05:45'),
	(16, 10, '1681895327629', 2, 354.00, '还款金融工具,转出了354.0', '2023-04-19 09:08:48', '2023-04-19 09:08:48'),
	(17, 13, '1681895678661', 1, 148.06, '购买理财产品花费148.06', '2023-04-19 09:14:39', '2023-04-19 09:14:39'),
	(18, 13, '1681895741026', 1, 148.06, '购买理财产品取消购买,退回148.06', '2023-04-19 09:15:41', '2023-04-19 09:15:41'),
	(19, 13, '1681895748611', 1, 440.30, '购买理财产品花费440.3', '2023-04-19 09:15:49', '2023-04-19 09:15:49'),
	(20, 15, '1681896331909', 2, 10000.00, '购买金融工具,转入了10000.0', '2023-04-19 09:25:32', '2023-04-19 09:25:32'),
	(21, 15, '1681896373638', 1, 296.12, '购买理财产品花费296.12', '2023-04-19 09:26:14', '2023-04-19 09:26:14'),
	(22, 15, '1681896439042', 1, 220.15, '购买理财产品花费220.15', '2023-04-19 09:27:19', '2023-04-19 09:27:19'),
	(23, 15, '1681896457327', 1, 283.90, '购买理财产品花费283.9', '2023-04-19 09:27:37', '2023-04-19 09:27:37'),
	(24, 15, '1681896846655', 3, 300.00, '存款了300.0', '2023-04-19 09:34:07', '2023-04-19 09:34:07'),
	(25, 15, '1681897023451', 3, 1000.00, '存款了1000.0', '2023-04-19 09:37:03', '2023-04-19 09:37:03'),
	(26, 15, '1681897045501', 4, 999.00, '取款了999.0', '2023-04-19 09:37:26', '2023-04-19 09:37:26'),
	(27, 15, '1681897132956', 6, 300.00, '转账支出了300.0', '2023-04-19 09:38:53', '2023-04-19 09:38:53'),
	(28, 12, '1681897201902', 4, 10.00, '取款了10.0', '2023-04-19 09:40:02', '2023-04-19 09:40:02'),
	(29, 12, '1681897225879', 4, 2.00, '取款了2.0', '2023-04-19 09:40:26', '2023-04-19 09:40:26'),
	(30, 12, '1681897250514', 6, 22.00, '转账支出了22.0', '2023-04-19 09:40:51', '2023-04-19 09:40:51'),
	(31, 13, '1681897312673', 1, 389.12, '购买理财产品花费389.12', '2023-04-19 09:41:53', '2023-04-19 09:41:53'),
	(32, 13, '1681897331915', 2, 9999.00, '购买金融工具,转入了9999.0', '2023-04-19 09:42:12', '2023-04-19 09:42:12');

DROP TABLE IF EXISTS `yinhangka_qukuan`;
CREATE TABLE IF NOT EXISTS `yinhangka_qukuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yinhangka_id` int DEFAULT NULL COMMENT '银行卡',
  `yinhangka_qukuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '取款编号',
  `yinhangka_qukuan_jine` decimal(10,2) DEFAULT NULL COMMENT '取款金额',
  `yinhangka_qukuan_content` longtext COMMENT '取款备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '取款时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='取款';

DELETE FROM `yinhangka_qukuan`;
INSERT INTO `yinhangka_qukuan` (`id`, `yinhangka_id`, `yinhangka_qukuan_uuid_number`, `yinhangka_qukuan_jine`, `yinhangka_qukuan_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681887132741', 905.33, '取款备注1', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, 2, '1681887132737', 187.59, '取款备注2', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, 3, '1681887132649', 868.56, '取款备注3', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, 4, '1681887132711', 18.16, '取款备注4', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, 5, '1681887132661', 102.65, '取款备注5', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, 6, '1681887132683', 349.05, '取款备注6', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, 7, '1681887132725', 919.99, '取款备注7', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, 8, '1681887132665', 688.46, '取款备注8', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, 9, '1681887132741', 259.45, '取款备注9', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, 10, '1681887132699', 403.90, '取款备注10', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, 11, '1681887132672', 958.77, '取款备注11', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, 12, '1681887132713', 291.80, '取款备注12', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, 13, '1681887132685', 510.09, '取款备注13', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, 14, '1681887132678', 832.43, '取款备注14', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(15, 15, '1681897030880', 999.00, '<p>个第三个第三个</p>', '2023-04-19 09:37:25', '2023-04-19 09:37:25'),
	(16, 12, '1681897188706', 10.00, '<p>和广东省广东省</p>', '2023-04-19 09:40:02', '2023-04-19 09:40:02'),
	(17, 12, '1681897206359', 2.00, '<p>个丰东股份代沟的</p>', '2023-04-19 09:40:26', '2023-04-19 09:40:26');

DROP TABLE IF EXISTS `yinhangka_zhuanzhang`;
CREATE TABLE IF NOT EXISTS `yinhangka_zhuanzhang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yinhangka_id` int DEFAULT NULL COMMENT '银行卡',
  `yinhangka_zhuanzhang_uuid_number` varchar(200) DEFAULT NULL COMMENT '转账编号',
  `yinhangka_zhuanzhang_jine` decimal(10,2) DEFAULT NULL COMMENT '转账金额',
  `yinhang_types` int DEFAULT NULL COMMENT '银行 Search111',
  `yinhangka_zhuanzhang_jieshou_kahao` varchar(200) DEFAULT NULL COMMENT '接收卡号',
  `yinhangka_zhuanzhang_content` longtext COMMENT '转账备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '转账时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='转账';

DELETE FROM `yinhangka_zhuanzhang`;
INSERT INTO `yinhangka_zhuanzhang` (`id`, `yinhangka_id`, `yinhangka_zhuanzhang_uuid_number`, `yinhangka_zhuanzhang_jine`, `yinhang_types`, `yinhangka_zhuanzhang_jieshou_kahao`, `yinhangka_zhuanzhang_content`, `insert_time`, `create_time`) VALUES
	(1, 1, '1681887132739', 672.97, 2, '接收卡号1', '转账备注1', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(2, 2, '1681887132685', 528.02, 4, '接收卡号2', '转账备注2', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(3, 3, '1681887132728', 614.27, 4, '接收卡号3', '转账备注3', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(4, 4, '1681887132666', 347.96, 4, '接收卡号4', '转账备注4', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(5, 5, '1681887132691', 55.18, 1, '接收卡号5', '转账备注5', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(6, 6, '1681887132743', 430.25, 1, '接收卡号6', '转账备注6', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(7, 7, '1681887132738', 830.93, 1, '接收卡号7', '转账备注7', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(8, 8, '1681887132654', 552.74, 2, '接收卡号8', '转账备注8', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(9, 9, '1681887132731', 212.91, 3, '接收卡号9', '转账备注9', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(10, 10, '1681887132727', 469.40, 4, '接收卡号10', '转账备注10', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(11, 11, '1681887132669', 265.89, 3, '接收卡号11', '转账备注11', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(12, 12, '1681887132707', 344.21, 1, '接收卡号12', '转账备注12', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(13, 13, '1681887132707', 821.51, 4, '接收卡号13', '转账备注13', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(14, 14, '1681887132650', 561.78, 1, '接收卡号14', '转账备注14', '2023-04-19 06:52:12', '2023-04-19 06:52:12'),
	(15, 15, '1681897052623', 300.00, 4, '1681887132681', '<p>广东省是个个</p>', '2023-04-19 09:38:53', '2023-04-19 09:38:53'),
	(16, 12, '1681897229488', 22.00, 4, '1681887132730', '<p>地方</p>', '2023-04-19 09:40:51', '2023-04-19 09:40:51');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `zhengxindengji_types` int DEFAULT NULL COMMENT '征信等级 Search111 ',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_uuid_number`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `zhengxindengji_types`, `jinyong_types`, `create_time`) VALUES
	(1, '用户1', '123456', '1681887132689', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', 2, 1, '2023-04-19 06:52:12'),
	(2, '用户2', '123456', '1681887132717', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', 2, 1, '2023-04-19 06:52:12'),
	(3, '用户3', '123456', '1681887132679', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 2, '3@qq.com', 2, 1, '2023-04-19 06:52:12'),
	(4, '用户4', '123456', '1681896065854', '张5', '17788885555', '444222666699999999', 'upload/1681896087299.jpg', 1, '5@qq.com', 1, 2, '2023-04-19 09:21:06');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '员工邮箱',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_uuid_number`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `yuangong_email`, `jinyong_types`, `create_time`) VALUES
	(1, '员工1', '123456', '1681887132725', '员工姓名1', '17703786901', '410224199010102001', 'upload/yuangong1.jpg', 1, '1@qq.com', 1, '2023-04-19 06:52:12'),
	(2, '员工2', '123456', '1681887132691', '员工姓名2', '17703786902', '410224199010102002', 'upload/yuangong2.jpg', 1, '2@qq.com', 1, '2023-04-19 06:52:12'),
	(3, '员工3', '123456', '1681887132651', '员工姓名3', '17703786903', '410224199010102003', 'upload/yuangong3.jpg', 2, '3@qq.com', 2, '2023-04-19 06:52:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
