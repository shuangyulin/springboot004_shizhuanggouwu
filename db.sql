/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springbootw3o95
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootw3o95` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootw3o95`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614241131588 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-02-25 15:59:12',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-02-25 15:59:12',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-02-25 15:59:12',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-02-25 15:59:12',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-02-25 15:59:12',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-02-25 15:59:12',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614241131587,'2021-02-25 16:18:51',1614241036888,'广东省梅州市梅江区江南街道美凤路7号3江南阁','陈一','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614241243503 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1614240273437,'2021-02-25 16:04:33','shangpinxinxi',11,46,'商品名称6','http://localhost:8080/springbootw3o95/upload/shangpinxinxi_tupian6.jpg',1,99.9,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614241316050 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-02-25 15:59:12',1,1,'提问1','回复1',1),(62,'2021-02-25 15:59:12',2,2,'提问2','回复2',2),(63,'2021-02-25 15:59:12',3,3,'提问3','回复3',3),(64,'2021-02-25 15:59:12',4,4,'提问4','回复4',4),(65,'2021-02-25 15:59:12',5,5,'提问5','回复5',5),(66,'2021-02-25 15:59:12',6,6,'提问6','回复6',6),(1614241271440,'2021-02-25 16:21:10',1614241036888,NULL,'请问有衬衫吗',NULL,0),(1614241316049,'2021-02-25 16:21:55',1614241036888,1,NULL,'有',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springbootw3o95/upload/1614240661226.jpg'),(2,'picture2','http://localhost:8080/springbootw3o95/upload/1614240940289.jpg'),(3,'picture3','http://localhost:8080/springbootw3o95/upload/1614240687816.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (121,'2021-02-25 15:59:12',1,1,'评论内容1','回复内容1'),(122,'2021-02-25 15:59:12',2,2,'评论内容2','回复内容2'),(123,'2021-02-25 15:59:12',3,3,'评论内容3','回复内容3'),(124,'2021-02-25 15:59:12',4,4,'评论内容4','回复内容4'),(125,'2021-02-25 15:59:12',5,5,'评论内容5','回复内容5'),(126,'2021-02-25 15:59:12',6,6,'评论内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614241003736 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-02-25 15:59:12','标题1','简介1','http://localhost:8080/springbootw3o95/upload/1614240708477.jpg','<p>内容1</p>'),(112,'2021-02-25 15:59:12','标题2','简介2','http://localhost:8080/springbootw3o95/upload/1614240717372.jpg','<p>内容2</p>'),(113,'2021-02-25 15:59:12','标题3','简介3','http://localhost:8080/springbootw3o95/upload/1614240726927.jpg','<p>内容3</p>'),(114,'2021-02-25 15:59:12','标题4','简介4','http://localhost:8080/springbootw3o95/upload/1614240736728.jpg','<p>内容4</p>'),(115,'2021-02-25 15:59:12','标题5','简介5','http://localhost:8080/springbootw3o95/upload/1614240746687.jpg','<p>内容5</p>'),(116,'2021-02-25 15:59:12','标题6','简介6','http://localhost:8080/springbootw3o95/upload/1614240758526.jpg','<p>内容6</p>'),(1614241003735,'2021-02-25 16:16:43','服装优惠活动','优惠活动','http://localhost:8080/springbootw3o95/upload/1614240958830.jpg','<p>全场商品参加满300减40活动</p><p>活动时间：3.2-3.6</p><p><img src=\"http://localhost:8080/springbootw3o95/upload/1614241001544.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614241278782 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1614241278781,'2021-02-25 16:21:17','202122516202715446787','shangpinxinxi',1614241036888,1614240928791,'歌莉娅全棉毛织卫衣','http://localhost:8080/springbootw3o95/upload/1614240887762.jpg',1,399,399,399,399,1,'已完成','广东省梅州市梅江区江南街道美凤路7号3江南阁');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240842028 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-02-25 15:59:12','连衣裙'),(22,'2021-02-25 15:59:12','羽绒服'),(23,'2021-02-25 15:59:12','外套'),(24,'2021-02-25 15:59:12','卫衣'),(25,'2021-02-25 15:59:12','家居套装'),(26,'2021-02-25 15:59:12','衬衫'),(1614240842027,'2021-02-25 16:14:01','裙装');

