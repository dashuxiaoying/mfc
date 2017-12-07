/*
SQLyog Ultimate v11.13 (64 bit)
MySQL - 5.7.17 : Database - MFC
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`MFC` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `MFC`;

/*Table structure for table `mfc_admin` */

DROP TABLE IF EXISTS `mfc_admin`;

CREATE TABLE `mfc_admin` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mfc_admin` */

insert  into `mfc_admin`(`uid`,`username`,`password`) values (1,'admin','admin'),(2,'abc','abc');

/*Table structure for table `mfc_stockin` */

DROP TABLE IF EXISTS `mfc_stockin`;

CREATE TABLE `mfc_stockin` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supply_id` int(11) DEFAULT NULL,
  `category` tinyint(4) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `checkout` tinyint(4) DEFAULT NULL COMMENT '是否结账',
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mfc_stockin` */

insert  into `mfc_stockin`(`sid`,`supply_id`,`category`,`weight`,`price`,`total`,`checkout`,`insert_date`,`update_date`) values (1,1,1,500,150,75000,1,'2017-12-07 18:38:36','2017-12-07 18:38:38'),(2,2,2,50,150,7500,0,'2017-12-07 18:38:56','2017-12-07 18:38:59');

/*Table structure for table `mfc_stockout` */

DROP TABLE IF EXISTS `mfc_stockout`;

CREATE TABLE `mfc_stockout` (
  `st_id` int(11) NOT NULL AUTO_INCREMENT,
  `st_username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `st_category` tinyint(4) DEFAULT NULL,
  `st_weight` int(11) DEFAULT NULL,
  `st_price` int(11) DEFAULT NULL,
  `st_total` int(11) DEFAULT NULL,
  `checkout` tinyint(4) DEFAULT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mfc_stockout` */

insert  into `mfc_stockout`(`st_id`,`st_username`,`st_category`,`st_weight`,`st_price`,`st_total`,`checkout`,`insert_date`,`update_date`) values (1,'zhangsan',2,500,120,6000,1,'2017-12-07 18:54:35','2017-12-07 18:54:37'),(2,'未名',1,4000,200,8000,0,'2017-12-07 18:54:39','2017-12-07 18:54:40');

/*Table structure for table `mfc_supply` */

DROP TABLE IF EXISTS `mfc_supply`;

CREATE TABLE `mfc_supply` (
  `sp_id` int(11) NOT NULL AUTO_INCREMENT,
  `sp_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insert_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mfc_supply` */

insert  into `mfc_supply`(`sp_id`,`sp_name`,`sp_phone`,`remark`,`insert_date`) values (1,'张三面条厂','15938706502','对对对','2017-12-07 18:37:09'),(2,'李四大米厂','15938706502',NULL,'2017-12-07 18:37:30');

/*Table structure for table `mfc_user` */

DROP TABLE IF EXISTS `mfc_user`;

CREATE TABLE `mfc_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surplus_flour` int(11) DEFAULT NULL,
  `surplus_bran` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mfc_user` */

insert  into `mfc_user`(`uid`,`username`,`phone`,`surplus_flour`,`surplus_bran`) values (1,'张三','15938706502',100,50),(2,'李四','15938706503',200,12);

/*Table structure for table `mfc_weight` */

DROP TABLE IF EXISTS `mfc_weight`;

CREATE TABLE `mfc_weight` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `gross_weight` int(11) DEFAULT NULL,
  `net_weight` int(11) DEFAULT NULL,
  `ratio` int(11) DEFAULT NULL COMMENT '扣杂比率',
  `price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `gross_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `net_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insert_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `mfc_weight` */

insert  into `mfc_weight`(`wid`,`user_id`,`gross_weight`,`net_weight`,`ratio`,`price`,`total`,`status`,`gross_img`,`net_img`,`insert_date`,`update_date`) values (1,1,500,300,30,105,21000,0,NULL,NULL,'2017-12-07 14:43:58','2017-12-07 14:44:06'),(2,2,2000,800,30,105,126000,1,NULL,NULL,'2017-12-07 14:44:03','2017-12-07 14:44:09');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
