# Host: localhost  (Version: 5.5.22)
# Date: 2016-12-13 12:46:25
# Generator: MySQL-Front 5.3  (Build 4.9)

/*!40101 SET NAMES utf8 */;

#
# Source for table "tb_order"
#

DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `ddid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `fangxing` varchar(50) NOT NULL,
  `yds` int(20) NOT NULL,
   PRIMARY KEY (`ddid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;

#
# Data for table "tb_order"
#

INSERT INTO `tb_order` VALUES (28,'123',5,'经典房',1),(29,'123',5,'经典房',1),(30,'123',5,'经典房',1),(31,'123',5,'行政套房',1);

#
# Source for table "tb_room"
#

DROP TABLE IF EXISTS `tb_room`;
CREATE TABLE `tb_room` (
  `fangxing` varchar(50) NOT NULL,
  `num` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

#
# Data for table "tb_room"
#

INSERT INTO `tb_room` VALUES ('经典房',9),('行政套房',9),('总统套房',10);

#
# Source for table "tb_user"
#

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

#
# Data for table "tb_user"
#

INSERT INTO `tb_user` VALUES (4,'谢志聪','123','男','123','123'),(5,'123','123','男','123','123');
