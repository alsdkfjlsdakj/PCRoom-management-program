CREATE DATABASE  IF NOT EXISTS `pcroomdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pcroomdb`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pcroomdb
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `admintbl`
--

DROP TABLE IF EXISTS `admintbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admintbl` (
  `adminId` char(10) NOT NULL,
  `adminName` char(10) NOT NULL,
  `adminGender` char(4) NOT NULL,
  `adminBirth` char(12) NOT NULL,
  `adminPhone` char(15) NOT NULL,
  `adminAddress` char(100) DEFAULT NULL,
  `adminEmail` char(30) DEFAULT NULL,
  `adminWorkingTime` char(8) NOT NULL,
  `adminLevel` char(5) NOT NULL,
  `adminCleanArea` char(8) DEFAULT NULL,
  `adminPw` char(10) NOT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admintbl`
--

LOCK TABLES `admintbl` WRITE;
/*!40000 ALTER TABLE `admintbl` DISABLE KEYS */;
INSERT INTO `admintbl` VALUES ('admin','감자바','남자','1990-2-2','01012345788','서울 서대문구','sdfdf@naver.com','평일(오후)','사장',NULL,'1111'),('manager13','김지혜','여자','1987-1-1','01022222222','서울 강서구','aaa@gmail.com','주말(야간)','매니저','흡연실','11111'),('manager2','김민수','남자','1964-4-6','01066667777','서울 성북구','kms@gmail.com','주말(오전)','매니저','화장실','1111');
/*!40000 ALTER TABLE `admintbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chargetbl`
--

DROP TABLE IF EXISTS `chargetbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chargetbl` (
  `enterNo` int(11) NOT NULL AUTO_INCREMENT,
  `userStartTime` char(20) NOT NULL,
  `prepaidMoney` int(11) NOT NULL,
  `userId` char(10) NOT NULL,
  `userStartDate` char(12) NOT NULL,
  `seatNo` char(4) DEFAULT NULL,
  `userAvailableTime` int(11) NOT NULL,
  PRIMARY KEY (`enterNo`),
  KEY `chargetbl_ibfk_2` (`userId`),
  CONSTRAINT `chargetbl_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `usertbl` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chargetbl`
--

LOCK TABLES `chargetbl` WRITE;
/*!40000 ALTER TABLE `chargetbl` DISABLE KEYS */;
INSERT INTO `chargetbl` VALUES (1,'2019-10-18 06:50:35',2000,'qwert','2019-10-25','',7200),(2,'03:06:13',19000,'jjj','2019-10-21','',57600),(3,'2019-10-18 07:09:15',3000,'jjj','2019-10-18','',0),(6,'2019-10-18 07:09:44',3000,'ccc','2019-10-18','',0),(9,'2019-10-18 07:09:44',3000,'fff','2019-10-18','',0),(10,'06:55:56',1000,'ggg','2019-10-25','5',10800),(11,'2019-10-18 07:09:44',3000,'hhh','2019-10-18','',0),(12,'2019-10-18 07:09:44',3000,'iii','2019-10-18','',0),(14,'10:22:54',2000,'yunoi','2019-10-22','01',0),(15,'06:54:14',1000,'ggg','2019-10-25',NULL,7200),(16,'06:54:14',1000,'ggg','2019-10-25',NULL,10800),(18,'23:43:07',1000,'hhh','2019-10-24',NULL,3600),(20,'06:59:44',1000,'samuel','2019-10-25','5',3600),(28,'15:22:50',1000,'abcd1234','2019-10-27','0',3600),(42,'15:56:36',1000,'asy10','2019-10-27','0',3600),(43,'16:02:07',1000,'asy10','2019-10-27','0',3600),(44,'16:03:04',1000,'ch17','2019-10-27','0',3600),(45,'16:05:19',1000,'ekh12','2019-10-27','0',3600),(47,'17:19:04',1000,'kjv','2019-10-27','5',3600),(48,'17:33:40',2000,'kjv','2019-10-27','5',7200),(49,'17:39:04',1000,'hhh','2019-10-27','0',3600),(50,'09:02:25',1000,'ksm2678','2019-10-28','5',3600),(51,'11:15:02',1000,'ccc','2019-10-28','1',3600),(52,'11:24:07',1000,'ggg','2019-10-28','2',3600);
/*!40000 ALTER TABLE `chargetbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deletedusertbl`
--

DROP TABLE IF EXISTS `deletedusertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deletedusertbl` (
  `userId` char(10) DEFAULT NULL,
  `userName` char(10) DEFAULT NULL,
  `userGender` char(4) DEFAULT NULL,
  `userBirth` char(12) DEFAULT NULL,
  `userAdult` char(5) DEFAULT NULL,
  `userPhone` char(15) DEFAULT NULL,
  `userHomePhone` char(15) DEFAULT NULL,
  `userEmail` char(30) DEFAULT NULL,
  `userSignDay` char(12) DEFAULT NULL,
  `userImage` char(45) DEFAULT NULL,
  `userStatus` char(5) DEFAULT NULL,
  `userPw` char(10) DEFAULT NULL,
  `deletedDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deletedusertbl`
--

LOCK TABLES `deletedusertbl` WRITE;
/*!40000 ALTER TABLE `deletedusertbl` DISABLE KEYS */;
INSERT INTO `deletedusertbl` VALUES ('eee','네티','남자','196-07-08','아니오','010-5262-7282','02-123-4567','eee@naver.com','2019-10-18','image.jpg','on','1111','2019-10-25'),('qwer','김시연','여자','1937-7-25','아니오','01022952644','0632222222','qwer@gmail.com','2019-10-25',NULL,'ON','1234','2019-10-25'),('qwer','김시연','여자','1995-3-7','네','01022223333','','qwer@gmail.com','2019-10-25',NULL,'ON','1111','2019-10-25'),('qwert','김시연','여자','1987-5-6','네','01022223333','','qwert@gmail.com','2019-10-25',NULL,'ON','1111','2019-10-25');
/*!40000 ALTER TABLE `deletedusertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equiptbl`
--

DROP TABLE IF EXISTS `equiptbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equiptbl` (
  `equipNo` char(10) NOT NULL,
  `equipCategory` char(5) NOT NULL,
  `equipName` char(10) NOT NULL,
  `asInfo` char(30) DEFAULT NULL,
  `equipStatus` char(8) NOT NULL,
  `seatNo` char(4) DEFAULT NULL,
  PRIMARY KEY (`equipNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equiptbl`
--

LOCK TABLES `equiptbl` WRITE;
/*!40000 ALTER TABLE `equiptbl` DISABLE KEYS */;
INSERT INTO `equiptbl` VALUES ('com01','본체','삼성컴퓨터','삼성기사 010-4565-6526','정상이용중','02'),('com02','본체','lg컴퓨터',NULL,'정상이용중','01'),('hs02','헤드셋','앱코 h600',NULL,'정상이용중','01'),('hs03','헤드셋','앱코h700','','정상이용중','04'),('kb01','키보드','커세어 k70','','정상이용중','02'),('kb02','키보드','앱코 k660','앱코 1688-5252','정상이용중','01'),('mo01','모니터','LG 모니터','LG기사010-1234-5678','정상이용중','01'),('mo02','모니터','Dell모니터',NULL,'창고(고장)','00'),('ms01','마우스','로지텍',NULL,'정상이용중','01'),('ms02','마우스','삼성','','정상이용중','02'),('sk01','스피커','aaa','','정상이용중','04'),('sk02','스피커','필립스',NULL,'교체예정','02');
/*!40000 ALTER TABLE `equiptbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incometbl`
--

DROP TABLE IF EXISTS `incometbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incometbl` (
  `incomeYear` char(6) NOT NULL,
  `incomeMonth` char(3) NOT NULL,
  `incomeDay` char(3) NOT NULL,
  `dayPCIncome` int(11) DEFAULT '0',
  `dayItemIncome` int(11) DEFAULT '0',
  `dayTotalIncome` int(11) DEFAULT '0',
  PRIMARY KEY (`incomeYear`,`incomeMonth`,`incomeDay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incometbl`
--

LOCK TABLES `incometbl` WRITE;
/*!40000 ALTER TABLE `incometbl` DISABLE KEYS */;
INSERT INTO `incometbl` VALUES ('2019','10','01',50000,100000,150000),('2019','10','02',60000,110000,17000),('2019','10','03',90000,180000,150000),('2019','10','04',80000,120000,200000),('2019','10','05',90000,100000,190000),('2019','10','06',70000,150000,220000),('2019','10','07',50000,100000,150000),('2019','10','08',110000,240000,350000),('2019','10','09',140000,100000,250000),('2019','10','10',100000,240000,340000),('2019','10','11',80000,100000,180000),('2019','10','12',50000,100000,150000),('2019','10','13',60000,110000,17000),('2019','10','14',90000,180000,150000),('2019','10','15',80000,120000,200000),('2019','10','16',90000,100000,190000),('2019','10','17',70000,150000,220000),('2019','10','18',34000,12000,46000),('2019','10','19',50000,100000,150000),('2019','10','20',110000,240000,350000),('2019','10','21',140000,100000,250000),('2019','10','22',82000,168000,250000),('2019','10','23',100000,240000,340000),('2019','10','24',80000,100000,180000);
/*!40000 ALTER TABLE `incometbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemtbl`
--

DROP TABLE IF EXISTS `itemtbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemtbl` (
  `itemCode` char(6) NOT NULL,
  `itemCategory` char(5) NOT NULL,
  `itemName` char(10) NOT NULL,
  `itemPrice` int(11) NOT NULL,
  `itemStockGarage` int(11) NOT NULL,
  `itemStockDisplay` int(11) NOT NULL,
  `itemTotalStock` int(11) NOT NULL,
  `itemImg` char(50) DEFAULT NULL,
  PRIMARY KEY (`itemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemtbl`
--

LOCK TABLES `itemtbl` WRITE;
/*!40000 ALTER TABLE `itemtbl` DISABLE KEYS */;
INSERT INTO `itemtbl` VALUES ('fd01','간식류','만두',4000,32,20,52,NULL),('fd02','간식류','소세지',2500,12,20,32,NULL),('fd03','간식류','회오리감자',3000,20,5,25,'item1571964245870_item1571649042436_food_test.png'),('fd04','간식류','핫도그',3000,20,5,25,'item1571959494774_null'),('ig01','재료','치즈',500,300,0,300,'item1571648984982_food_test.png'),('ig02','재료','단무지',500,5,0,5,NULL),('la01','라면류','신라면',4000,20,5,25,'item1572167039924_setting.png'),('la02','라면류','진라면',4000,30,4,34,NULL),('la03','라면류','치즈라면',3000,10,5,15,NULL),('la04','라면류','너구리라면',3000,20,5,25,NULL),('la05','라면류','짜파게티',3000,10,3,13,NULL),('sn01','과자류','새우깡',2000,15,5,20,NULL),('sn02','과자류','오징어땅콩',2500,10,4,14,NULL),('sn03','과자류','초코칩',3000,11,4,15,NULL),('sn04','과자류','쿠쿠다스',3000,5,5,10,NULL),('sn05','과자류','다이제',3000,6,15,21,NULL),('vb01','음료류','콜라',2000,40,20,60,NULL),('vb02','음료류','사이다',2000,30,15,45,NULL),('vb03','음료류','오렌지주스',3000,20,10,30,NULL),('vb04','음료류','아메리카노',3500,70,10,80,NULL),('vb05','음료류','쌍화탕',2500,50,20,70,NULL),('vb06','음료류','닥터페퍼',3000,50,20,70,NULL);
/*!40000 ALTER TABLE `itemtbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertbl`
--

DROP TABLE IF EXISTS `ordertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordertbl` (
  `orderNo` int(11) NOT NULL AUTO_INCREMENT,
  `enterNo` int(11) NOT NULL,
  `itemCode` char(6) NOT NULL,
  `itemOrderAmount` int(11) NOT NULL,
  `orderPrice` int(11) NOT NULL,
  `orderDate` char(20) NOT NULL,
  `orderStatus` char(5) NOT NULL,
  PRIMARY KEY (`orderNo`),
  KEY `ordertbl_ibfk_2` (`enterNo`),
  KEY `ordertbl_ibfk_3` (`itemCode`),
  CONSTRAINT `ordertbl_ibfk_1` FOREIGN KEY (`enterNo`) REFERENCES `chargetbl` (`enterNo`) ON DELETE CASCADE,
  CONSTRAINT `ordertbl_ibfk_3` FOREIGN KEY (`itemCode`) REFERENCES `itemtbl` (`itemCode`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertbl`
--

LOCK TABLES `ordertbl` WRITE;
/*!40000 ALTER TABLE `ordertbl` DISABLE KEYS */;
INSERT INTO `ordertbl` VALUES (26,48,'la01',1,3000,'2019-10-27','서빙완료');
/*!40000 ALTER TABLE `ordertbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertbl`
--

DROP TABLE IF EXISTS `usertbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertbl` (
  `userId` char(10) NOT NULL,
  `userName` char(10) NOT NULL,
  `userGender` char(4) NOT NULL,
  `userBirth` char(12) NOT NULL,
  `userAdult` char(5) NOT NULL,
  `userPhone` char(15) NOT NULL,
  `userHomePhone` char(15) DEFAULT NULL,
  `userEmail` char(30) NOT NULL,
  `userSignDay` char(12) NOT NULL,
  `userImage` char(45) DEFAULT NULL,
  `userStatus` char(5) NOT NULL,
  `userPw` char(10) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertbl`
--

LOCK TABLES `usertbl` WRITE;
/*!40000 ALTER TABLE `usertbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trg_deletedUserTbl
after delete
on userTbl
for each row
begin
insert into deletedUserTbl values (old.userId, old.userName, old.userGender, old.userBirth, old.userAdult, old.userPhone, old.userHomePhone, old.userEmail, old.userSignDay, old.userImage, old.userStatus, old.userPw, curdate());
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'pcroomdb'
--

--
-- Dumping routines for database 'pcroomdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `PCRoomProcedure` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PCRoomProcedure`()
begin
	
	INSERT INTO userTbl VALUES('영문이름', '한글이름', '여성', '1990-01-01', '예', '010-1234-5678', '02-123-4567', 'sdfsdf@naver.com', '2019-10-16', 'image.jpg', 'on');
	INSERT INTO userTbl VALUES('영문이름', '한글이름', '여성', '1987-03-01', '예', '010-1234-9101', '064-752-5712', 'sdfsadf@gmail.com', '2019-10-17', 'image.jpg', 'off');

	INSERT INTO adminTbl VALUES('admin', '한글이름', '여성', '1990-01-01', '010-1234-5788', '서울 강남구' , 'sffss@naver.com','평일(오후)', '사장', null);
	INSERT INTO adminTbl VALUES('manager0001', '한글이이름', '여성', '1987-02-01', '010-4321-9874', '서울 성북구' , 'sdfsdf@naver.com','평일(오전)', '매니저', '매장');
	
	SELECT * FROM userTbl;
	SELECT * FROM adminTbl;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29 14:18:24
