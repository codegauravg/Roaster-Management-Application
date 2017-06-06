/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginInfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `loginInfo` WRITE;
/*!40000 ALTER TABLE `loginInfo` DISABLE KEYS */;
INSERT INTO `loginInfo` VALUES 
(1001,'dilipjain@cris.com','12345'),
(1002,'john@cris.com','12345'),
(1003,'ajay@cris.com','12345'),
(1004,'codegauravg@gmail.com','00000'),
(1005,'pradeep@cris.com','12345'),
(1006,'geetu.luthra95@gmail.com','00000');
/*!40000 ALTER TABLE `loginInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15 21:50:59
