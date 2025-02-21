DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` longtext,
  `name` longtext,
  `email` longtext,
  `role` bigint DEFAULT NULL,
  `beacon_id` bigint DEFAULT NULL,
  `community_id` bigint DEFAULT NULL,
  `private_key` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES 
(1,'2024-04-20 21:59:08.932','2024-11-24 23:45:23.980',NULL,'8ebc21144abdba0db7c6ff0f00000000','hayaashidayo','',1,4,2,'4102030405060708a90a0b0c0d0e0f08'),
(2,'2024-04-20 21:59:08.932','2024-11-25 23:46:03.008',NULL,'8ebc21144abdba0db7c6ff0f00000002','ogan','',2,4,2,'1202030405060708a90a0b0c0d0e0f06'),
(3,'2024-04-20 21:59:08.932','2024-04-20 21:59:08.932',NULL,'8ebc21144abdba0db7c6ff0f00000003','miyagawa','',1,1,2,NULL),
(4,'2024-04-20 21:59:08.932','2024-04-20 21:59:08.932',NULL,'8ebc21144abdba0db7c6ff0f00000004','togawa(自作ビーコン)','',1,1,1,NULL);
UNLOCK TABLES;