/*Table structure for table `shangpinpingjia` */

DROP TABLE IF EXISTS `shangpinpingjia`;

CREATE TABLE `shangpinpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `chima` varchar(200) DEFAULT NULL COMMENT '尺码',
  `pingfen` varchar(200) NOT NULL COMMENT '评分',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `tianjiatupian` varchar(200) DEFAULT NULL COMMENT '添加图片',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614241409177 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpinpingjia` */

insert  into `shangpinpingjia`(`id`,`addtime`,`dingdanbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`yanse`,`chima`,`pingfen`,`pingjianeirong`,`tianjiatupian`,`pingjiariqi`,`yonghuming`,`lianxidianhua`,`sfsh`,`shhf`) values (51,'2021-02-25 15:59:12','订单编号1','商品名称1','商品分类1','品牌1','颜色1','尺码1','1','评价内容1','http://localhost:8080/springbootw3o95/upload/1614240548139.jpg','2021-02-24','用户名1','联系电话1','是',''),(52,'2021-02-25 15:59:12','订单编号2','商品名称2','商品分类2','品牌2','颜色2','尺码2','1','评价内容2','http://localhost:8080/springbootw3o95/upload/1614240559567.jpg','2021-02-24','用户名2','联系电话2','是',''),(53,'2021-02-25 15:59:12','订单编号3','商品名称3','商品分类3','品牌3','颜色3','尺码3','1','评价内容3','http://localhost:8080/springbootw3o95/upload/1614240568565.jpg','2021-02-24','用户名3','联系电话3','是',''),(54,'2021-02-25 15:59:12','订单编号4','商品名称4','商品分类4','品牌4','颜色4','尺码4','1','评价内容4','http://localhost:8080/springbootw3o95/upload/1614240578552.jpg','2021-02-24','用户名4','联系电话4','是',''),(55,'2021-02-25 15:59:12','订单编号5','商品名称5','商品分类5','品牌5','颜色5','尺码5','1','评价内容5','http://localhost:8080/springbootw3o95/upload/1614240589767.jpg','2021-02-24','用户名5','联系电话5','是',''),(56,'2021-02-25 15:59:12','订单编号6','商品名称6','商品分类6','品牌6','颜色6','尺码6','1','评价内容6','http://localhost:8080/springbootw3o95/upload/1614240638519.jpg','2021-02-24','用户名6','联系电话6','是',''),(1614240306547,'2021-02-25 16:05:05','1','商品名称1','商品分类1','品牌1','颜色1','XS','3','发v','http://localhost:8080/springbootw3o95/upload/1614240648288.jpg','2021-02-23','用户1','13823888881','否',NULL),(1614241409176,'2021-02-25 16:23:28','202122516202715446787','歌莉娅全棉毛织卫衣','卫衣','歌莉娅','红色','S','5','很不错的衣服，很舒服','http://localhost:8080/springbootw3o95/upload/1614241396034.jpg','2021-02-23','1','12312312312','是','感谢支持');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `chima` varchar(200) DEFAULT NULL COMMENT '尺码',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240928792 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`biaoqian`,`pinpai`,`yanse`,`chima`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (41,'2021-02-25 15:59:12','商品名称1','卫衣','http://localhost:8080/springbootw3o95/upload/1614240461031.jpg','标签1','品牌1','颜色1','XS','<p>商品详情1</p>','2021-02-25 08:07:20',2,99.9),(42,'2021-02-25 15:59:12','商品名称2','外套','http://localhost:8080/springbootw3o95/upload/1614240480618.jpg','标签2','品牌2','颜色2','XS','<p>商品详情2</p>','2021-02-25 08:07:45',3,99.9),(43,'2021-02-25 15:59:12','商品名称3','家居套装','http://localhost:8080/springbootw3o95/upload/1614240498429.jpg','标签3','品牌3','颜色3','XS','<p>商品详情3</p>','2021-02-25 08:08:04',4,99.9),(44,'2021-02-25 15:59:12','商品名称4','羽绒服','http://localhost:8080/springbootw3o95/upload/1614240511280.jpg','标签4','品牌4','颜色4','XS','<p>商品详情4</p>','2021-02-25 08:08:22',5,99.9),(45,'2021-02-25 15:59:12','商品名称5','衬衫','http://localhost:8080/springbootw3o95/upload/1614240523543.jpg','标签5','品牌5','颜色5','XS','<p>商品详情5</p>','2021-02-25 08:19:21',11,99.9),(46,'2021-02-25 15:59:12','商品名称6','连衣裙','http://localhost:8080/springbootw3o95/upload/1614240537894.jpg','标签6','品牌6','颜色6','XS','<p>商品详情6</p>','2021-02-25 08:20:49',10,99.9),(1614240928791,'2021-02-25 16:15:27','歌莉娅全棉毛织卫衣','卫衣','http://localhost:8080/springbootw3o95/upload/1614240887762.jpg','2021年春新品','歌莉娅','红色','S','<p>时尚简洁，百分百棉</p><p><img src=\"http://localhost:8080/springbootw3o95/upload/1614240925932.jpg\"></p>','2021-02-25 08:21:17',3,399);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614241255840 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1614241203364,'2021-02-25 16:20:03',1614241036888,1614240928791,'shangpinxinxi','歌莉娅全棉毛织卫衣','http://localhost:8080/springbootw3o95/upload/1614240887762.jpg'),(1614241251104,'2021-02-25 16:20:50',1614241036888,46,'shangpinxinxi','商品名称6','http://localhost:8080/springbootw3o95/upload/1614240537894.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,11,'用户1','yonghu','用户','8jaj4nfbvdpyiujm19unrkyxkqqiq11y','2021-02-25 16:04:27','2021-02-25 09:04:28'),(2,1,'abo','users','管理员','8b65pgy79yshx0s9l1d1bjcbeys7r4le','2021-02-25 16:05:48','2021-02-25 09:23:45'),(3,1614241036888,'1','yonghu','用户','w59s1pisbi8g0x8b2ur0mwjdewf0lepf','2021-02-25 16:18:05','2021-02-25 09:22:12');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','aboo','管理员','2021-02-25 15:59:12');

/*Table structure for table `yanse` */

DROP TABLE IF EXISTS `yanse`;

CREATE TABLE `yanse` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yanse` varchar(200) NOT NULL COMMENT '颜色',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yanse` (`yanse`)
) ENGINE=InnoDB AUTO_INCREMENT=1614240858378 DEFAULT CHARSET=utf8 COMMENT='颜色';

/*Data for the table `yanse` */

insert  into `yanse`(`id`,`addtime`,`yanse`) values (31,'2021-02-25 15:59:12','颜色1'),(32,'2021-02-25 15:59:12','颜色2'),(33,'2021-02-25 15:59:12','颜色3'),(34,'2021-02-25 15:59:12','颜色4'),(35,'2021-02-25 15:59:12','颜色5'),(36,'2021-02-25 15:59:12','颜色6'),(1614240849221,'2021-02-25 16:14:08','红色'),(1614240858377,'2021-02-25 16:14:17','浅蓝色');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614241036889 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-02-25 15:59:12','用户1','123456','姓名1','http://localhost:8080/springbootw3o95/upload/yonghu_touxiang1.jpg','男','13823888881',100),(12,'2021-02-25 15:59:12','用户2','123456','姓名2','http://localhost:8080/springbootw3o95/upload/yonghu_touxiang2.jpg','男','13823888882',100),(13,'2021-02-25 15:59:12','用户3','123456','姓名3','http://localhost:8080/springbootw3o95/upload/yonghu_touxiang3.jpg','男','13823888883',100),(14,'2021-02-25 15:59:12','用户4','123456','姓名4','http://localhost:8080/springbootw3o95/upload/yonghu_touxiang4.jpg','男','13823888884',100),(15,'2021-02-25 15:59:12','用户5','123456','姓名5','http://localhost:8080/springbootw3o95/upload/yonghu_touxiang5.jpg','男','13823888885',100),(16,'2021-02-25 15:59:12','用户6','123456','姓名6','http://localhost:8080/springbootw3o95/upload/yonghu_touxiang6.jpg','男','13823888886',100),(1614241036888,'2021-02-25 16:17:16','1','1','陈一','http://localhost:8080/springbootw3o95/upload/1614241102717.jpg','女','12312312312',1601);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
