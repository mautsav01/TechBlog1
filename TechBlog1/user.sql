/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.5-10.4.14-MariaDB : Database - user
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`user` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `user`;

/*Table structure for table `content` */

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `blogname` varchar(500) DEFAULT NULL,
  `titledescription` varchar(500) DEFAULT NULL,
  `blog` longtext DEFAULT NULL,
  `aboutme` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `footer` varchar(500) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(244) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  CONSTRAINT `content_ibfk_1` FOREIGN KEY (`email`) REFERENCES `usertbl` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `content` */

insert  into `content`(`blogname`,`titledescription`,`blog`,`aboutme`,`description`,`categories`,`privacy`,`footer`,`email`,`id`,`Date`) values ('US has \'moral imperative\' to develop AI weapons, says panel','About Artificial INtelligence','The US should not agree to ban the use or development of autonomous weapons powered by artificial intelligence (AI) software, a government-appointed panel has said in a draft report for Congress.\r\n\r\nThe panel, led by former Google chief executive Eric Schmidt, on Tuesday concluded two days of public discussion about how the worlds biggest military power should consider AI for national security and technological advancement.','Utsav','@snofkin','Robotics','public','This is my footer','meroid13@gmail.com',1,'updated on:2021-01-28'),('THis is the blog','with no updated date','blog blog blog','meroid13@gmail.com','pass','Quantum Computing','public','foooooter','meroid13@gmail.com',2,'updated on:2021-01-27'),('This is for the search test','Description','THis is description of all item','Ram','Bahadur','Artificial Intelligence','private','I am footer','ram@gmail.com',3,'updated on:2021-01-27'),('sdkjfjd','','Write your Blog here','','','Artificial Intelligence','public','','meroid13@gmail.com',4,'2021-01-28'),('Title','description','Write your Blog here','','','Artificial Intelligence','public','','user@gmail.com',5,'2021-01-28');

/*Table structure for table `likes` */

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `likes` int(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `likes` */

insert  into `likes`(`likes`,`email`,`id`) values (1,'meroid13@gmail.com',1);

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `likkes` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `views` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `review` */

insert  into `review`(`likkes`,`comment`,`views`,`username`,`id`) values ('2021-01-27','this is comment','meroid13@gmail.com','Utsav','1'),('2021-01-27','this is next comment','meroid13@gmail.com','Utsav','1');

/*Table structure for table `usertbl` */

DROP TABLE IF EXISTS `usertbl`;

CREATE TABLE `usertbl` (
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `usertbl` */

insert  into `usertbl`(`username`,`email`,`phone`,`password`) values ('Utsav','meroid13@gmail.com','0449724650','9fedb11da1aa2ba83c6257a239869442'),('Ram','ram@gmail.com','0449724651','9fedb11da1aa2ba83c6257a239869442'),('user@gmail.com','user@gmail.com','0449724652','9fedb11da1aa2ba83c6257a239869442');

/*Table structure for table `view` */

DROP TABLE IF EXISTS `view`;

CREATE TABLE `view` (
  `id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `view` */

insert  into `view`(`id`,`email`) values ('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com'),('1','meroid13@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
