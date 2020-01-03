CREATE DATABASE  IF NOT EXISTS `demo_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `demo_app`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: demo_app
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
INSERT INTO `oauth_client_details` VALUES ('client',NULL,'$2y$12$LcxOWzhNyVZKaVrIJUbuse3FzzFuKm/JXtiUeLXb.I6GqnWm7nyhi','read, write, trust','authorization_code,password,refresh_token,implicit',NULL,NULL,360000,2592000,NULL,NULL);
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_invoice_details`
--

DROP TABLE IF EXISTS `tbl_invoice_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_invoice_details` (
  `id` varchar(36) NOT NULL,
  `invoice_id` varchar(36) DEFAULT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` decimal(20,2) DEFAULT '0.00',
  `price` decimal(20,2) DEFAULT '0.00' COMMENT 'Gia ban',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE' COMMENT '1: Active; 7: Inactive',
  `reg_user` varchar(50) DEFAULT NULL,
  `reg_dttm` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_invoice_details`
--

LOCK TABLES `tbl_invoice_details` WRITE;
/*!40000 ALTER TABLE `tbl_invoice_details` DISABLE KEYS */;
INSERT INTO `tbl_invoice_details` VALUES ('3f100580-01e3-11ea-af14-cb12a2e79f29','3e2a3960-01e3-11ea-b1ff-79d04bf602e3','d4d11f8e-1d44-4a94-a5ee-6adc36c9b19b','Bún đậu mẹt 3',1.00,80000.00,'ACTIVE',NULL,NULL),('3f3b0d20-01e3-11ea-8829-3776e7ec258b','3e2a3960-01e3-11ea-b1ff-79d04bf602e3','6a3c47b2-b07a-482a-baf4-90c3c2e73a35','Canh',1.00,15000.00,'ACTIVE',NULL,NULL),('3f82eb90-01e3-11ea-be37-d7b60d012b7f','3e2a3960-01e3-11ea-b1ff-79d04bf602e3','1b129eec-eb72-471a-b322-0f735082c874','Chim quay',1.00,100000.00,'ACTIVE',NULL,NULL),('3fac6c90-01e3-11ea-ba42-6b7082473cb6','3e2a3960-01e3-11ea-b1ff-79d04bf602e3','de81afd7-e416-42e9-826b-b9f5b27cef86','Gà luộn',1.00,150000.00,'ACTIVE',NULL,NULL),('3fdc5630-01e3-11ea-cd4b-a1ece9c2087d','3e2a3960-01e3-11ea-b1ff-79d04bf602e3','d1632205-764b-4d91-9f7e-f6f6fb60756a','Chả nem',1.00,30000.00,'ACTIVE',NULL,NULL),('4527aae0-01d9-11ea-e0d6-157f39257319','40307530-01d9-11ea-8348-bd8a10d8b4f7','6a3c47b2-b07a-482a-baf4-90c3c2e73a35','Canh',1.00,15000.00,'ACTIVE',NULL,NULL),('45523d50-01d9-11ea-c6da-ad554bf13991','40307530-01d9-11ea-8348-bd8a10d8b4f7','d1632205-764b-4d91-9f7e-f6f6fb60756a','Chả nem',1.00,30000.00,'ACTIVE',NULL,NULL),('457b9740-01d9-11ea-ac36-0fb0af4190ec','40307530-01d9-11ea-8348-bd8a10d8b4f7','1b30eb55-38db-48ca-9616-959896569526','Dạ dày quay',1.00,40000.00,'ACTIVE',NULL,NULL),('47ea7ef0-01da-11ea-bc1c-655e0f0b5d3e','468a2ba0-01da-11ea-9e0d-894ca6e19e1e','8c3473a4-b429-4a3f-bcfb-d89ef7acbfea','Bún chả',1.00,40000.00,'ACTIVE',NULL,NULL),('48158690-01da-11ea-dd37-ebca62446cb6','468a2ba0-01da-11ea-9e0d-894ca6e19e1e','d4d11f8e-1d44-4a94-a5ee-6adc36c9b19b','Bún đậu mẹt 3',1.00,80000.00,'ACTIVE',NULL,NULL),('4849dd00-01da-11ea-bc86-d1ad5c3d6e29','468a2ba0-01da-11ea-9e0d-894ca6e19e1e','6a3c47b2-b07a-482a-baf4-90c3c2e73a35','Canh',1.00,15000.00,'ACTIVE',NULL,NULL),('4c4c2b60-01da-11ea-f1fe-099eee7fc0bd','4996f670-01da-11ea-96f3-9f1e39309791','de81afd7-e416-42e9-826b-b9f5b27cef86','Gà luộn',1.00,150000.00,'ACTIVE',NULL,NULL),('4c797cf0-01da-11ea-cd26-533a4fe6d7cc','4996f670-01da-11ea-96f3-9f1e39309791','fc386421-a409-4ef3-8cb7-619f0a13847a','Gà nguyên con',1.00,200000.00,'ACTIVE',NULL,NULL),('4ca1c570-01da-11ea-fd1b-c3976123e370','4996f670-01da-11ea-96f3-9f1e39309791','abc53d42-f7c0-44a9-a346-766fbfa0f6da','Gà quay',1.00,16000.00,'ACTIVE',NULL,NULL),('5bae1dd0-01d9-11ea-b7d3-4f0b71333003','5b24c990-01d9-11ea-b61a-c569ee9c6658','8c3473a4-b429-4a3f-bcfb-d89ef7acbfea','Bún chả',1.00,40000.00,'ACTIVE',NULL,NULL),('5bd777c0-01d9-11ea-b9b4-71bcd060af32','5b24c990-01d9-11ea-b61a-c569ee9c6658','d4d11f8e-1d44-4a94-a5ee-6adc36c9b19b','Bún đậu mẹt 3',1.00,80000.00,'ACTIVE',NULL,NULL),('6a407120-020d-11ea-e160-e70ca972085b','69833ba0-020d-11ea-86ac-8fa9cff39d2f','8c3473a4-b429-4a3f-bcfb-d89ef7acbfea','Bún chả',1.00,40000.00,'ACTIVE',NULL,NULL),('6a76ea70-020d-11ea-b4fe-87c04f263f30','69833ba0-020d-11ea-86ac-8fa9cff39d2f','ee162dfc-80f1-4cbc-96b4-c759046b5111','Bún đậu mẹt 2',1.00,70000.00,'ACTIVE',NULL,NULL),('7b19f2f0-020d-11ea-a782-1f23a89f2e2a','7aaefc20-020d-11ea-90bb-0b1a059e98c4','8c3473a4-b429-4a3f-bcfb-d89ef7acbfea','Bún chả',1.00,40000.00,'ACTIVE',NULL,NULL),('7b315b10-01d7-11ea-d48d-a1b07ae0ea07','7a2e6a00-01d7-11ea-a8f2-9fd18e9cdc99','6a3c47b2-b07a-482a-baf4-90c3c2e73a35','Canh',1.00,15000.00,'ACTIVE',NULL,NULL),('7b55fa10-01d7-11ea-f019-7922d26c5bc4','7a2e6a00-01d7-11ea-a8f2-9fd18e9cdc99','fa2f2987-0a1c-4ce6-a91d-5c9d9475a151','Chả lụa',1.00,30000.00,'ACTIVE',NULL,NULL),('7b7c94e0-01d7-11ea-98eb-51462eb903d9','7a2e6a00-01d7-11ea-a8f2-9fd18e9cdc99','1b129eec-eb72-471a-b322-0f735082c874','Chim quay',1.00,100000.00,'ACTIVE',NULL,NULL),('7b875ac0-020d-11ea-db55-2775d598a644','7aaefc20-020d-11ea-90bb-0b1a059e98c4','ee162dfc-80f1-4cbc-96b4-c759046b5111','Bún đậu mẹt 2',1.00,70000.00,'ACTIVE',NULL,NULL),('993649d0-01e2-11ea-cccd-c3ef0d482eda','9729b0f0-01e2-11ea-aa95-53d759d6a15f','8c3473a4-b429-4a3f-bcfb-d89ef7acbfea','Bún chả',1.00,40000.00,'ACTIVE',NULL,NULL),('998ef120-01e2-11ea-9f62-7bc35fef87fa','9729b0f0-01e2-11ea-aa95-53d759d6a15f','6a3c47b2-b07a-482a-baf4-90c3c2e73a35','Canh',1.00,15000.00,'ACTIVE',NULL,NULL),('99bedac0-01e2-11ea-d875-5d6027702ce1','9729b0f0-01e2-11ea-aa95-53d759d6a15f','1b129eec-eb72-471a-b322-0f735082c874','Chim quay',2.00,100000.00,'ACTIVE',NULL,NULL),('9a325d10-01e2-11ea-91ad-554bb998d571','9729b0f0-01e2-11ea-aa95-53d759d6a15f','fa2f2987-0a1c-4ce6-a91d-5c9d9475a151','Chả lụa',1.00,30000.00,'ACTIVE',NULL,NULL),('cfbc0170-01d8-11ea-8f09-394b12b8c2a2','c41a67d0-01d8-11ea-b045-f73e654f3816','ee162dfc-80f1-4cbc-96b4-c759046b5111','Bún đậu mẹt 2',1.00,70000.00,'ACTIVE',NULL,NULL),('cfef4670-01d8-11ea-a027-2f23044f0f62','c41a67d0-01d8-11ea-b045-f73e654f3816','d4d11f8e-1d44-4a94-a5ee-6adc36c9b19b','Bún đậu mẹt 3',1.00,80000.00,'ACTIVE',NULL,NULL),('d01e93d0-01d8-11ea-852d-3730c26ec4d4','c41a67d0-01d8-11ea-b045-f73e654f3816','d1632205-764b-4d91-9f7e-f6f6fb60756a','Chả nem',1.00,30000.00,'ACTIVE',NULL,NULL),('d050a050-01d8-11ea-b51c-b15827f6cf76','c41a67d0-01d8-11ea-b045-f73e654f3816','1b129eec-eb72-471a-b322-0f735082c874','Chim quay',1.00,100000.00,'ACTIVE',NULL,NULL),('ee866310-01e3-11ea-9372-e5b59bb56f81','ee2a6060-01e3-11ea-dac7-8d75ccbb9741','ee162dfc-80f1-4cbc-96b4-c759046b5111','Bún đậu mẹt 2',1.00,70000.00,'ACTIVE',NULL,NULL),('eead4c00-01e3-11ea-b4a4-55610f6e60e5','ee2a6060-01e3-11ea-dac7-8d75ccbb9741','d4d11f8e-1d44-4a94-a5ee-6adc36c9b19b','Bún đậu mẹt 3',1.00,80000.00,'ACTIVE',NULL,NULL);
/*!40000 ALTER TABLE `tbl_invoice_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_invoices`
--

DROP TABLE IF EXISTS `tbl_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_invoices` (
  `id` varchar(36) NOT NULL,
  `amount` decimal(20,2) DEFAULT '0.00',
  `status` varchar(20) DEFAULT 'ACTIVE',
  `reg_user` varchar(50) DEFAULT NULL,
  `reg_dttm` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_invoices`
--

LOCK TABLES `tbl_invoices` WRITE;
/*!40000 ALTER TABLE `tbl_invoices` DISABLE KEYS */;
INSERT INTO `tbl_invoices` VALUES ('3dceb570-01ef-11ea-a2f4-e1a2cd30752a',0.00,'ACTIVE','0941903457','2019-11-08 06:16:11'),('3e2a3960-01e3-11ea-b1ff-79d04bf602e3',375000.00,'ACTIVE','0941903457','2019-11-08 04:50:16'),('40307530-01d9-11ea-8348-bd8a10d8b4f7',85000.00,'ACTIVE','trieunv',NULL),('468a2ba0-01da-11ea-9e0d-894ca6e19e1e',135000.00,'ACTIVE','0941903457','2019-11-08 03:46:04'),('4996f670-01da-11ea-96f3-9f1e39309791',366000.00,'ACTIVE','0941903457','2019-11-08 03:46:12'),('5b24c990-01d9-11ea-b61a-c569ee9c6658',120000.00,'ACTIVE','0941903457','2019-11-08 03:39:28'),('69833ba0-020d-11ea-86ac-8fa9cff39d2f',110000.00,'ACTIVE','0941903457','2019-11-08 09:52:06'),('7a2e6a00-01d7-11ea-a8f2-9fd18e9cdc99',145000.00,NULL,'trieunv',NULL),('7aaefc20-020d-11ea-90bb-0b1a059e98c4',110000.00,'ACTIVE','0941903457','2019-11-08 09:52:34'),('9729b0f0-01e2-11ea-aa95-53d759d6a15f',285000.00,'ACTIVE','0941903457','2019-11-08 04:45:37'),('c41a67d0-01d8-11ea-b045-f73e654f3816',280000.00,'ACTIVE','trieunv',NULL),('ee2a6060-01e3-11ea-dac7-8d75ccbb9741',150000.00,'ACTIVE','0941903457','2019-11-08 04:55:15');
/*!40000 ALTER TABLE `tbl_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` varchar(36) NOT NULL,
  `price` decimal(20,2) DEFAULT '0.00',
  `product_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reg_user` varchar(50) DEFAULT NULL,
  `reg_dttm` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES ('1b129eec-eb72-471a-b322-0f735082c874',100000.00,'Chim quay',NULL,NULL),('1b30eb55-38db-48ca-9616-959896569526',40000.00,'Dạ dày quay',NULL,NULL),('434a5806-93ac-4a86-b03c-18132f4f9940',300000.00,'Lẩu',NULL,NULL),('48ccc91f-3fdd-4097-81f0-ecbbf8b6e812',25000.00,'Thịt mông quay',NULL,NULL),('518daa64-c46b-4dc4-a0ca-cc00f2e99417',28000.00,'Ba chỉ quay',NULL,NULL),('6a3c47b2-b07a-482a-baf4-90c3c2e73a35',15000.00,'Canh',NULL,NULL),('7b8d0aeb-a92b-431b-9cc2-40c6a8b7a1f0',10000.00,'Kiệu muối',NULL,NULL),('8c3473a4-b429-4a3f-bcfb-d89ef7acbfea',40000.00,'Bún chả',NULL,NULL),('9b40bfbe-02b8-47d6-87a5-6529a84f6917',100000.00,'Ngan quay',NULL,NULL),('abc53d42-f7c0-44a9-a346-766fbfa0f6da',16000.00,'Gà quay',NULL,NULL),('b5af4efc-9e76-429d-b44e-8cba44011bcb',30000.00,'Mực','trieunv',NULL),('bdce5153-1e3a-4c48-9729-0aee9a06acc8',30000.00,'Lợn sữa quay',NULL,NULL),('d1632205-764b-4d91-9f7e-f6f6fb60756a',30000.00,'Chả nem',NULL,NULL),('d4d11f8e-1d44-4a94-a5ee-6adc36c9b19b',80000.00,'Bún đậu mẹt 3',NULL,NULL),('de81afd7-e416-42e9-826b-b9f5b27cef86',150000.00,'Gà luộn',NULL,NULL),('ec74a39a-2d68-4e05-a84c-3301fd32863f',40000.00,'Lưỡi quay',NULL,NULL),('ee162dfc-80f1-4cbc-96b4-c759046b5111',70000.00,'Bún đậu mẹt 2',NULL,NULL),('ee272343-c41b-4578-8614-8c929bdc8b18',100000.00,'Ngỗng quay',NULL,NULL),('fa2f2987-0a1c-4ce6-a91d-5c9d9475a151',30000.00,'Chả lụa',NULL,NULL),('fc386421-a409-4ef3-8cb7-619f0a13847a',200000.00,'Gà nguyên con',NULL,NULL);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` varchar(36) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `status` varchar(10) DEFAULT NULL COMMENT '1: Active; 7: Inactive',
  `upd_user` varchar(50) DEFAULT NULL,
  `upd_dttm` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  KEY `tbl_users_user_name` (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Luu danh sach user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES ('3e7627f6-7a08-4872-9aa3-df2d999ca99a','0941903457','$2y$12$i.Kg72vjGxJWBQTdW3npfO6bXt.tlhhiqbgNI44OKaTFhfo8uGNyi','ACTIVE',NULL,NULL);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03 15:46:47
