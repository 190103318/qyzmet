-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qyzmet
-- ------------------------------------------------------
-- Server version	5.7.39-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Мусор и отходы','garbage.png'),(2,'Опасности для здоровья','healthharm.png'),(3,'Ущерб улицам и паркам','streetharm.png'),(4,'Автомобиль/Парковка','car.png'),(5,'Огни(Общественная безопасность)','fire.png'),(6,'Незаконное граффити','graffiti.png'),(7,'Деревья','tree.png');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_questions`
--

DROP TABLE IF EXISTS `request_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(11) DEFAULT NULL,
  `questions` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answers` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategory_id_idx` (`subcategory_id`),
  CONSTRAINT `subcategory_id` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_questions`
--

LOCK TABLES `request_questions` WRITE;
/*!40000 ALTER TABLE `request_questions` DISABLE KEYS */;
INSERT INTO `request_questions` VALUES (1,1,'Опишите, что нужно убрать.',NULL),(2,1,'Размер очищаемой площади?','1-2 м. кв, 3-5 м.кв, 6-10 м.кв, 10-15 м. кв'),(3,2,'Количество баков для утилизации ','1, 2, 3 и более'),(4,2,'Пользуетесь ли вы в настоящее время услугой вывоза мусора','Да, Нет'),(5,2,'Вы живете в доме, где проживает не более 4 члена семьи?','Да, Нет'),(6,3,'Подробно описать мусор?',NULL),(7,4,'Что это за животное?','Кот, Собака, Летучие мыши, Кролик, Мыш, Белка'),(8,5,'Описание',NULL),(9,6,'Описание',NULL),(10,7,'Опишите характер проблемы с тротуаром.','Бетон сломан, тротуар под водой, Граффити на тротуаре, Дыра в тротуаре, Поднятый тротуар'),(11,8,'Какой ущерб нанесен знаку?',NULL),(12,8,'Тип знака',NULL),(13,9,'Описание',NULL),(14,10,'Марка/модель автомобиля',NULL),(15,10,'Сколько дней автомобиль стоял на стоянке?',NULL),(16,10,'Цвет автомобиля',NULL),(17,10,'Номерной знак транспортного средства',NULL),(18,11,'В какой день произошел инцидент',NULL),(19,11,'В какое время суток произошел инцидент',NULL),(20,11,'Дополнительно',NULL),(21,12,'фонарь отсутствует','Да, Нет'),(22,12,'фонарь работает в дневное время','Да, Нет'),(23,12,'фонарь сломан или поврежден ','Да, Нет'),(24,12,'Поврежден светильник','Да, Нет'),(25,13,'Уличный фонарь отсутствует','Да, Нет'),(26,13,'Уличный фонарь работает в дневное время','Да, Нет'),(27,13,'Уличный фонарь сломан или поврежден','Да, Нет'),(28,13,'Поврежден светильник','Да, Нет'),(29,14,'Что за проблема со светофором?','Сигнал светофора отсутствуют, Снег мешает видеть сигнал светофора, Ветки дерева мешают видеть сигнал светофора, Мигающий желтый, Мигающий красный'),(30,14,'Дополнение',NULL),(31,18,'На какой поверхности нанесен граффити',NULL),(32,18,'Расположен ли выше 10 метров','Да, Нет'),(33,18,'Описание',NULL),(34,15,'Где бы вы хотели посадить деревья?',NULL),(35,15,'Сколько деревьев вы запрашиваете?',NULL),(36,15,'Было ли недавно посажено дерево?','Да, Нет'),(37,16,'Что не так с деревом?',NULL),(38,16,'Сколько деревьев нужно удалить?',NULL),(39,16,'Если речь идет о насекомом/вредителе, то о каком?',NULL),(40,17,'Описание',NULL);
/*!40000 ALTER TABLE `request_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lat` float DEFAULT NULL,
  `lng` float DEFAULT NULL,
  `location_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `answers` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcategory_id_idx` (`subcategory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
INSERT INTO `requests` VALUES (2,23.56,44.66,'Шауилдир','Hinata','Bakugan','sds@gmail.com',NULL,'done',1,'sdasdasdas',NULL,NULL),(3,23.56,44.66,'Шауилдир','Hinata','Bakugan','sds@gmail.com','8758475894','missed',1,'sdasdasdas',NULL,NULL),(4,43.2389,76.9031,'Greek','Elder','Lord','190103402@stu.sdu.edu.kz','(776) 296-6052','todo',1,'dsafafasdas',NULL,NULL),(5,43.2449,76.9038,'','lSKJADpo;askj;od','fasdfsad','dsafgasd','sadsadsa','todo',12,'sdasdasdas','Нет,Да,Нет,Да',NULL),(6,43.2285,76.881,'','Raphinia','Lord','islam798@mail.ru','(776) 296-6052','todo',12,'sdasdasdas','Да,Да,Да,Нет',NULL),(7,23.56,44.66,'Шауилдир','Hinata','Bakugan','sds@gmail.com','8758475894','missed',1,'sdasdasdas',NULL,NULL),(8,43.2324,76.8942,'','Elder','Lord','190103402@stu.sdu.edu.kz','(776) 296-6052','todo',12,'','Да,Нет,Нет,Нет',NULL),(9,43.2365,76.8882,'','','','','','todo',12,'','',NULL),(10,43.2501,76.9254,'','','','','','todo',12,'sdasdasdas','',NULL),(11,43.2423,76.9086,'','','','','','todo',12,'','',NULL),(12,43.2349,76.9161,'','Elder','fasdfsad','Elder','(776) 296-6052','missed',12,'','Да,Да,Да,Да',NULL),(13,43.2335,76.9244,'','','','','','todo',12,'','',NULL),(14,43.2412,76.8954,'','Batman','Joker','islam798@mail.ru','(776) 296-6052','done',12,'','Да,Да,Нет,Да',NULL),(15,43.238,76.8998,'','Elder','Lord','islam798@mail.ru','(776) 296-6052','missed',12,'','Да,Да,Да,Да',NULL),(16,43.2324,76.8758,'sdadasdas','e','fasdfsad','190103402@stu.sdu.edu.kz','(776) 296-6052','done',12,'','Да,Да,Да,Да',NULL),(17,43.2324,76.8758,'sdadasdas','e','fasdfsad','190103402@stu.sdu.edu.kz','(776) 296-6052','todo',12,'','Да,Да,Да,Да',NULL),(18,43.238,76.9414,'Bolashak','Domik','V domike','domik001@gmail.com','(776) 296-6052','todo',12,'','Да,Нет,Нет,Нет',NULL),(19,43.2543,76.883,'Eldasdas','Elder','Joker','islam798@mail.ru','(776) 296-6052','todo',1,'','sdasd,3-5 м.кв','2023-04-04'),(20,43.2435,76.9904,'Xuynia','Elder','Joker','islam798@mail.ru','(776) 296-6052','todo',10,'','KSDJlkasd,dsadas,dasdas,adasdas','2023-04-19');
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (1,1,'Мусор','Этот сервисный запрос используется для сообщения о мусоре, мусоре или развалинах на пустырях'),(2,1,'Переполненный мусорный бак','Этот сервисный запрос используется для сообщения о переполненных мусорных баках.'),(3,1,'Жилой мусор выбрасывается незаконно','Этот сервисный запрос используется для сообщения о мусоре выбрасываемом незаконно '),(4,2,'Сбор мертвых животных','Этот тип служебного запроса сообщает о мертвом животном, которое необходимо подобрать и удалить.'),(5,2,'Наблюдение за грызунами','Используйте этот сервисный запрос, чтобы сообщить о проблеме с грызунами или крысами.'),(6,3,'Сломанное парковое оборудование','Сообщите о сильно поврежденном и/или поваленном оборудование.'),(7,3,'Сломанный тротуар','Используйте этот сервисный запрос, чтобы сообщить о состоянии городских тротуаров или проблемах доступности '),(8,3,'Повережденный знак','Сообщайте о проблемах с обслуживанием различным отсутствующим, поврежденным или граффити знакам, таким как велосипедный маршрут, парковка для инвалидов, название улицы и зона погрузки, ограничение парковки, пешеходный переход или знаки ограничения скорости.'),(9,4,'Брошенный велосипед','Используйте этот сервисный запрос, чтобы сообщить о брошенных велосипедах'),(10,4,'Брощшенный автомобиль','Используйте этот сервисный запрос, чтобы сообщить о брошенном автомобиле. '),(11,4,'Незаконная парковка','Сообщите о проблеме с незаконной парковке'),(12,5,'Парковые огни','Сообщите о фонарях в парках, которые не работают'),(13,5,'Уличные фонари','Сообщите о уличных фонарях, которые не работают'),(14,5,'Сигнал светофора','Сообщите о светофорах и/или сигналах пешеходного перехода, которые не работают или мигают.'),(15,7,'Новые запросы дерева','Используйте этот сервисный запрос, чтобы запросить посадку дерева'),(16,7,'Удаление мертвого дерева','Городской инспектор будет проверять деревья на дороге, чтобы определить, мертвы они или больны.'),(17,7,'Обрезка деревьев','Используйте этот сервисный запрос, чтобы запросить обрезку деревьев'),(18,6,'Незаконное граффити','Используйте этот сервисный запрос, чтобы удалить незаконный граффити');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Marcus Sirakuz','qwer@gmail.com','qwerty1234','87771112233'),(2,'Marcus Sirakuz','aerr@gmail.com','qwerty1234','87771112233'),(3,'Marcus Sirakuz','ElderLord@gmail.com','qwerty1234','87771112233'),(4,NULL,'MRX','qwer1234',NULL),(5,NULL,'Joker1234','qwer1234',NULL),(6,NULL,'domikvbodike@gmail.com','Damir',NULL);
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

-- Dump completed on 2023-04-26 11:54:12
