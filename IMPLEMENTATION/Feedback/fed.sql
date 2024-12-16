/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - feedback
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`feedback` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `feedback`;

/*Table structure for table `feed` */

DROP TABLE IF EXISTS `feed`;

CREATE TABLE `feed` (
  `college` varchar(200) DEFAULT NULL,
  `about` varchar(2000) DEFAULT NULL,
  `district` varchar(200) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feed` */

insert  into `feed`(`college`,`about`,`district`,`feedback`) values ('Mahendra Engineering College','The Mahendra renowned educationist with an object of imparting a high standard of education to rural children.  ','Namakkal','Very Good Infrastructure'),('PAAVAI ENGINEERING COLLEGE','To strive to be a globally model Institution all set for taking ','Namakkal','Good eduaction and 100%  placement'),('SRM Institute of Science and Technology','A place for learning, discovery, innovation, expression and discourse','Chengalpattu','Beautiful Campus and Friendly in nature');

/*Table structure for table `feed1` */

DROP TABLE IF EXISTS `feed1`;

CREATE TABLE `feed1` (
  `college` varchar(200) DEFAULT NULL,
  `about` varchar(200) DEFAULT NULL,
  `district` varchar(200) DEFAULT NULL,
  `feed` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feed1` */

insert  into `feed1`(`college`,`about`,`district`,`feed`) values ('Kaveri Engineering College','The kaveri college have more institutions and help to grow the all peoples','Salem','They give proper educations');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `image` varchar(2000) DEFAULT NULL,
  `college` varchar(2000) DEFAULT NULL,
  `academics` varchar(2000) DEFAULT NULL,
  `department` varchar(2000) DEFAULT NULL,
  `placement` varchar(2000) DEFAULT NULL,
  `activites` varchar(2000) DEFAULT NULL,
  `facilities` varchar(2000) DEFAULT NULL,
  `about` varchar(2000) DEFAULT NULL,
  `district` varchar(2000) DEFAULT NULL,
  `location` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`image`,`college`,`academics`,`department`,`placement`,`activites`,`facilities`,`about`,`district`,`location`) values ('mahendra.gif','Mahendra Engineering College','B.E\r\nB.TECH\r\nM.E\r\nM.TECH\r\nMBA','EEE\r\nCSE\r\nIT\r\nMECH\r\nCIVIL\r\nAGRI\r\nAI\r\nHR\r\n','1000 Companies tieups','Placement \r\nNCC\r\nNSS\r\nWEC\r\nCareer Development','Hostel\r\nLibrary\r\nCanteen\r\nSports\r\nOthers\r\n','The Mahendra Educational Trust was established in the year 1978 by Shri. M. G. Bharath Kumar, a renowned educationist with an object of imparting a high standard of education to rural children.','Namakkal',' midway between Salem and Tiruchengode..'),('paavi.jpg','PAAVAI ENGINEERING COLLEGE','BE\r\nB.Tech','IT\r\nCSE\r\nEEE\r\nECE\r\nEIE\r\nAI\r\nBIO MEDICAL\r\nAGRI','1000+ companies','NSS\r\nNCR\r\nPlacements\r\nothers','Hostel\r\nCanteen\r\nLibrary','To strive to be a globally model Institution all set for taking ?lead','Namakkal','Paavai Institutions,\r\nPaavai Nagar, NH-44,\r\nPachal -637 018.\r\nNamakkal Dist. Tamilnadu\r\nPh No:+91 9965566888'),('srm.jpg','SRM Institute of Science and Technology','B.Tech\r\nM.Tech','CSE\r\nIT\r\nMECH\r\nAGRI\r\nCIVIL\r\nML\r\nCHEMICAL\r\n','3000+ Companies','Researches\r\nPlacement activities','Hostel\r\ncanteen\r\nLibrary \r\nBuses\r\n','A place for learning, discovery, innovation, expression and discourse','Chengalpattu','SRM Nagar, Kattankulathur '),('loyala.jpg','Loyola College','UG\r\nPG','IT\r\nCSE\r\nEEE\r\nMultimedia\r\nPetroChemical','100% Placement','Entrance exam\r\nNCIR','Hostel','To form credible, innovative and socially committed citizens.','Chennai','Loyola College, PB 3301,\r\nSterling Road,\r\nNungambakkam,\r\nChennai ');

/*Table structure for table `sreg` */

DROP TABLE IF EXISTS `sreg`;

CREATE TABLE `sreg` (
  `profile` varchar(200) DEFAULT NULL,
  `regno` int(20) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sreg` */

insert  into `sreg`(`profile`,`regno`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`location`) values ('13-132360_size-admin-user-icon-png.png',162071004,'deepa','deepa','lakshmi@gmail.com','14.07.1998','female','8456789987','Chennai'),('users.jpg',162071004,'Deepa G','deepag','lakshmi@gmail.com','14.07.1998','female','8456789987','Chennai');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `profile` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `pass` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`profile`,`id`,`user`,`pass`,`email`,`dob`,`gender`,`mobile`,`location`) values ('admin.png',1,'lakshmi','lakshmi','lakshmi@gmail.com','14.07.1998','female','8456789987','Chennai');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
