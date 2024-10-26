/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - fangwuzulinguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fangwuzulinguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fangwuzulinguanlixitong`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `baoxiu_uuid_number` varchar(200) DEFAULT NULL COMMENT '报修编号',
  `baoxiu_address` varchar(200) DEFAULT NULL COMMENT '报修标题 Search111  ',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修位置',
  `baoxiu_types` int(11) NOT NULL COMMENT '报修类型 Search111 ',
  `baoxiu_content` longtext COMMENT '报修内容',
  `baoxiu_money` decimal(10,2) DEFAULT NULL COMMENT '报修费用 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间',
  `baoxiu_zhuangtai_types` int(11) DEFAULT '1' COMMENT '报修状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`yonghu_id`,`baoxiu_uuid_number`,`baoxiu_address`,`baoxiu_name`,`baoxiu_types`,`baoxiu_content`,`baoxiu_money`,`insert_time`,`baoxiu_zhuangtai_types`,`create_time`) values (1,1,'1679554992982','报修标题1','报修位置1',1,'报修内容1','214.68','2023-03-23 15:03:12',1,'2023-03-23 15:03:12'),(2,3,'1679554993007','报修标题2','报修位置2',2,'报修内容2','841.09','2023-03-23 15:03:12',1,'2023-03-23 15:03:12'),(3,3,'1679554992943','报修标题3','报修位置3',1,'报修内容3','135.02','2023-03-23 15:03:12',1,'2023-03-23 15:03:12'),(4,1,'1679554992980','报修标题4','报修位置4',4,'报修内容4','803.96','2023-03-23 15:03:12',1,'2023-03-23 15:03:12'),(5,2,'1679554992985','报修标题5','报修位置5',4,'报修内容5','804.90','2023-03-23 15:03:12',2,'2023-03-23 15:03:12'),(6,1,'1679554992959','报修标题6','报修位置6',2,'报修内容6','828.76','2023-03-23 15:03:12',1,'2023-03-23 15:03:12'),(7,2,'1679554992942','报修标题7','报修位置7',2,'报修内容7','955.66','2023-03-23 15:03:12',2,'2023-03-23 15:03:12'),(8,2,'1679554992919','报修标题8','报修位置8',2,'报修内容8','408.43','2023-03-23 15:03:12',2,'2023-03-23 15:03:12'),(9,3,'1679554993008','报修标题9','报修位置9',3,'报修内容9','832.71','2023-03-23 15:03:12',1,'2023-03-23 15:03:12'),(10,3,'1679554992998','报修标题10','报修位置10',4,'报修内容10','759.51','2023-03-23 15:03:12',2,'2023-03-23 15:03:12'),(11,2,'1679554993009','报修标题11','报修位置11',1,'报修内容11','450.57','2023-03-23 15:03:12',1,'2023-03-23 15:03:12'),(12,3,'1679554993007','报修标题12','报修位置12',4,'报修内容12','379.24','2023-03-23 15:03:12',2,'2023-03-23 15:03:12'),(13,2,'1679554992945','报修标题13','报修位置13',4,'报修内容13','715.02','2023-03-23 15:03:12',2,'2023-03-23 15:03:12'),(14,2,'1679554992944','报修标题14','报修位置14',1,'报修内容14','415.52','2023-03-23 15:03:12',1,'2023-03-23 15:03:12'),(15,1,'1679556015385','2266+','262',3,'<p>03203165</p>','80.00','2023-03-23 15:20:23',2,'2023-03-23 15:20:23'),(16,1,'1679556886079','丫丫','住址',2,'<p>内容</p>','800.00','2023-03-23 15:35:08',2,'2023-03-23 15:35:08');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-23 15:02:17'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-23 15:02:17'),(3,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-23 15:02:17'),(4,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-23 15:02:17'),(5,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-23 15:02:18'),(6,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-23 15:02:18'),(7,'fangyuan_types','房源类型',1,'房源类型1',NULL,NULL,'2023-03-23 15:02:18'),(8,'fangyuan_types','房源类型',2,'房源类型2',NULL,NULL,'2023-03-23 15:02:18'),(9,'fangyuan_types','房源类型',3,'房源类型3',NULL,NULL,'2023-03-23 15:02:18'),(10,'fangyuan_types','房源类型',4,'房源类型4',NULL,NULL,'2023-03-23 15:02:18'),(11,'fangyuan_order_types','订单类型',101,'已缴纳订金',NULL,NULL,'2023-03-23 15:02:18'),(12,'fangyuan_order_types','订单类型',102,'已退还订金',NULL,NULL,'2023-03-23 15:02:18'),(13,'fangyuan_order_types','订单类型',103,'已上传合同',NULL,NULL,'2023-03-23 15:02:18'),(14,'fangyuan_order_types','订单类型',104,'已签订合同',NULL,NULL,'2023-03-23 15:02:18'),(15,'fangyuan_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-23 15:02:18'),(16,'baoxiu_types','报修类型',1,'报修类型1',NULL,NULL,'2023-03-23 15:02:18'),(17,'baoxiu_types','报修类型',2,'报修类型2',NULL,NULL,'2023-03-23 15:02:18'),(18,'baoxiu_types','报修类型',3,'报修类型3',NULL,NULL,'2023-03-23 15:02:18'),(19,'baoxiu_types','报修类型',4,'报修类型4',NULL,NULL,'2023-03-23 15:02:18'),(20,'baoxiu_zhuangtai_types','报修状态',1,'已报修',NULL,NULL,'2023-03-23 15:02:18'),(21,'baoxiu_zhuangtai_types','报修状态',2,'已维修',NULL,NULL,'2023-03-23 15:02:18'),(22,'fangyuan_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-03-23 15:02:18'),(23,'fangyuan_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-03-23 15:02:18'),(24,'fangyuan_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-03-23 15:02:18');

/*Table structure for table `fangyuan` */

DROP TABLE IF EXISTS `fangyuan`;

CREATE TABLE `fangyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangyuan_name` varchar(200) DEFAULT NULL COMMENT '房源名称  Search111 ',
  `fangyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '房源编号  Search111 ',
  `fangyuan_photo` varchar(200) DEFAULT NULL COMMENT '房源照片',
  `fangyuan_types` int(11) DEFAULT NULL COMMENT '房源类型 Search111',
  `fangyuan_kucun_number` int(11) DEFAULT NULL COMMENT '可以时长/月',
  `fangyuan_new_money` decimal(10,2) DEFAULT NULL COMMENT '租赁价格/月 ',
  `fangyuan_content` text COMMENT '房源介绍 ',
  `fangyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='租房房源';

/*Data for the table `fangyuan` */

insert  into `fangyuan`(`id`,`fangyuan_name`,`fangyuan_uuid_number`,`fangyuan_photo`,`fangyuan_types`,`fangyuan_kucun_number`,`fangyuan_new_money`,`fangyuan_content`,`fangyuan_delete`,`create_time`) values (1,'房源名称1','1679554992975','upload/fangyuan1.jpg',4,101,'479.89','房源介绍1',1,'2023-03-23 15:03:12'),(2,'房源名称2','1679554993007','upload/fangyuan2.jpg',1,102,'162.83','房源介绍2',1,'2023-03-23 15:03:12'),(3,'房源名称3','1679554992980','upload/fangyuan3.jpg',2,103,'180.66','房源介绍3',1,'2023-03-23 15:03:12'),(4,'房源名称4','1679554993016','upload/fangyuan4.jpg',3,104,'344.95','房源介绍4',1,'2023-03-23 15:03:12'),(5,'房源名称5','1679554992946','upload/fangyuan5.jpg',1,105,'224.15','房源介绍5',1,'2023-03-23 15:03:12'),(6,'房源名称6','1679554992936','upload/fangyuan6.jpg',3,106,'445.43','房源介绍6',1,'2023-03-23 15:03:12'),(7,'房源名称7','1679554992930','upload/fangyuan7.jpg',2,107,'396.46','房源介绍7',1,'2023-03-23 15:03:12'),(8,'房源名称8','1679554993002','upload/fangyuan8.jpg',2,108,'289.64','房源介绍8',1,'2023-03-23 15:03:12'),(9,'房源名称9','1679554992993','upload/fangyuan9.jpg',3,109,'360.28','房源介绍9',1,'2023-03-23 15:03:12'),(10,'房源名称10','1679554992976','upload/fangyuan10.jpg',2,1009,'160.58','房源介绍10',1,'2023-03-23 15:03:12'),(11,'房源名称11','1679554992965','upload/fangyuan11.jpg',2,1011,'202.36','房源介绍11',1,'2023-03-23 15:03:12'),(12,'房源名称12','1679554992932','upload/fangyuan12.jpg',1,1011,'195.03','房源介绍12',1,'2023-03-23 15:03:12'),(13,'房源名称13','1679554993009','upload/fangyuan13.jpg',3,1013,'431.76','房源介绍13',1,'2023-03-23 15:03:12'),(14,'房源名称14','1679554993008','upload/fangyuan14.jpg',4,1014,'237.93','房源介绍14',1,'2023-03-23 15:03:12');

/*Table structure for table `fangyuan_commentback` */

DROP TABLE IF EXISTS `fangyuan_commentback`;

CREATE TABLE `fangyuan_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangyuan_id` int(11) DEFAULT NULL COMMENT '租房',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangyuan_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='租房评价';

/*Data for the table `fangyuan_commentback` */

insert  into `fangyuan_commentback`(`id`,`fangyuan_id`,`yonghu_id`,`fangyuan_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-03-23 15:03:12','回复信息1','2023-03-23 15:03:12','2023-03-23 15:03:12'),(2,2,1,'评价内容2','2023-03-23 15:03:12','回复信息2','2023-03-23 15:03:12','2023-03-23 15:03:12'),(3,3,2,'评价内容3','2023-03-23 15:03:12','回复信息3','2023-03-23 15:03:12','2023-03-23 15:03:12'),(4,4,3,'评价内容4','2023-03-23 15:03:12','回复信息4','2023-03-23 15:03:12','2023-03-23 15:03:12'),(5,5,1,'评价内容5','2023-03-23 15:03:12','回复信息5','2023-03-23 15:03:12','2023-03-23 15:03:12'),(6,6,3,'评价内容6','2023-03-23 15:03:12','回复信息6','2023-03-23 15:03:12','2023-03-23 15:03:12'),(7,7,1,'评价内容7','2023-03-23 15:03:12','回复信息7','2023-03-23 15:03:12','2023-03-23 15:03:12'),(8,8,2,'评价内容8','2023-03-23 15:03:12','回复信息8','2023-03-23 15:03:12','2023-03-23 15:03:12'),(9,9,3,'评价内容9','2023-03-23 15:03:12','回复信息9','2023-03-23 15:03:12','2023-03-23 15:03:12'),(10,10,3,'评价内容10','2023-03-23 15:03:12','回复信息10','2023-03-23 15:03:12','2023-03-23 15:03:12'),(11,11,3,'评价内容11','2023-03-23 15:03:12','回复信息11','2023-03-23 15:03:12','2023-03-23 15:03:12'),(12,12,2,'评价内容12','2023-03-23 15:03:12','回复信息12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(13,13,3,'评价内容13','2023-03-23 15:03:12','回复信息13','2023-03-23 15:03:12','2023-03-23 15:03:12'),(14,14,2,'评价内容14','2023-03-23 15:03:12','回复信息14','2023-03-23 15:03:12','2023-03-23 15:03:12'),(15,12,1,'不错','2023-03-23 15:22:07','呀','2023-03-23 15:36:25','2023-03-23 15:22:07'),(16,10,1,'原始的','2023-03-23 15:37:47','好的','2023-03-23 15:37:56','2023-03-23 15:37:47');

