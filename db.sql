-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootp40tf
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `springbootp40tf`
--

/*!40000 DROP DATABASE IF EXISTS `springbootp40tf`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootp40tf` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootp40tf`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussdongqiushipin`
--

DROP TABLE IF EXISTS `discussdongqiushipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussdongqiushipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='懂球视频评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussdongqiushipin`
--

LOCK TABLES `discussdongqiushipin` WRITE;
/*!40000 ALTER TABLE `discussdongqiushipin` DISABLE KEYS */;
INSERT INTO `discussdongqiushipin` VALUES (81,'2021-12-13 07:11:17',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-12-13 07:11:17',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-12-13 07:11:17',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-12-13 07:11:17',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-12-13 07:11:17',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-12-13 07:11:17',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussdongqiushipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dongqiushipin`
--

DROP TABLE IF EXISTS `dongqiushipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dongqiushipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='懂球视频';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dongqiushipin`
--

LOCK TABLES `dongqiushipin` WRITE;
/*!40000 ALTER TABLE `dongqiushipin` DISABLE KEYS */;
INSERT INTO `dongqiushipin` VALUES (31,'2021-12-13 07:11:17','视频名称1','','upload/dongqiushipin_fengmian1.jpg','2021-12-13 15:11:17','作者1',1,1,1,1,'2021-12-13 15:11:17',1),(32,'2021-12-13 07:11:17','视频名称2','','upload/dongqiushipin_fengmian2.jpg','2021-12-13 15:11:17','作者2',2,2,2,2,'2021-12-13 15:11:17',2),(33,'2021-12-13 07:11:17','视频名称3','','upload/dongqiushipin_fengmian3.jpg','2021-12-13 15:11:17','作者3',3,3,3,3,'2021-12-13 15:11:17',3),(34,'2021-12-13 07:11:17','视频名称4','','upload/dongqiushipin_fengmian4.jpg','2021-12-13 15:11:17','作者4',4,4,4,4,'2021-12-13 15:11:17',4),(35,'2021-12-13 07:11:17','视频名称5','','upload/dongqiushipin_fengmian5.jpg','2021-12-13 15:11:17','作者5',5,5,5,5,'2021-12-13 15:11:17',5),(36,'2021-12-13 07:11:17','视频名称6','','upload/dongqiushipin_fengmian6.jpg','2021-12-13 15:11:17','作者6',6,6,6,6,'2021-12-13 15:11:17',6);
/*!40000 ALTER TABLE `dongqiushipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fenxiangshipin`
--

DROP TABLE IF EXISTS `fenxiangshipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fenxiangshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shangchuanshijian` varchar(200) DEFAULT NULL COMMENT '上传时间',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='分享视频';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fenxiangshipin`
--

LOCK TABLES `fenxiangshipin` WRITE;
/*!40000 ALTER TABLE `fenxiangshipin` DISABLE KEYS */;
INSERT INTO `fenxiangshipin` VALUES (41,'2021-12-13 07:11:17','视频名称1','用户账号1','用户姓名1','','upload/fenxiangshipin_fengmian1.jpg','上传时间1','作者1',1,1,1),(42,'2021-12-13 07:11:17','视频名称2','用户账号2','用户姓名2','','upload/fenxiangshipin_fengmian2.jpg','上传时间2','作者2',2,2,2),(43,'2021-12-13 07:11:17','视频名称3','用户账号3','用户姓名3','','upload/fenxiangshipin_fengmian3.jpg','上传时间3','作者3',3,3,3),(44,'2021-12-13 07:11:17','视频名称4','用户账号4','用户姓名4','','upload/fenxiangshipin_fengmian4.jpg','上传时间4','作者4',4,4,4),(45,'2021-12-13 07:11:17','视频名称5','用户账号5','用户姓名5','','upload/fenxiangshipin_fengmian5.jpg','上传时间5','作者5',5,5,5),(46,'2021-12-13 07:11:17','视频名称6','用户账号6','用户姓名6','','upload/fenxiangshipin_fengmian6.jpg','上传时间6','作者6',6,6,6);
/*!40000 ALTER TABLE `fenxiangshipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-12-13 07:11:17','帖子标题1','帖子内容1',0,1,'用户名1','开放'),(62,'2021-12-13 07:11:17','帖子标题2','帖子内容2',0,2,'用户名2','开放'),(63,'2021-12-13 07:11:17','帖子标题3','帖子内容3',0,3,'用户名3','开放'),(64,'2021-12-13 07:11:17','帖子标题4','帖子内容4',0,4,'用户名4','开放'),(65,'2021-12-13 07:11:17','帖子标题5','帖子内容5',0,5,'用户名5','开放'),(66,'2021-12-13 07:11:17','帖子标题6','帖子内容6',0,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangchuanshipin`
--

DROP TABLE IF EXISTS `shangchuanshipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangchuanshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='上传视频';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangchuanshipin`
--

LOCK TABLES `shangchuanshipin` WRITE;
/*!40000 ALTER TABLE `shangchuanshipin` DISABLE KEYS */;
INSERT INTO `shangchuanshipin` VALUES (21,'2021-12-13 07:11:17','视频名称1','','upload/shangchuanshipin_fengmian1.jpg','2021-12-13 15:11:17','用户账号1','用户姓名1','是','',1),(22,'2021-12-13 07:11:17','视频名称2','','upload/shangchuanshipin_fengmian2.jpg','2021-12-13 15:11:17','用户账号2','用户姓名2','是','',2),(23,'2021-12-13 07:11:17','视频名称3','','upload/shangchuanshipin_fengmian3.jpg','2021-12-13 15:11:17','用户账号3','用户姓名3','是','',3),(24,'2021-12-13 07:11:17','视频名称4','','upload/shangchuanshipin_fengmian4.jpg','2021-12-13 15:11:17','用户账号4','用户姓名4','是','',4),(25,'2021-12-13 07:11:17','视频名称5','','upload/shangchuanshipin_fengmian5.jpg','2021-12-13 15:11:17','用户账号5','用户姓名5','是','',5),(26,'2021-12-13 07:11:17','视频名称6','','upload/shangchuanshipin_fengmian6.jpg','2021-12-13 15:11:17','用户账号6','用户姓名6','是','',6);
/*!40000 ALTER TABLE `shangchuanshipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouzangshipin`
--

DROP TABLE IF EXISTS `shouzangshipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouzangshipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shipinmingcheng` varchar(200) DEFAULT NULL COMMENT '视频名称',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shangchuanshijian` datetime DEFAULT NULL COMMENT '上传时间',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='收藏视频';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouzangshipin`
--

LOCK TABLES `shouzangshipin` WRITE;
/*!40000 ALTER TABLE `shouzangshipin` DISABLE KEYS */;
INSERT INTO `shouzangshipin` VALUES (51,'2021-12-13 07:11:17','视频名称1','用户账号1','用户姓名1','','upload/shouzangshipin_fengmian1.jpg','2021-12-13 15:11:17','作者1',1),(52,'2021-12-13 07:11:17','视频名称2','用户账号2','用户姓名2','','upload/shouzangshipin_fengmian2.jpg','2021-12-13 15:11:17','作者2',2),(53,'2021-12-13 07:11:17','视频名称3','用户账号3','用户姓名3','','upload/shouzangshipin_fengmian3.jpg','2021-12-13 15:11:17','作者3',3),(54,'2021-12-13 07:11:17','视频名称4','用户账号4','用户姓名4','','upload/shouzangshipin_fengmian4.jpg','2021-12-13 15:11:17','作者4',4),(55,'2021-12-13 07:11:17','视频名称5','用户账号5','用户姓名5','','upload/shouzangshipin_fengmian5.jpg','2021-12-13 15:11:17','作者5',5),(56,'2021-12-13 07:11:17','视频名称6','用户账号6','用户姓名6','','upload/shouzangshipin_fengmian6.jpg','2021-12-13 15:11:17','作者6',6);
/*!40000 ALTER TABLE `shouzangshipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户账号1','yonghu','用户','43wzl7qo0zam8ryt3l2rn84ywqqobqk8','2021-12-13 07:13:01','2021-12-13 08:13:01');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-12-13 07:11:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `chushengnianyueri` date DEFAULT NULL COMMENT '出生年月日',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-12-13 07:11:17','用户账号1','用户姓名1','123456','13823888881','邮箱1','男','2021-12-13','民族1','upload/yonghu_touxiang1.jpg',1),(12,'2021-12-13 07:11:17','用户账号2','用户姓名2','123456','13823888882','邮箱2','男','2021-12-13','民族2','upload/yonghu_touxiang2.jpg',2),(13,'2021-12-13 07:11:17','用户账号3','用户姓名3','123456','13823888883','邮箱3','男','2021-12-13','民族3','upload/yonghu_touxiang3.jpg',3),(14,'2021-12-13 07:11:17','用户账号4','用户姓名4','123456','13823888884','邮箱4','男','2021-12-13','民族4','upload/yonghu_touxiang4.jpg',4),(15,'2021-12-13 07:11:17','用户账号5','用户姓名5','123456','13823888885','邮箱5','男','2021-12-13','民族5','upload/yonghu_touxiang5.jpg',5),(16,'2021-12-13 07:11:17','用户账号6','用户姓名6','123456','13823888886','邮箱6','男','2021-12-13','民族6','upload/yonghu_touxiang6.jpg',6);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-14  9:29:30
