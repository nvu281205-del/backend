-- MySQL dump 10.13  Distrib 9.5.0, for Win64 (x86_64)
--
-- Host: localhost    Database: nestdb
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detail`
--

DROP TABLE IF EXISTS `detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `eventId` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_12291396a5392f399a3facf34cc` (`eventId`),
  CONSTRAINT `FK_12291396a5392f399a3facf34cc` FOREIGN KEY (`eventId`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail`
--

LOCK TABLES `detail` WRITE;
/*!40000 ALTER TABLE `detail` DISABLE KEYS */;
INSERT INTO `detail` VALUES (14,'VIP 1',2000000,77,196),(15,'VIP 2',3000000,77,96),(16,'VIP 3',4000000,77,46),(17,'VIP 1',2000000,78,195),(18,'VIP 2',3000000,78,96),(19,'VIP 3',4000000,78,46),(20,'VIP 1',2000000,79,200),(21,'VIP 2',3000000,79,100),(22,'VIP 3',4000000,79,50),(23,'VIP 1',2000000,80,200),(24,'VIP 2',3000000,80,100),(25,'VIP 3',4000000,80,50),(26,'VIP 1',2000000,81,200),(27,'VIP 2',3000000,81,100),(28,'VIP 3',4000000,81,50),(29,'VIP 1',2000000,82,199),(30,'VIP 2',3000000,82,99),(31,'VIP 3',4000000,82,49),(32,'VIP 1',2000000,83,200),(33,'VIP 2',3000000,83,100),(34,'VIP 3',4000000,83,50),(35,'VIP 1',2000000,84,200),(36,'VIP 2',3000000,84,100),(37,'VIP 3',4000000,84,50),(38,'VIP 1',2000000,85,200),(39,'VIP 2',3000000,85,100),(40,'VIP 3',4000000,85,50),(41,'VIP 1',2000000,86,200),(42,'VIP 2',3000000,86,100),(43,'VIP 3',4000000,86,50),(44,'VIP 1',2000000,87,200),(45,'VIP 2',3000000,87,100),(46,'VIP 3',4000000,87,50),(47,'VIP 1',2000000,88,200),(48,'VIP 2',3000000,88,100),(49,'VIP 3',4000000,88,50),(50,'VIP 1',2000000,89,200),(51,'VIP 2',3000000,89,100),(52,'VIP 3',4000000,89,50),(53,'VIP 1',2000000,90,200),(54,'VIP 2',3000000,90,100),(55,'VIP 3',4000000,90,50),(56,'VIP 1',2000000,91,200),(57,'VIP 2',3000000,91,100),(58,'VIP 3',4000000,91,50),(59,'VIP 1',2000000,92,200),(60,'VIP 2',3000000,92,100),(61,'VIP 3',4000000,92,50),(62,'VIP 1',2000000,93,200),(63,'VIP 2',3000000,93,100),(64,'VIP 3',4000000,93,50),(65,'VIP 1',2000000,94,200),(66,'VIP 2',3000000,94,100),(67,'VIP 3',4000000,94,50),(71,'VIP 1',2000000,96,200),(72,'VIP 2',3000000,96,100),(73,'VIP 3',4000000,96,50),(74,'VIP 1',2000000,97,200),(75,'VIP 2',3000000,97,100),(76,'VIP 3',4000000,97,50),(77,'VIP 1',2000000,98,200),(78,'VIP 2',3000000,98,100),(79,'VIP 3',4000000,98,50),(80,'VIP 1',2000000,99,200),(81,'VIP 2',3000000,99,100),(82,'VIP 3',4000000,99,50),(83,'VIP 1',2000000,100,200),(84,'VIP 2',3000000,100,100),(85,'VIP 3',4000000,100,50),(86,'VIP 1',2000000,102,200),(87,'VIP 2',3000000,102,100),(88,'VIP 3',4000000,102,50),(92,'VIP 1',2000000,104,200),(93,'VIP 2',3000000,104,100),(94,'VIP 3',4000000,104,50),(95,'VIP 1',2000000,105,200),(96,'VIP 2',3000000,105,100),(97,'VIP 3',4000000,105,50),(98,'VIP 1',2000000,106,200),(99,'VIP 2',3000000,106,100),(100,'VIP 3',4000000,106,50),(101,'VIP 1',2000000,107,200),(102,'VIP 2',3000000,107,100),(103,'VIP 3',4000000,107,50),(104,'VIP 1',2000000,108,200),(105,'VIP 2',3000000,108,100),(106,'VIP 3',4000000,108,50),(107,'VIP 1',2000000,109,200),(108,'VIP 2',3000000,109,100),(109,'VIP 3',4000000,109,50),(110,'VIP 1',2000000,110,200),(111,'VIP 2',3000000,110,100),(112,'VIP 3',4000000,110,50),(113,'VIP 1',2000000,111,200),(114,'VIP 2',3000000,111,99),(115,'VIP 3',4000000,111,50),(116,'VIP 1',2000000,112,200),(117,'VIP 2',3000000,112,100),(118,'VIP 3',4000000,112,50),(119,'VIP 1',2000000,113,200),(120,'VIP 2',3000000,113,100),(121,'VIP 3',4000000,113,50),(122,'VIP 1',2000000,114,200),(123,'VIP 2',3000000,114,100),(124,'VIP 3',4000000,114,50),(125,'VIP 1',2000000,115,200),(126,'VIP 2',3000000,115,100),(127,'VIP 3',4000000,115,50),(128,'VIP 1',2000000,116,200),(129,'VIP 2',3000000,116,100),(130,'VIP 3',4000000,116,50),(131,'VIP 1',2000000,117,200),(132,'VIP 2',3000000,117,100),(133,'VIP 3',4000000,117,50),(134,'VIP 1',2000000,118,200),(135,'VIP 2',3000000,118,100),(136,'VIP 3',4000000,118,50),(137,'VIP 1',2000000,119,200),(138,'VIP 2',3000000,119,100),(139,'VIP 3',4000000,119,50),(140,'VIP 1',2000000,120,200),(141,'VIP 2',3000000,120,100),(142,'VIP 3',4000000,120,50),(149,'VIP 1',2000000,123,200),(150,'VIP 2',3000000,123,100),(151,'VIP 3',4000000,123,50),(152,'VIP 1',2000000,124,200),(153,'VIP 2',3000000,124,100),(154,'VIP 3',4000000,124,50),(155,'VIP 1',2000000,125,200),(156,'VIP 2',3000000,125,100),(157,'VIP 3',4000000,125,50),(158,'VIP 1',2000000,126,200),(159,'VIP 2',3000000,126,100),(160,'VIP 3',4000000,126,50),(161,'VIP 1',2000000,127,200),(162,'VIP 2',3000000,127,100),(163,'VIP 3',4000000,127,50),(164,'VIP 1',2000000,128,200),(165,'VIP 2',3000000,128,100),(166,'VIP 3',4000000,128,50),(167,'VIP 1',2000000,129,200),(168,'VIP 2',3000000,129,100),(169,'VIP 3',4000000,129,50),(170,'VIP 1',2000000,130,200),(171,'VIP 2',3000000,130,100),(172,'VIP 3',4000000,130,50),(173,'VIP 1',2000000,131,200),(174,'VIP 2',3000000,131,100),(175,'VIP 3',4000000,131,50),(176,'VIP 1',2000000,132,200),(177,'VIP 2',3000000,132,100),(178,'VIP 3',4000000,132,50),(179,'VIP 1',2000000,133,200),(180,'VIP 2',3000000,133,100),(181,'VIP 3',4000000,133,50),(183,'VIP1',2000000,134,200),(184,'VIP2',3000000,134,150),(185,'VIP3',4000000,134,50),(186,'VIP1',2000000,135,200),(187,'VIP2',3000000,135,150),(188,'VIP3',4000000,135,50),(189,'VIP1',2000000,136,200),(190,'VIP2',3000000,136,150),(191,'VIP3',4000000,136,50);
/*!40000 ALTER TABLE `detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `imgSrc` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `timeRange` varchar(255) NOT NULL,
  `baseprice` decimal(10,0) NOT NULL,
  `locate` varchar(255) NOT NULL,
  `locatedetail` varchar(255) DEFAULT NULL,
  `special` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (77,'Banner','/Banner/pic1.jpg','SUPER JUNIOR 20th Anniversary TOUR in HO CHI MINH CITY','2026-04-21','/video/Video1.mp4','HCM','17:30-19:30',2200000,'SECC NGOÀI TRỜI (TRUNG TÂM HỘI CHỢ VÀ TRIỂN LÃM SÀI GÒN)','799 Duong Nguyen Van Linh, Tan Phong Ward, 7 District, Ho Chi Minh City',0),(78,'Banner','/Banner/pic2.jpg','Xoay Tròn Concert - Hoàng Dũng','2026-04-28','/video/Video2.mp4','HCM','19:00-23:00',649000,'Trung tâm Hội chợ và Triển lãm Sài Gòn (SECC)','799 duong Nguyen Van Linh, Tan Phu Ward, 7 District, Ho Chi Minh City',0),(79,'Banner','/Banner/pic3.jpg','ANH TRAI \'SAY HI\' 2025 CONCERT - ĐÊM 2','2026-04-14','/video/Video3.mp4','HN','12:00-23:00',950000,'Sân Vận Động Quốc Gia Mỹ Đình','So 1 Le Duc Tho, My Dinh 1 Ward, Nam Tu Liem District, Ha Noi City',0),(80,'TheaterAndArt','/TheaterAndArt/pic5.webp','VỞ DIỄN AI CHỒNG AI VỢ (SÂN KHẤU MỚI)','2026-04-19',NULL,'HCM','14:30-17:30',250000,'SÂN KHẤU MỚI - 5B PHẠM NGŨ LÃO, PHƯỜNG HẠNH THÔNG, THÀNH PHỐ HỒ CHÍ MINH','5B PHAM NGU LAO , 3 Ward, Go Vap District, Ho Chi Minh City',1),(81,'TheaterAndArt','/TheaterAndArt/pic6.webp','Nhà Hát Kịch IDECAF: Đức Thượng Công Tả Quân LÊ VĂN DUYỆT','2026-05-24',NULL,'HCM','19:30-22:30',250000,'Nhà Hát Thanh Niên','So 4 Pham Ngoc Thach., Ben Nghe Ward, 1 District, Ho Chi Minh City',1),(82,'Music','/Music/pic5.webp','TOKYO GIRLS COLLECTION VIETNAM 2026 (CONCERT)','2026-04-29',NULL,'HCM','18:00-22:30',390000,'Vạn Phúc City','KDT Van Phuc, Hiep Binh Phuoc Ward, Thu Duc District, Ho Chi Minh City',1),(83,'Music','/Music/pic6.webp','07.02 | LA MUSICA: THE DAY WE LOVED','2026-04-17',NULL,'Other','16:00-22:00',69000,'La Vida Residences','299 Duong Ba Thang Hai, 12 Ward, Vung Tau City, Ba Ria - Vung Tau Province',1),(84,'TheaterAndArt','/TheaterAndArt/pic7.webp','SKNT TRƯƠNG HÙNG MINH : TỨ TRẠNG ĐĂNG KHOA','2026-04-17',NULL,'HCM','16:00-22:00',350000,'SÂN KHẤU NGHỆ THUẬT TRƯƠNG HÙNG MINH','22 VINH VIEN, 2 Ward, 10 District, Ho Chi Minh City',1),(85,'Music','/Music/pic7.webp','LiveShow - Fantasy Opening Show | Tăng Phúc - ST Sơn Thạch','2026-04-07',NULL,'HN','20:00-23:00',800000,'Trung Tâm Nghệ Thuật Âu Cơ','8 Huynh Thuc Khang, Giang Vo Ward, Ba Dinh District, Ha Noi City',1),(86,'TheaterAndArt','/TheaterAndArt/pic8.webp','SÂN KHẤU XÓM KỊCH: CĂN HỘ SỐ 13','2026-04-19',NULL,'HCM','19:30-21:30',250000,'Sân Khấu Xóm Kịch','155 Bis Nam Ky Khoi Nghia, Vo Thi Sau Ward, 3 District, Ho Chi Minh City',1),(87,'Music','/Music/pic8.webp','MINISHOW TĂNG PHÚC: MÃ ĐÁO THÀNH CÔNG','2026-04-20',NULL,'HN','20:30-23:30',1500000,'SOL8 LIVE STAGE','So 8 Nguyen Cong Hoan, Ba Dinh District, Ha Noi City',1),(88,'TheaterAndArt','/TheaterAndArt/pic9.webp','LIMITED ART-MERCH COLLECTION: DREAMSCAPE OF SOULS - MIỀN MƠ','2026-03-31',NULL,'HCM','00:00-00:00',60000,'Online Event','Online only, 13 Ward, 10 District, Ho Chi Minh City',1),(89,'ForYou','/ForYou/pic1.jpg','[FLOWER 1969’s] WORKSHOP SOLID PERFUME - NƯỚC HOA KHÔ','2026-04-01',NULL,'HCM','10:00-12:00',279000,'Flower 1969’s - The Seat Cafe','The Seat Cafe - 1355/7 Hoang Sa, 5 Ward, Tan Binh District, Ho Chi Minh City',0),(90,'ForYou','/ForYou/pic3.jpeg','SKNT TRƯƠNG HÙNG MINH : CÔ GÁI TRIỆU ĐÔ','2026-04-20',NULL,'HCM','15:00-18:00',279000,'SÂN KHẤU NGHỆ THUẬT TRƯƠNG HÙNG MINH','22 VINH VIEN, 2 Ward, 10 District, Ho Chi Minh City',0),(91,'ForYou','/ForYou/pic2.jpg','(FLOWER 1969\'s) WORKSHOP CANDLE - HỌC LÀM NẾN THƠM','2026-04-01',NULL,'HCM','17:00-19:00',279000,'Flower 1969\'s x The Seat Cafe','The Seat Cafe - 1355/7 Hoang Sa, 5 Ward, Tan Binh District, Ho Chi Minh City',0),(92,'ForYou','/ForYou/pic4.jpg','[FLOWER 1969’s] WORKSHOP PERFUME - TRẢI NGHIỆM LÀM NƯỚC HOA XỊT','2026-04-01',NULL,'HCM','17:00-19:00',279000,'Flower 1969\'s','The Seat Cafe - 1355/7 Hoang Sa, 5 Ward, Tan Binh District, Ho Chi Minh City',0),(93,'AttAndExp','/AttAndExp/pic5.jpg','Vé Trải Nghiệm KidZania Hà Nội','2026-03-24',NULL,'HN','00:00-23:59',50000,'KidZania Hà Nội','TTTM Lotte Mall Tay Ho, 272 duong Vo Chi Cong, Phu Thuong Ward, Tay Ho District, Ha Noi City',0),(94,'AttAndExp','/AttAndExp/pic6.jpg','Trải Nghiệm Bay Dù Lượn Hà Nội','2026-03-01',NULL,'HN','08:00-16:00',1850000,'Núi Bé, Nam Phương Tiến, Chương Mỹ, Hà Nội','Thon Nui Be, Nam Phuong Tien Commune, Chuong My District, Ha Noi City',0),(96,'WorkShop','/WorkShop/pic1.jpg','ART WORKSHOP \'FRENCH LEMON MINI TARTE\'','2026-03-01',NULL,'HCM','09:00-11:30',390000,'Garden Art','Lau 1, 386/17C Le Van Sy, 14 Ward, 3 District, Ho Chi Minh City',0),(97,'Music','/Music/pic9.jpg','[Metashow] Triển Lãm Nghệ Thuật Ánh Sáng','2026-03-01',NULL,'HCM','10:00-22:00',150000,'Thiso Mall Sala','So 10, duong Mai Chi Tho, Thu Thiem Ward, 2 District, Ho Chi Minh City',0),(98,'WorkShop','/WorkShop/pic2.jpg','[FLOWER 1969’s] REED DIFFUSER WORKSHOP - TINH DẦU KHUẾCH TÁN','2026-03-01',NULL,'HCM','14:00-16:00',279000,'Flower 1969’s - The Seat Cafe','The Seat Cafe - 1355/7 Hoang Sa, Phuong 5, Tan Binh, TP.HCM, 5 Ward, Tan Binh District, Ho Chi Minh City',0),(99,'WorkShop','/WorkShop/pic3.jpg','ART WORKSHOP: \'SPRING MATCHA STRAWBERRY FRAISER\'','2026-04-01',NULL,'HCM','14:00-16:00',420000,'Garden Art','Lau 1, 386/17C Le Van Sy, 14 Ward, 3 District, Ho Chi Minh City',0),(100,'AttAndExp','/AttAndExp/pic7.jpg','TOUR ĐÊM VĂN MIẾU - VAN MIEU NIGHT TOUR','2026-03-07',NULL,'HN','14:00-21:30',0,'Văn Miếu - Quốc Tử Giám','58, Quoc Tu Giam Ward, Dong Da District, Ha Noi City',0),(101,'AttAndExp','/AttAndExp/pic8.jpg','The “Traditional Water Puppet Show” - Múa rối nước','2026-03-01',NULL,'HCM','18:30-19:15',350000,'Cung Văn Hoá Lao Động TP.HCM','55B Nguyen Thi Minh Khai, Ben Thanh Ward, 1 District, Ho Chi Minh City',0),(102,'AttAndExp','/AttAndExp/pic9.jpg','THE ALMA SHOW [Tinh Hoa Việt Nam - Di Sản Chuyển Mình]','2026-03-01',NULL,'Other','20:00-20:50',350000,'Alma Amphitheater','Alma Resort Cam Ranh, Cam Ranh Town, Khanh Hoa Province',0),(104,'TheaterAndArt','/TheaterAndArt/pic10.jpg','SÂN KHẤU THIÊN ĐĂNG: TRÒ CHƠI HOÀN HẢO','2026-03-08',NULL,'HCM','18:00-21:00',350000,'TẦNG 12B TÒA NHÀ IMC','62 Tran Quang Khai, Tan Dinh Ward, 1 District, Ho Chi Minh City',0),(105,'TheaterAndArt','/TheaterAndArt/pic11.jpeg','VỞ DIỄN NĂM CHA BA MẸ - SÂN KHẤU MỚI','2026-03-07',NULL,'HCM','19:30-22:30',250000,'SÂN KHẤU MỚI - 5B PHẠM NGŨ LÃO, PHƯỜNG HẠNH THÔNG, THÀNH PHỐ HỒ CHÍ MINH','5B PHAM NGU LAO , 3 Ward, Go Vap District, Ho Chi Minh City',0),(106,'TheaterAndArt','/TheaterAndArt/pic12.jpg','Nhà Hát Kịch IDECAF: LƯƠNG SƠN BÁ CHÚC ANH ĐÀI ngoại truyện','2026-03-01',NULL,'HCM','18:00-21:00',300000,'Nhà Hát Kịch IDECAF','So 28 Le Thanh Ton, Ben Nghe Ward, 1 District, Ho Chi Minh City',0),(107,'AttAndExp','/AttAndExp/pic10.jpg','Ngắm nhìn bầu trời đêm tuyệt đẹp cùng Đài thiên văn Nha Trang','2026-03-13',NULL,'Other','08:30-16:00',30000,'Đài thiên văn Nha Trang','Cau Vuot Pham Van Dong, doi Hon Chong, phuong Vinh Phuoc, Vinh Phuoc Ward, Nha Trang City, Khanh Hoa Province',0),(108,'AttAndExp','/AttAndExp/pic11.jpeg','GOm Show Hà Nội','2026-03-05',NULL,'HN','20:00-21:30',800000,'Rạp Khăn Quàng Đỏ','36 Ly Thai To, Ly Thai To Ward, Hoan Kiem District, Ha Noi City',0),(109,'Music','/Music/pic1.jpg','[BẾN THÀNH] Đêm nhạc Tăng Phúc - Trương Thảo Nhi','2026-03-25',NULL,'HCM','20:00-22:00',300000,'Lầu 3, Nhà hát Bến Thành','So 6 Mac Dinh Chi, Ben Nghe Ward, 1 District, Ho Chi Minh City',0),(110,'Music','/Music/pic2.jpg','Trung Quân - Chiều Nay Không Có Mưa Bay','2026-03-21',NULL,'DL','17:00-20:00',800000,'Tầng thượng Golden Sun Hotel - Dalat, 01 Bà Huyện Thanh Quan, Phường Xuân Hương','1, 1 Ward, Da Lat City, Lam Dong Province',0),(111,'Music','/Music/pic3.jpg','[Fantasy Show] Yêu Em Cả Trong Giấc Mơ','2026-03-28',NULL,'HN','20:00-23:00',800000,'Trung Tâm Nghệ Thuật Âu Cơ','8 Huynh Thuc Khang, Giang Vo Ward, Ba Dinh District, Ha Noi City',0),(112,'Music','/Music/pic4.jpeg','PSYCHIC FEVER First Fan Meeting in Viet Nam','2026-03-05',NULL,'HCM','14:00-18:00',990000,'CINÉ SAIGON','148 Cong Quynh, Ben Thanh Ward, 1 District, Ho Chi Minh City',0),(113,'TheaterAndArt','/TheaterAndArt/pic1.jpeg','SKNT TRƯƠNG HÙNG MINH : TỨ TRẠNG ĐĂNG KHOA','2026-03-17',NULL,'HCM','15:00-18:00',350000,'SÂN KHẤU NGHỆ THUẬT TRƯƠNG HÙNG MINH','22 VINH VIEN, 2 Ward, 10 District, Ho Chi Minh City',0),(114,'TheaterAndArt','/TheaterAndArt/pic2.jpeg','VỞ DIỄN MỘT CÁI NHÀ BA KIỂU TẾT - SÂN KHẤU MỚI','2026-03-09',NULL,'HCM','19:30-23:00',350000,'SÂN KHẤU MỚI - 5B PHẠM NGŨ LÃO, PHƯỜNG HẠNH THÔNG, THÀNH PHỐ HỒ CHÍ MINH','5B PHAM NGU LAO, 3 Ward, Go Vap District, Ho Chi Minh City',0),(115,'TheaterAndArt','/TheaterAndArt/pic3.jpg','Sân Khấu Hồng Vân: Tương Đối Rối Tương Phùng','2026-03-17',NULL,'HCM','16:00-18:00',350000,'Sân Khấu Kịch Hồng Vân','643 Dien Bien Phu, (Nha van hoa Sinh Vien), 1 Ward, 3 District, Ho Chi Minh City',0),(116,'TheaterAndArt','/TheaterAndArt/pic4.jpg','ART WORKSHOP: \'SPRING MATCHA STRAWBERRY FRAISER\'','2026-03-04',NULL,'HCM','16:00-18:00',420000,'Garden Art','Lau 1, 386/17C Le Van Sy, 14 Ward, 3 District, Ho Chi Minh City',0),(117,'AttAndExp','/AttAndExp/pic1.jpg','DU LỊCH VĂN HÓA SUỐI TIÊN - RỘN RÀNG NĂM BÍNH NGỌ - DIỆN MẠO MỚI','2026-03-31',NULL,'HCM','00:00-23:59',100000,'DU LỊCH VĂN HÓA SUỐI TIÊN','120 Xa lo Ha Noi, Tan Phu Ward, 9 District, Ho Chi Minh City',0),(118,'AttAndExp','/AttAndExp/pic2.jpg','PHẬT BẢO NGHIÊM TRẤN - TRIỂN LÃM DI SẢN PHẬT GIÁO ĐỘC BẢN GIỮA LÒNG SÀI GÒN','2026-03-01',NULL,'HCM','00:00-23:59',150000,'Tòa nhà Infinity','11A Ton Duc Thang, Ben Nghe Ward, 1 District, Ho Chi Minh City',0),(119,'AttAndExp','/AttAndExp/pic3.jpg','B.DUCK CITYFUNS @VINCOM CENTER LANDMARK 81','2026-03-01',NULL,'HCM','10:00-22:00',82000,'Vincom Center Landmark 81','720A Nguyen Huu Canh, Phuong Thanh My Tay (Moi), 22 Ward, Binh Thanh District, Ho Chi Minh City',0),(120,'AttAndExp','/AttAndExp/pic4.jpg','STAY IN THE TEMPLE - MỪNG XUÂN 2026','2026-02-28',NULL,'Other','10:00-22:00',200000,'Tịnh Viện Pháp Thường','Ap Ben Dinh, Dai Phuoc Commune, Nhon Trach District, Dong Nai Province',0),(123,'Other','/Other/pic3.jpg','HOLI MILAN 2026 AT BENARAS HERITAGE SAIGON','2026-03-07',NULL,'HCM','11:00-15:00',250000,'BENARAS HERITAGE INDIAN RESTAURANT','16-18 Vo Thi Sau, Tan Dinh Ward, 1 District, Ho Chi Minh City',0),(124,'Other','/Other/pic4.jpg','[TP.HCM] Triển lãm & Lễ hội Quốc tế Thú cưng Việt Nam - InterPet Expo & InterPetFest Việt..','2026-03-30',NULL,'HCM','09:30-15:30',0,'SECC, 799 Nguyễn Văn Linh, Phường Tân Mỹ, TP.HCM','799 Nguyen Van Linh, Ho Chi Minh City',0),(125,'Recommend','/Recommend/pic1.jpg','DU LỊCH VĂN HÓA SUỐI TIÊN - RỘN RÀNG NĂM BÍNH NGỌ - DIỆN MẠO MỚI','2026-03-30',NULL,'HCM','00:00-23:59',100000,'DU LỊCH VĂN HÓA SUỐI TIÊN','120 Xa lo Ha Noi, Tan Phu Ward, 9 District, Ho Chi Minh City',0),(126,'Recommend','/Recommend/pic2.jpg','Sân Khấu Thế Giới Trẻ: Cuộc Chiến Sắc Đẹp','2026-03-17',NULL,'HCM','20:00-23:00',330000,'Sân Khấu Thế Giới Trẻ','125 Cong Quynh, Nguyen Cu Trinh Ward, 1 District, Ho Chi Minh City',0),(127,'Recommend','/Recommend/pic3.jpeg','SÂN KHẤU THIÊN ĐĂNG: NGÔI NHÀ KHÔNG CÓ ĐÀN ÔNG','2026-03-05',NULL,'HCM','19:30-22:30',330000,'TẦNG 12B TÒA NHÀ IMC','62 Tran Quang Khai, Tan Dinh Ward, 1 District, Ho Chi Minh City',0),(128,'Recommend','/Recommend/pic4.jpg','Vở Kịch Rối: Ăn Khế Trả Vàng','2026-03-19',NULL,'HCM','09:30-10:30',150000,'Nhà Hát Thiếu Nhi NỤ CƯỜI','55B Nguyen Thi Minh Khai, Ben Nghe Ward, 1 District, Ho Chi Minh City',0),(129,'Recommend','/Recommend/pic5.jpg','[Dốc Mộng Mơ] Love Note','2026-03-22',NULL,'HN','19:30-22:00',900000,'Trung Tâm Nghệ Thuật Âu Cơ','8 Huynh Thuc Khang, Thanh Cong Ward, Ba Dinh District, Ha Noi City',0),(130,'Recommend','/Recommend/pic6.jpg','Quốc Thiên - Hẹn Nhau Trong Giấc Mơ','2026-02-28',NULL,'DL','17:30-20:00',700000,'Tầng thượng Golden Sun Hotel - Dalat, 01 Bà Huyện Thanh Quan, Phường Xuân Hương','1, 1 Ward, Da Lat City, Lam Dong Province',0),(131,'Recommend','/Recommend/pic7.jpeg','HBAShow: Minishow NGUYỄN ĐÌNH TUẤN DŨNG','2026-02-22',NULL,'HN','20:00-22:00',600000,'SOL 8 - LIVE STAGE','So 8 Nguyen Cong Hoan, Giang Vo Ward, Ba Dinh District, Ha Noi City',0),(132,'Recommend','/Recommend/pic8.jpg','[Dốc Mộng Mơ] HER CONCERT','2026-03-07',NULL,'HN','19:00-22:30',600000,'Cung Điền Kinh Mỹ Đình','Pho Tran Huu Duc, Cau Dien, My Dinh 1 Ward, Nam Tu Liem District, Ha Noi City',0),(133,'Recommend','/Recommend/pic9.jpg','Live Concert Quả Dưa Hấu - Bản Ghi Nhớ','2026-03-14',NULL,'HN','20:00-23:00',2000000,'Nhà hát Hồ Gươm','40 Hang Bai , Cua Nam Ward, Hoan Kiem District, Ha Noi City',0),(134,'Other','/Other/pic1.jpg','THIỀN TRĂNG NON VIỆT NAM - THÁNG 1 ÂM LỊCH','2026-02-28',NULL,'Other','14:30-16:30',150000,'THIỀN TRĂNG NON VIỆT NAM - THÁNG 1 ÂM LỊCH','Tịnh Viện Pháp Thường, Xã Phú Đông, Huyện Nhơn Trạch, Tỉnh Đồng Nai',0),(135,'Other','/Other/pic2.jpg','analytica Hanoi 2026 - Triển lãm Quốc tế về Phân tích, Thí nghiệm, Chẩn đoán và Công','2026-04-22',NULL,'HN','08:30 - 15:00',100000,'Trung tâm Triển lãm Quốc tế ICE Hà Nội','91 Trần Hưng Đạo, Quận Hoàn Kiếm, Thành Phố Hà Nội',0),(136,'WorkShop','/WorkShop/pic4.jpg','Conviction','2026-05-09',NULL,'HCM','08:00 - 18:00',1299000,'Thiskyhall Sala Convention Center','10 Mai Chí Thọ, Phường An Khánh, Quận 2, Thành Phố Hồ Chí Minh',0);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `totalPrice` decimal(10,0) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `userId` int(11) DEFAULT NULL,
  `eventId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_151b79a83ba240b0cb31b2302d1` (`userId`),
  KEY `FK_80f390b083014fd69ec40b8c38c` (`eventId`),
  CONSTRAINT `FK_151b79a83ba240b0cb31b2302d1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_80f390b083014fd69ec40b8c38c` FOREIGN KEY (`eventId`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderticket`
--

DROP TABLE IF EXISTS `orderticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderticket` (
  `orderticketid` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `ticketId` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderticketid`),
  KEY `FK_438a50870210d09afc5df197bd0` (`orderId`),
  KEY `FK_c461947f6c5092c0589a0abd351` (`ticketId`),
  CONSTRAINT `FK_438a50870210d09afc5df197bd0` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_c461947f6c5092c0589a0abd351` FOREIGN KEY (`ticketId`) REFERENCES `detail` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderticket`
--

LOCK TABLES `orderticket` WRITE;
/*!40000 ALTER TABLE `orderticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizer`
--

DROP TABLE IF EXISTS `organizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organizer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logoUrl` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `eventId` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `REL_ddbaa7ff684a0b8979d4b9b090` (`eventId`),
  CONSTRAINT `FK_ddbaa7ff684a0b8979d4b9b0908` FOREIGN KEY (`eventId`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizer`
--

LOCK TABLES `organizer` WRITE;
/*!40000 ALTER TABLE `organizer` DISABLE KEYS */;
INSERT INTO `organizer` VALUES (13,'/logo/pic1.jpg','TJ COMMUNICATIONS',77,'With 10+ years of experience, TJ Communications specializes in delivering high-quality, large-scale productions. Our portfolio includes some of the most notable events that have shaped our reputation. We specialize in organizing international-standard productions, especially those inspired by South Korea, ensuring smooth operations and impactful experiences.'),(14,'/logo/pic2.png','Lirico Entertainment',78,'Lirico Entertainment'),(15,'/logo/pic3.png','Vie Channel',79,'VieChannel: Đơn vị sản xuất'),(16,'/logo/pic4.jpg','CÔNG TY TNHH WOLF ENTERTAINMENT',80,'Chịu Trách nhiệm sản xuất Công ty TNHH WOLF ENTERTAINMENT'),(17,'/logo/pic5.jpg','Công Ty TNHH Sân Khấu - Nghệ Thuật Thái Dương',81,'Nhà Hát Kịch IDECAF'),(18,'/logo/pic6.jpg','POPS',82,'Được thành lập từ năm 2007, POPS là đơn vị tiên phong và dẫn đầu trong lĩnh vực giải trí kỹ thuật số tại Việt Nam và khu vực. Sở hữu hệ sinh thái nội dung đa dạng từ Âm nhạc, Giải trí, Anime/Comics đến Giáo dục thiếu nhi (POPS Kids), POPS hiện là đối tác chiến lược của hàng nghìn nhà sáng tạo nội dung và các thương hiệu lớn toàn cầu.'),(19,'/logo/pic7.jpg','La Musica',83,'Website: https://lamusica.vn/\nFanpage: https://www.facebook.com/LaMusica.vn\nĐiểm hẹn phim - nhạc - vui chơi cuối tuần, nơi nghệ thuật chuyên nghiệp và cộng đồng lại gần nhau hơn.'),(20,'/logo/pic8.jpg','SÂN KHẤU NGHỆ THUẬT TRƯƠNG HÙNG MINH',84,'Nhà Hát Biểu Diễn Nghệ Thuật Trương Hùng Minh'),(21,'/logo/pic9.png','Anh Dũng Media & Entertaiment',85,'ADM Entertaiment - Một thương hiệu sự kiện âm nhạc &amp;nghệ thuật được kiến tạo dưới bàn tay của ADM\n🎶🎷🎤🎼'),(22,'/logo/pic10.png','CÔNG TY TNHH KHANG ENTERTAINMENT VÀ SÂN KHẤU XÓM KỊCH',86,'SÂN KHẤU XÓM KỊCH\nĐược thành lập bởi NSƯT Vũ Xuân Trang &amp; NS Hoàng Thy\nChuyên đào tạo đạo diễn, diễn viên (sân khấu &amp; điện ảnh), biên kịch. Ngoài ra nhận tổ chức sự kiện, wedding planner,...'),(23,'/logo/pic11.png','Dinh Luu Media',87,'Dinh Luu Media'),(24,'/logo/pic12.png','HỘ KINH DOANH 3CHH',88,'Mã số hộ kinh doanh: 079190034869'),(25,'/logo/pic13.png','Flower 1969\'s',89,'⚜️ Thương hiệu được tạo ra với niềm đam mê bất tận về Hương Thuần Tự Nhiên.'),(26,'/logo/pic14.jpg','SÂN KHẤU NGHỆ THUẬT TRƯƠNG HÙNG MINH',90,'Nhà Hát Biễu Diễn Nghệ Thuật Trương Hùng Minh'),(27,'/logo/pic13.png','Flower 1969\'s',91,'Thương hiệu được tạo ra bởi niềm đam mê bất tận về hương thuần tự nhiên.'),(28,'/logo/pic13.png','Flower 1969\'s',92,'Thương hiệu được tạo ra bởi niềm đam mê bất tận về hương thuần tự nhiên.'),(29,'/logo/pic15.jpg','KidZania Hà Nội',93,'Công ty TNHH MBC PLAYBE VIỆT NAM\nMã Số Thuế: 0110191692\nĐịa chỉ:Tầng 5, TTTM Lotte Tây Hồ, 272 Đ. Võ Chí Công, Tây Hồ, Hà Nội\nHotline: 1900 0114\nEmail: kidzaniavn_fb@kidzania.com.vn'),(32,'/logo/pic16.png','Mebayluon Paragliding',94,'Tự hào là đơn vị bay dù lượn chuyên nghiệp nhất Việt Nam, 100 phần trăm phi công chuyên nghiệp và có giờ bay cao nhất Việt Nam.\nMebayluon có giấy phép kinh doanh dù lượn (xuất VAT) và bay hàng ngày tại: Hà Nội (Đồi Bù), Yên Bái (Mù Cang Chải), Sa Pa và Đà Nẵng.'),(35,'/logo/pic18.png','Garden Art',96,'Garden Art là không gian trải nghiệm workshop nghệ thuật'),(36,'/logo/pic19.jpg','Metashow Exhibition',97,'TRIỂN LÃM NGHỆ THUẬT ÁNH SÁNG METASHOW'),(37,'/logo/pic13.png','Flower 1969\'s',98,'Thương hiệu được tạo ra với niềm đam mê bất tận về Hương Thuần Tự Nhiên.'),(38,'/logo/pic18.png','Garden Art',99,'Garden Art là không gian tổ chức Workshop nghệ thuật'),(40,'/logo/pic20.png','TRUNG TÂM HOẠT ĐỘNG VĂN HÓA KHOA HỌC VĂN MIẾU – QUỐC TỬ GIÁM',100,'Liên hệ BTC:\nĐiện thoại: 0329060121 - Nguyễn Văn Phong\nPhụ trách kinh doanh'),(41,'/logo/pic21.jpg','Nhà Hát Múa Rối Nước Rồng Vàng',101,'Nhà Hát Múa Rối Nước Rồng Vàng'),(42,'/logo/pic22.png','CÔNG TY TNHH THE STAGE VN',102,'Địa Chỉ: STH 36.12A đường 3B Khu Đô\nThị Hà Quang 2, Phường Nam Nha Trang, Tỉnh Khánh Hòa\nWebsite: http://www.thestage.vn\nHotline: +84 3297 46 779\nEmail: ticket@thestage.vn'),(44,'/logo/pic23.png','CÔNG TY TNHH SÂN KHẤU NGHỆ THUẬT THIÊN ĐĂNG',104,'CÔNG TY TNHH SÂN KHẤU NGHỆ THUẬT THIÊN ĐĂNG\n\nĐược sáng lập bởi NSƯT Thành Lộc, người đã có gần nửa thế kỷ gắn bó với sân khấu thoại kịch\nSân khấu Thiên Đăng hoạt động dựa trên tôn chỉ nghệ thuật phụng sự khán giả, mang tới những vở diễn cân bằng giữa hai yếu tố nghệ thuật và giải trí. Tên sân khấu được đặt là Thiên Đăng (Đèn Trời) nhưng đó cũng là ngọn đèn sân khấu bởi vì với người nghệ sĩ thì sân khấu là Đạo Trời, là Đạo Làm Người, là lẽ sống mà họ phải hết lòng tận tụy phụng sự.'),(45,'/logo/pic24.jpg','CÔNG TY TNHH WOLF ENTERTAINMENT',105,'Chịu trách nhiệm sản xuất\nCÔNG TY TNHH WOLF ENTERTAINMENT'),(46,'/logo/pic25.png','Công Ty TNHH Sân Khấu - Nghệ Thuật Thái Dương',106,'Nhà Hát Kịch IDECAF'),(47,'/logo/pic26.jpg','Đài thiên văn Nha Trang',107,'Đài thiên văn Nha Trang (Nha Trang Observatory – NTO) trực thuộc Trung tâm Vũ trụ Việt Nam (VNSC) thuộc Viện Hàn lâm Khoa học và Công nghệ Việt Nam được đặt tại Hòn Chồng (Nha Trang, Khánh Hòa).'),(48,'/logo/pic27.png','Sky Sounds Production',108,'Sky Sounds Production là nhà sản xuất và phát hành tiên phong trong lĩnh vực âm nhạc bản địa đương đại. Với tinh thần gìn giữ và làm mới, Sky Sounds mang đến những dự án sáng tạo giàu bản sắc, kết nối truyền thống với khán giả trẻ và đưa âm nhạc Việt Nam vươn ra thế giới.'),(49,'/logo/pic28.jpg','Bến Thành',109,'Bến Thành'),(50,'/logo/pic29.jpg','La Maritza Show',110,'Không gian của âm nhạc – nơi nghệ sĩ và khán giả hòa nhịp trong những đêm diễn đầy cảm xúc.'),(51,'/logo/pic30.png','Anh Dũng Media & Entertaiment',111,'Anh Dũng Media &amp; Entertaiment'),(52,'/logo/pic31.png','AAB VIETNAM',112,'AAB VIETNAM'),(53,'/logo/pic8.jpg','SÂN KHẤU NGHỆ THUẬT TRƯƠNG HÙNG MINH',113,'Nhà Hát Biểu Diễn Nghệ Thuật Trương Hùng Minh'),(55,'/logo/pic24.jpg','CÔNG TY TNHH WOLF ENTERTAINMENT',114,'Chịu trách nhiệm sản xuất\nCÔNG TY TNHH WOLF ENTERTAINMENT'),(56,'/logo/pic32.png','CÔNG TY CP SÂN KHẤU & ĐIỆN ẢNH VÂN TUẤN',115,'Sân Khấu Hồng Vân'),(57,'/logo/pic18.png','Garden Art',116,'Garden Art là không gian tổ chức Workshop nghệ thuật'),(61,'/logo/pic33.jpg','KHU DU LỊCH VĂN HÓA SUỐI TIÊN',117,'Khu Du lịch Văn hóa Suối Tiên - Một trung tâm vui chơi giải trí kết hợp đa dạng những giá trị truyền thống và hiện đại; nổi tiếng với các công trình Văn hóa - lịch sử - Tâm linh lâu đời và ngày càng phát triển các công trình mới phù hợp với xu hướng du lịch xanh trải nghiệm. Suối Tiên – Miền đất Tứ Linh bốn mùa Lễ hội cùng những sự kiện văn hóa nghệ thuật đặc sắc hứa hẹn sẽ mang đến cho quý du khách một chuyến tham quan đáng nhớ và vô cùng thú vị'),(63,'/logo/pic17.png','HỘ KINH DOANH THƯỢNG PHẨM PHẬT GIÁO PHÁP TẠNG',118,'HỘ KINH DOANH THƯỢNG PHẨM PHẬT GIÁO PHÁP TẠNG\nĐịa chỉ: 764 Nguyễn Chí Thanh, Phường 4, Quận 11, Thành phố Hồ Chí Minh, Việt Nam\nMST: 8476529106-002'),(64,'/logo/pic34.png','Khu Vui Chơi BDUCK CITY FUNS',119,'Biểu tượng vịt vàng B.DUCK CITYFUNS nổi tiếng toàn cầu'),(65,'/logo/pic35.png','Công ty Cổ Phần Thiền Vũ Trụ Bên Trong Bạn',120,'Về chúng tôi - Thiền Như Chính Là Thiền, Việt Nam\nChúng tôi phổ biến Thiền với đầy đủ ý nghĩa và định hướng về sự NGUYÊN BẢN của Thiền: Thiền giản đơn và nguyên bản - Thiền như chính là Thiền (The simple and original Meditation - Meditation As It Is).'),(68,'/logo/pic36.jpg','BENARAS HERITAGE',123,'Benaras Indian Restaurant Chain in Vietnam'),(69,'/logo/pic37.png','Eventure JSC',124,'Eventure JSC. là đơn vị tổ chức triển lãm và sự kiện chuyên nghiệp, mang sứ mệnh nâng cao giá trị thiết thực của kết nối kinh doanh, thúc đẩy sự gắn kết bền vững trong cộng đồng ngành và sáng tạo những ý tưởng xúc tiến thương mại độc đáo, ứng dụng công nghệ cao trong quản lý sự kiện. Triển lãm &amp; Lễ hội Quốc tế Thú cưng Việt Nam là chương trình độc lập do Eventure JSC. phối hợp tổ chức cùng GMEG'),(70,'/logo/pic33.jpg','KHU DU LỊCH VĂN HÓA SUỐI TIÊN',125,'Khu Du lịch Văn hóa Suối Tiên - Một trung tâm vui chơi giải trí kết hợp đa dạng những giá trị truyền thống và hiện đại; nổi tiếng với các công trình Văn hóa - lịch sử - Tâm linh lâu đời và ngày càng phát triển các công trình mới phù hợp với xu hướng du lịch xanh trải nghiệm. Suối Tiên – Miền đất Tứ Linh bốn mùa Lễ hội cùng những sự kiện văn hóa nghệ thuật đặc sắc hứa hẹn sẽ mang đến cho quý du khách một chuyến tham quan đáng nhớ và vô cùng thú vị'),(71,'/logo/pic38.png','Sân Khấu Thế Giới Trẻ',126,'Sân Khấu Thế Giới Trẻ'),(72,'/logo/pic23.png','CÔNG TY TNHH SÂN KHẤU NGHỆ THUẬT THIÊN ĐĂNG',127,'CÔNG TY TNHH SÂN KHẤU NGHỆ THUẬT THIÊN ĐĂNG\n\nĐược sáng lập bởi NSƯT Thành Lộc, người đã có gần nửa thế kỷ gắn bó với sân khấu thoại kịch\nSân khấu Thiên Đăng hoạt động dựa trên tôn chỉ nghệ thuật phụng sự khán giả, mang tới những vở diễn cân bằng giữa hai yếu tố nghệ thuật và giải trí. Tên sân khấu được đặt là Thiên Đăng (Đèn Trời) nhưng đó cũng là ngọn đèn sân khấu bởi vì với người nghệ sĩ thì sân khấu là Đạo Trời, là Đạo Làm Người, là lẽ sống mà họ phải hết lòng tận tụy phụng sự.'),(73,'/logo/pic39.png','Dốc Mộng Mơ',129,'Dốc Mộng Mơ'),(74,'/logo/pic29.jpg','La Maritza Show',130,'Không gian của âm nhạc - nơi nghệ sĩ và khán giả hòa nhịp trong những đêm diễn đầy cảm xúc'),(75,'/logo/pic40.png','HBA Show',131,'Chạm Cảm Xúc - Tạo Thăng Hoa\nTổ chức sự kiện'),(76,'/logo/pic39.png','Dốc Mộng Mơ',132,'Dốc Mộng Mơ'),(77,'/logo/pic41.jpg','Mars Entertainment',133,'117/20 Nguyễn Văn Hưởng, Thảo Điền, quận 2, Thủ Đức'),(78,'/logo/pic42.jpg','THIỀN NHƯ CHÍNH LÀ THIỀN-VIỆT NAM',134,'Thiền Như Chính Là Thiền - Việt Nam\nHotline: 0934 870 774 (Điện thoại/ zalo/ viber/ whatsapp - chị Phấn Linh)'),(79,'/logo/pic43.png','Messe Muenchen International Asia (MMI Asia)',135,'MMI Asia Pte. Ltd. được thành lập với tư cách là trụ sở vùng và là công ty con thuộc sở hữu hoàn toàn của Messe München vào năm 1992.\n\nVới các công ty con tại Trung Quốc và Ấn Độ, MMI Asia tổ chức các hội chợ thương mại tại Trung Quốc, Ấn Độ và các nước ASEAN; thúc đẩy mở rộng thương mại toàn cầu bằng cách tạo điều kiện cho các nhà triển lãm châu Á tham gia các hội chợ Messe München trên toàn thế giới; công ty cũng cung cấp dịch vụ tư vấn về quản lý hội chợ thương mại và hội nghị chuyên nghiệp.'),(80,'/logo/pic44.png','Conviction',136,'Vietnam Digital Asset Economy Forum');
/*!40000 ALTER TABLE `organizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NOT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `avatarUrl` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `datebirth` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_97672ac88f789774dd47f7c8be` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'$2b$10$6PYwewfvM2mDTj1QyRwYmeA178KmPUGIGxCoaxG4zbwIpKlpJA2du','$2b$10$OUdUBGe4Ml/p5BwJtwj3Eux.1U2Vk/FgZ2g12yQQPfhehuuNcya7q',NULL,'Admin@gmail.com',NULL,NULL,NULL,NULL,'admin');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-26 10:56:02