/*Table structure for table `fangyuan_order` */

DROP TABLE IF EXISTS `fangyuan_order`;

CREATE TABLE `fangyuan_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangyuan_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `fangyuan_id` int(11) DEFAULT NULL COMMENT '房源',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `fangyuan_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `fangyuan_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `fangyuan_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房源租赁';

/*Data for the table `fangyuan_order` */

insert  into `fangyuan_order`(`id`,`fangyuan_order_uuid_number`,`fangyuan_id`,`yonghu_id`,`buy_number`,`fangyuan_order_time`,`fangyuan_order_true_price`,`fangyuan_order_types`,`insert_time`,`create_time`) values (1,'1679555752738',12,1,1,'2023-03-23 15:15:51','195.03',105,'2023-03-23 15:15:53','2023-03-23 15:15:53'),(2,'1679556928653',12,1,1,'2023-03-23 15:35:24','195.03',102,'2023-03-23 15:35:29','2023-03-23 15:35:29'),(3,'1679556947993',10,1,1,'2023-03-23 15:35:45','160.58',105,'2023-03-23 15:35:48','2023-03-23 15:35:48');

/*Table structure for table `fangyuan_yuyue` */

DROP TABLE IF EXISTS `fangyuan_yuyue`;

CREATE TABLE `fangyuan_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangyuan_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `fangyuan_id` int(11) DEFAULT NULL COMMENT '房源',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangyuan_yuyue_text` text COMMENT '报名理由',
  `fangyuan_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `fangyuan_yuyue_yesno_text` text COMMENT '审核回复',
  `fangyuan_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `fangyuan_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='租房预约';

/*Data for the table `fangyuan_yuyue` */

insert  into `fangyuan_yuyue`(`id`,`fangyuan_yuyue_uuid_number`,`fangyuan_id`,`yonghu_id`,`fangyuan_yuyue_text`,`fangyuan_yuyue_yesno_types`,`fangyuan_yuyue_yesno_text`,`fangyuan_yuyue_shenhe_time`,`fangyuan_yuyue_time`,`insert_time`,`create_time`) values (1,'1679554993028',1,1,'报名理由1',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(2,'1679554992944',2,2,'报名理由2',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(3,'1679554993017',3,2,'报名理由3',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(4,'1679554992934',4,3,'报名理由4',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(5,'1679554992998',5,2,'报名理由5',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(6,'1679554993021',6,1,'报名理由6',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(7,'1679554993013',7,2,'报名理由7',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(8,'1679554993007',8,2,'报名理由8',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(9,'1679554993001',9,3,'报名理由9',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(10,'1679554992941',10,3,'报名理由10',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(11,'1679554992948',11,1,'报名理由11',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(12,'1679554992933',12,3,'报名理由12',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(13,'1679554992977',13,1,'报名理由13',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(14,'1679554992931',14,1,'报名理由14',1,NULL,NULL,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(15,'1679555929656',14,1,'99999',1,NULL,NULL,'2023-03-23 15:18:44','2023-03-23 15:18:50','2023-03-23 15:18:50'),(16,'1679556832361',14,1,'看房',2,'好的哦','2023-03-23 15:38:26','2023-03-23 15:33:46','2023-03-23 15:33:52','2023-03-23 15:33:52');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',3,NULL,'发布内容1',21,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(2,'帖子标题2',1,NULL,'发布内容2',482,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(3,'帖子标题3',3,NULL,'发布内容3',277,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(4,'帖子标题4',2,NULL,'发布内容4',142,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(5,'帖子标题5',3,NULL,'发布内容5',404,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(6,'帖子标题6',2,NULL,'发布内容6',87,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(7,'帖子标题7',2,NULL,'发布内容7',150,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(8,'帖子标题8',1,NULL,'发布内容8',233,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(9,'帖子标题9',2,NULL,'发布内容9',107,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(10,'帖子标题10',3,NULL,'发布内容10',234,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(11,'帖子标题11',3,NULL,'发布内容11',337,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(12,'帖子标题12',1,NULL,'发布内容12',104,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(13,'帖子标题13',1,NULL,'发布内容13',383,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(14,'帖子标题14',1,NULL,'发布内容14',329,1,'2023-03-23 15:03:12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(15,'帖子',1,NULL,'<p>帖子</p>',NULL,1,'2023-03-23 15:34:15',NULL,'2023-03-23 15:34:15'),(16,NULL,NULL,1,'11',15,2,'2023-03-23 15:39:01',NULL,'2023-03-23 15:39:01');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-23 15:03:12','公告详情1','2023-03-23 15:03:12'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-23 15:03:12','公告详情2','2023-03-23 15:03:12'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-23 15:03:12','公告详情3','2023-03-23 15:03:12'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-23 15:03:12','公告详情4','2023-03-23 15:03:12'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-23 15:03:12','公告详情5','2023-03-23 15:03:12'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-23 15:03:12','公告详情6','2023-03-23 15:03:12'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-23 15:03:12','公告详情7','2023-03-23 15:03:12'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-23 15:03:12','公告详情8','2023-03-23 15:03:12'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-23 15:03:12','公告详情9','2023-03-23 15:03:12'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-23 15:03:12','公告详情10','2023-03-23 15:03:12'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-23 15:03:12','公告详情11','2023-03-23 15:03:12'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-03-23 15:03:12','公告详情12','2023-03-23 15:03:12'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-23 15:03:12','公告详情13','2023-03-23 15:03:12'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-23 15:03:12','公告详情14','2023-03-23 15:03:12');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '投诉建议标题  Search111 ',
  `liuyan_text` longtext COMMENT '投诉建议内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '投诉建议时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='投诉建议';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,'投诉建议标题1','投诉建议内容1','2023-03-23 15:03:12','回复信息1','2023-03-23 15:03:12','2023-03-23 15:03:12'),(2,2,'投诉建议标题2','投诉建议内容2','2023-03-23 15:03:12','回复信息2','2023-03-23 15:03:12','2023-03-23 15:03:12'),(3,1,'投诉建议标题3','投诉建议内容3','2023-03-23 15:03:12','回复信息3','2023-03-23 15:03:12','2023-03-23 15:03:12'),(4,3,'投诉建议标题4','投诉建议内容4','2023-03-23 15:03:12','回复信息4','2023-03-23 15:03:12','2023-03-23 15:03:12'),(5,3,'投诉建议标题5','投诉建议内容5','2023-03-23 15:03:12','回复信息5','2023-03-23 15:03:12','2023-03-23 15:03:12'),(6,3,'投诉建议标题6','投诉建议内容6','2023-03-23 15:03:12','回复信息6','2023-03-23 15:03:12','2023-03-23 15:03:12'),(7,3,'投诉建议标题7','投诉建议内容7','2023-03-23 15:03:12','回复信息7','2023-03-23 15:03:12','2023-03-23 15:03:12'),(8,2,'投诉建议标题8','投诉建议内容8','2023-03-23 15:03:12','回复信息8','2023-03-23 15:03:12','2023-03-23 15:03:12'),(9,3,'投诉建议标题9','投诉建议内容9','2023-03-23 15:03:12','回复信息9','2023-03-23 15:03:12','2023-03-23 15:03:12'),(10,3,'投诉建议标题10','投诉建议内容10','2023-03-23 15:03:12','回复信息10','2023-03-23 15:03:12','2023-03-23 15:03:12'),(11,1,'投诉建议标题11','投诉建议内容11','2023-03-23 15:03:12','回复信息11','2023-03-23 15:03:12','2023-03-23 15:03:12'),(12,3,'投诉建议标题12','投诉建议内容12','2023-03-23 15:03:12','回复信息12','2023-03-23 15:03:12','2023-03-23 15:03:12'),(13,1,'投诉建议标题13','投诉建议内容13','2023-03-23 15:03:12','回复信息13','2023-03-23 15:03:12','2023-03-23 15:03:12'),(14,3,'投诉建议标题14','投诉建议内容14','2023-03-23 15:03:12','回复信息14','2023-03-23 15:03:12','2023-03-23 15:03:12'),(15,1,'不好','建议','2023-03-23 15:34:32','好的 ','2023-03-23 15:38:41','2023-03-23 15:34:32');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','re7v6w898y49gwzp6ui0ik13imysa8dx','2023-03-23 15:04:09','2023-03-23 16:33:36'),(2,1,'admin','users','管理员','qrv8wbcrb16wnhbvwe9zfnvehdezvusv','2023-03-23 15:11:45','2023-03-23 16:35:58');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-23 15:02:17');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`new_money`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'291.36','1@qq.com','2023-03-23 15:03:12'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'244.63','2@qq.com','2023-03-23 15:03:12'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'645.12','3@qq.com','2023-03-23 15:03:12');

/*Table structure for table `zufanghetong` */

DROP TABLE IF EXISTS `zufanghetong`;

CREATE TABLE `zufanghetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangyuan_order_id` int(11) DEFAULT NULL COMMENT '租房订单',
  `zufanghetong_name` varchar(200) DEFAULT NULL COMMENT '租房合同  Search111 ',
  `zufanghetong_file` varchar(200) DEFAULT NULL COMMENT '上传租房合同',
  `shoufanghetong_text` text COMMENT '备注',
  `zufanghetong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='租房合同';

