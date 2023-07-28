/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - hsp_store
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`hsp_store` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hsp_store`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('admin','admin');

/*Table structure for table `book_kit` */

DROP TABLE IF EXISTS `book_kit`;

CREATE TABLE `book_kit` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(100) default NULL,
  `kit_id` varchar(100) default NULL,
  `price` varchar(100) default NULL,
  `date` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `book_kit` */

insert  into `book_kit`(`id`,`email`,`kit_id`,`price`,`date`) values (1,'kishan@gmail.com','4','560','2023-07-23 19:47:46'),(2,'kishan@gmail.com','4','560','2023-07-23 20:04:26');

/*Table structure for table `covidkit` */

DROP TABLE IF EXISTS `covidkit`;

CREATE TABLE `covidkit` (
  `id` int(11) NOT NULL auto_increment,
  `kitname` varchar(1000) default NULL,
  `price` varchar(100) default NULL,
  `precaution` longtext,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `covidkit` */

insert  into `covidkit`(`id`,`kitname`,`price`,`precaution`) values (4,'Covifind Covid-19 Rapid Antigen and Covid Test Kit- ICMR Approved for Home Use','560','be careful while using');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `hsp` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `mobile` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`email`,`hsp`,`password`,`mobile`) values (13,'kishan','kishan@gmail.com','gandi','123','1234567890');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
