/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.0.18-nt : Database - dormitoryelectricity
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dormitoryelectricity` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dormitoryelectricity`;

/*Table structure for table `dorimitory` */

DROP TABLE IF EXISTS `dorimitory`;

CREATE TABLE `dorimitory` (
  `dormitory_id` varchar(5) NOT NULL,
  `ridgepole` int(2) default NULL,
  PRIMARY KEY  (`dormitory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dorimitory` */

insert  into `dorimitory`(`dormitory_id`,`ridgepole`) values ('0',0),('10588',10),('10602',10),('1532',1),('9532',9);

/*Table structure for table `electricity` */

DROP TABLE IF EXISTS `electricity`;

CREATE TABLE `electricity` (
  `eId` int(11) NOT NULL auto_increment COMMENT '电量Id',
  `ele_price` double(5,2) default NULL COMMENT '电价',
  `pre_deposit` double(5,2) default NULL COMMENT '预存款',
  `overage` double(5,2) default NULL COMMENT '余额',
  `electricity` float(5,2) default NULL COMMENT '月使用电量',
  `timeDate` date default NULL COMMENT '年月',
  `dormitory_id` varchar(5) default NULL,
  PRIMARY KEY  (`eId`),
  KEY `dormitory_id` (`dormitory_id`),
  CONSTRAINT `electricity_ibfk_1` FOREIGN KEY (`dormitory_id`) REFERENCES `dorimitory` (`dormitory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `electricity` */

insert  into `electricity`(`eId`,`ele_price`,`pre_deposit`,`overage`,`electricity`,`timeDate`,`dormitory_id`) values (1,0.50,200.00,150.00,30.00,'2016-10-31','10602'),(2,0.50,200.00,135.00,70.00,'2016-11-30','10602'),(3,0.50,200.00,100.00,50.00,'2016-12-31','10602'),(4,0.50,200.00,75.00,80.00,'2017-01-31','10602'),(5,0.50,200.00,35.00,70.00,'2017-02-28','10602'),(6,0.50,170.00,170.00,30.00,'2017-03-31','10602'),(7,0.40,170.00,155.00,30.50,'2017-04-18','10602'),(8,0.50,180.00,150.00,30.50,'2017-04-20','9532'),(10,0.50,170.00,155.00,33.70,'2017-04-20','10602'),(15,0.50,200.00,150.00,30.00,'2017-04-21','9532'),(19,0.50,200.00,150.00,31.70,'2017-04-21','10602');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `username` varchar(32) default NULL,
  `password` varchar(32) default NULL,
  `phone` varchar(11) default NULL,
  `dormitory_id` varchar(5) default NULL,
  `u_type` varchar(10) default NULL,
  PRIMARY KEY  (`id`),
  KEY `dormitory_id` (`dormitory_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dormitory_id`) REFERENCES `dorimitory` (`dormitory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`username`,`password`,`phone`,`dormitory_id`,`u_type`) values (7,'管理','123123','13233333333','0','0'),(2014100444,'唐上','123123','13333333333','9532','1'),(2014100446,'张翔','zx0925','13685621653','10602','1'),(2014110629,'马建','123123','13856213265','10602','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