/*Data for the table `zufanghetong` */

insert  into `zufanghetong`(`id`,`fangyuan_order_id`,`zufanghetong_name`,`zufanghetong_file`,`shoufanghetong_text`,`zufanghetong_delete`,`create_time`) values (1,1,'租房合同1','upload/file.rar','备注1',2,'2023-03-23 15:03:12'),(2,2,'租房合同2','upload/file.rar','备注2',2,'2023-03-23 15:03:12'),(3,3,'租房合同3','upload/file.rar','备注3',2,'2023-03-23 15:03:12'),(4,4,'租房合同4','upload/file.rar','备注4',2,'2023-03-23 15:03:12'),(5,5,'租房合同5','upload/file.rar','备注5',2,'2023-03-23 15:03:12'),(6,6,'租房合同6','upload/file.rar','备注6',2,'2023-03-23 15:03:12'),(7,7,'租房合同7','upload/file.rar','备注7',2,'2023-03-23 15:03:12'),(8,8,'租房合同8','upload/file.rar','备注8',2,'2023-03-23 15:03:12'),(9,9,'租房合同9','upload/file.rar','备注9',2,'2023-03-23 15:03:12'),(10,10,'租房合同10','upload/file.rar','备注10',2,'2023-03-23 15:03:12'),(11,11,'租房合同11','upload/file.rar','备注11',2,'2023-03-23 15:03:12'),(12,12,'租房合同12','upload/file.rar','备注12',2,'2023-03-23 15:03:12'),(13,13,'租房合同13','upload/file.rar','备注13',2,'2023-03-23 15:03:12'),(14,14,'租房合同14','upload/file.rar','备注14',2,'2023-03-23 15:03:12'),(15,1,'165','/upload/1679556182869.jpg','1651',1,'2023-03-23 15:23:05'),(16,3,'合同','/upload/1679557032479.jpg','合同',1,'2023-03-23 15:37:15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
