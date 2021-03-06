-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: aadhar
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

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
-- Current Database: `aadhar`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `aadhar` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aadhar`;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `AccountNumber` varchar(20) NOT NULL,
  `BankId` int(10) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `BankId` (`BankId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (4,'SBI123',8,'2012-03-26 18:30:00');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `CO` varchar(50) DEFAULT NULL,
  `Line1` varchar(100) NOT NULL,
  `Line2` varchar(100) DEFAULT NULL,
  `Line3` varchar(100) DEFAULT NULL,
  `Area` varchar(100) NOT NULL,
  `CityId` int(10) NOT NULL,
  `DistrictId` int(10) NOT NULL,
  `StateId` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (16,'WO Ved Prakash','A-402, OZONE','Survey No. 73/2','Sant Nagar','Lohegaon',1076,352,21);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankAccounts`
--

DROP TABLE IF EXISTS `bankAccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankAccounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankAccounts`
--

LOCK TABLES `bankAccounts` WRITE;
/*!40000 ALTER TABLE `bankAccounts` DISABLE KEYS */;
INSERT INTO `bankAccounts` VALUES (1,'123'),(2,'123'),(3,'123'),(4,'123'),(5,'123'),(6,'123456'),(7,'123456789'),(8,'234sgabasdfklsd'),(9,'234s'),(10,'234s'),(11,'234s'),(12,'234s'),(13,'234s1'),(14,'234s1'),(15,'234s1'),(16,'234s1'),(17,'1234567890'),(18,'1234567890'),(19,'1234567890'),(20,'U00328262597840'),(21,'U00328266854270');
/*!40000 ALTER TABLE `bankAccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banks` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
INSERT INTO `banks` VALUES (8,'State Bank of India','https://secure.onlinesbi.com/TransactionServlet.do'),(10,'ICICI','http://netbanking.icici.com/TransactionServlet.action');
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificates` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `UID` varchar(15) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Type` enum('ID','BIRTH','DEATH') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificates`
--

LOCK TABLES `certificates` WRITE;
/*!40000 ALTER TABLE `certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen`
--

DROP TABLE IF EXISTS `citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citizen` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `UID` varchar(15) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Gender` enum('MALE','FEMALE','OTHER') NOT NULL,
  `DateOfBirth` datetime NOT NULL,
  `LocalAddressId` int(15) NOT NULL,
  `PermanentAddressId` int(15) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `Mobile` varchar(15) NOT NULL,
  `AccountId` int(15) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AccessRole` enum('CITIZEN','OFFICIAL','ADMIN') DEFAULT NULL,
  `Status` enum('ACTIVE','DISABLED','DEAD','PENDING') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LocalAddressId` (`LocalAddressId`),
  KEY `PermanentAddressId` (`PermanentAddressId`),
  KEY `AccountId` (`AccountId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen`
--

LOCK TABLES `citizen` WRITE;
/*!40000 ALTER TABLE `citizen` DISABLE KEYS */;
INSERT INTO `citizen` VALUES (3,'U00328266854270','8621ffdbc5698829397d97767ac13db3','DeepakShakya','MALE','1986-08-21 00:00:00',16,16,'justdpk@gmail.com','8308323595',4,'2012-03-27 05:38:05','OFFICIAL','ACTIVE');
/*!40000 ALTER TABLE `citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(100) NOT NULL,
  `stateid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stateid` (`stateid`)
) ENGINE=MyISAM AUTO_INCREMENT=1585 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Abhayapuri',4),(2,'Achabbal',15),(3,'Achalpur',21),(4,'Achhnera',34),(5,'Adari',34),(6,'Adalaj',12),(7,'Adilabad',2),(8,'Adityana',12),(9,'Adityapatna',17),(10,'Adoni',2),(11,'Adoor',18),(12,'Adyar',17),(13,'Adra',35),(14,'Afzalpur',17),(15,'Agartala',32),(16,'Agra',34),(17,'Ahiwara',7),(18,'Ahmedabad',12),(19,'Ahmedgarh',28),(20,'Ahmednagar',21),(21,'Ahmedpur',21),(22,'Aizawl',24),(23,'Ajmer',29),(24,'Ajra',21),(25,'Akaltara',7),(26,'Akathiyoor',18),(27,'Akhnoor',15),(28,'Akkalkot',21),(29,'Akola',21),(30,'Akot',21),(31,'Aland',17),(32,'Alandi',21),(33,'Alang',12),(34,'Alappuzha',18),(35,'Aldona',11),(36,'Alibag',21),(37,'Aligarh',34),(38,'Alipurduar',35),(39,'Allahabad',34),(40,'Almora',33),(41,'Alnavar',17),(42,'Along',3),(43,'Alur',17),(44,'Alwar',29),(45,'Amadalavalasa',2),(46,'Amalapuram',2),(47,'Amalner',21),(48,'Amarpur',5),(49,'Ambad',21),(50,'Ambagarh Chowki',7),(51,'Ambaji',12),(52,'Ambaliyasan',12),(53,'Ambejogai',21),(54,'Ambikanagara',17),(55,'Ambikapur',7),(56,'Ambivali Tarf Wankhal',21),(57,'Amguri',4),(58,'Amini',19),(59,'Amlabad',16),(60,'Amli',8),(61,'Amravati',21),(62,'Amreli',12),(63,'Amritsar',28),(64,'Amroha',34),(65,'Anakapalle',2),(66,'Anand',12),(67,'Anandapur',26),(68,'Anandnagaar',4),(69,'Anantapur',2),(70,'Anantnag',15),(71,'Ancharakandy',18),(72,'Andada',12),(73,'Anekal',17),(74,'Ankola',17),(75,'Anjar',12),(76,'Anjangaon',21),(77,'Anklav',12),(78,'Ankleshwar',12),(79,'Annigeri',17),(80,'Antaliya',12),(81,'Anugul',26),(82,'Ara',16),(83,'Arambhada',12),(84,'Arakkonam',31),(85,'Araria',5),(86,'Arang',7),(87,'Arambagh',35),(88,'Arsikere',17),(89,'Arcot',31),(90,'Areraj',5),(91,'Arkalgud',17),(92,'Arki',14),(93,'Arnia',15),(94,'Aroor',18),(95,'Arrah',5),(96,'Aruppukkottai',31),(97,'Arvi',21),(98,'Asankhurd',13),(99,'Asansol',35),(100,'Asarganj',5),(101,'Ashok Nagar',20),(102,'Ashta',21),(103,'Ashtamichira',18),(104,'Asika',26),(105,'Asola',10),(106,'Assandh',13),(107,'Ateli',13),(108,'Athni',17),(109,'Attingal',18),(110,'Atul',12),(111,'Aurad',17),(112,'Aurangabad',5),(113,'Aurangabad',21),(114,'Ausa',21),(115,'Avinissery',18),(116,'Awantipora',15),(117,'Azamgarh',34),(118,'Babiyal',13),(119,'Baddi',14),(120,'Bade Bacheli',7),(121,'Badepalle',2),(122,'Badharghat',32),(123,'Bagaha',5),(124,'Bahadurgarh',13),(125,'Bahadurganj',5),(126,'Baharampur',35),(127,'Bahraich',34),(128,'Bairgania',5),(129,'Bakhtiarpur',5),(130,'Balaghat',20),(131,'Balangir',26),(132,'Balasore',26),(133,'Baleshwar',26),(134,'Bali',29),(135,'Bally',35),(136,'Ballabhgarh',13),(137,'Ballia',34),(138,'Balod',7),(139,'Baloda Bazar',7),(140,'Balrampur',34),(141,'Balurghat',35),(142,'Bamra',26),(143,'Banda',34),(144,'Bandikui',29),(145,'Bandipore',15),(146,'Banganapalle',2),(147,'Banka',5),(148,'Banmankhi Bazar',5),(149,'Banswara',29),(150,'Bankura',35),(151,'Bapatla',2),(152,'Barakar',35),(153,'Barahiya',5),(154,'Baramati',21),(155,'Baramula',15),(156,'Baran',29),(157,'Barasat',35),(158,'Bardhaman',35),(159,'Barauli',5),(160,'Barbigha',5),(161,'Bareilly',34),(162,'Bargarh',26),(163,'Barughutu',16),(164,'Basna',7),(165,'Barbil',26),(166,'Bargarh',26),(167,'Barh',5),(168,'Baripada',26),(169,'Barmer',29),(170,'Barnala',28),(171,'Barpeta',4),(172,'Barpeta Road',4),(173,'Barrackpur',35),(174,'Barwani',20),(175,'Barwala',13),(176,'Basudebpur',26),(177,'Batala',28),(178,'Bathinda',28),(179,'Bawal',13),(180,'Bazpur',33),(181,'Beawar',29),(182,'Begusarai',5),(183,'Behea',5),(184,'Belgaum',17),(185,'Bellampalle',2),(186,'Bellary',17),(187,'Belpahar',26),(188,'Bemetra',7),(189,'Berhampur',26),(190,'Bethamcherla',2),(191,'Bettiah',5),(192,'Betul',20),(193,'Bhabua',5),(194,'Bhadrachalam',2),(195,'Bhadrak',26),(196,'Bhagalpur',5),(197,'Bhagha Purana',28),(198,'Bhainsa',2),(199,'Bhajanpura',10),(200,'Bhandara',21),(201,'Bharatpur',29),(202,'Bharthana',34),(203,'Bharuch',12),(204,'Bhatapara',7),(205,'Bhavani',31),(206,'Bhavnagar',12),(207,'Bhawanipatna',26),(208,'Bheemunipatnam',2),(209,'Bhilai',7),(210,'Bhilwara',29),(211,'Bhimavaram',2),(212,'Bhinmal',29),(213,'Bhiwandi',21),(214,'Bhiwani',13),(215,'Bhongir',2),(216,'Bhuban',26),(217,'Bhuj',12),(218,'Bhusawal',21),(219,'Bidar',17),(220,'Bidhan Nagar',35),(221,'5 Sharif',5),(222,'Bijnaur',34),(223,'Bikaner',29),(224,'Bikramganj',5),(225,'Bilara',29),(226,'Bilasipara',4),(227,'Bilaspur',7),(228,'Bilaspur',14),(229,'Biramitrapur',26),(230,'Birgaon',7),(231,'Bobbili',2),(232,'Bodhan',2),(233,'Bodh Gaya',5),(234,'Bokaro Steel City',16),(235,'Bongaigaon',4),(236,'Bomdila',3),(237,'Brahmapur',26),(238,'Brajrajnagar',26),(239,'Budaun',34),(240,'Budhlada',28),(241,'Bulandshahr',34),(242,'Burhanpur',20),(243,'Burla',26),(244,'Buxar',5),(245,'Byasanagar',26),(246,'Cambay',12),(247,'Chaibasa',16),(248,'Chakeri',34),(249,'Chakradharpur',16),(250,'Chalisgaon',21),(251,'Chamba',14),(252,'Chamba',33),(253,'Champa',7),(254,'Champawat',33),(255,'Champhai',24),(256,'Chamrajnagar',17),(257,'Chandil',16),(258,'Chandausi',34),(259,'Chandrapura',16),(260,'Chanpatia',5),(261,'Charkhi Dadri',13),(262,'Chapirevula',2),(263,'Chatra',16),(264,'Charkhari',34),(265,'Chalakudy',18),(266,'Chandrapur',21),(267,'Changanassery',18),(268,'Cheeka',13),(269,'Chendamangalam',18),(270,'Chengalpattu',31),(271,'Chengannur',18),(272,'Cherthala',18),(273,'Cheruthazham',18),(274,'Chhapra',5),(275,'Chhatarpur',20),(276,'Chhindwara',20),(277,'Chikmagalur',17),(278,'Chilakaluripet',2),(279,'Chinchani',21),(280,'Chinna salem',31),(281,'Chintamani',17),(282,'Chiplun',21),(283,'Chirala',2),(284,'Chirkunda',16),(285,'Chirmiri',7),(286,'Chinsura',35),(287,'Chitradurga',17),(288,'Chittur-Thathamangalam',18),(289,'Chitrakoot',20),(290,'Chittoor',2),(291,'Chockli',18),(292,'Churi',16),(293,'Churu',29),(294,'Coimbatore',31),(295,'Colgong',5),(296,'Contai',35),(297,'Cooch Behar',35),(298,'Coonoor',31),(299,'Cuddalore',31),(300,'Cuddapah',2),(301,'Curchorem Cacora',11),(302,'Cuttack',26),(303,'Chikkaballapur',17),(304,'Chandan Bara',5),(305,'Dabra',20),(306,'Dadri',34),(307,'Dahod',12),(308,'Dalhousie',14),(309,'Dalkhola',35),(310,'Dalli-Rajhara',7),(311,'Dalsinghsarai',5),(312,'Daltonganj',16),(313,'Daman and Diu',9),(314,'Damoh',20),(315,'Darbhanga',5),(316,'Darjeeling',35),(317,'Dasua',28),(318,'Datia',20),(319,'Daudnagar',5),(320,'Daund',21),(321,'Davanagere',17),(322,'Debagarh',26),(323,'Deesa',12),(324,'Dehgam',12),(325,'Dehradun',33),(326,'Dehri-on-Sone',5),(327,'Deoghar',16),(328,'Deoria',34),(329,'Devarakonda',2),(330,'Devgarh',21),(331,'Devgarh',29),(332,'Dewas',20),(333,'Dhaka',5),(334,'Dhamtari',7),(335,'Dhanbad',16),(336,'Dhar',20),(337,'Dharampur',12),(338,'Dharamsala',14),(339,'Dharmanagar',32),(340,'Dharmapuri',31),(341,'Dharmavaram',2),(342,'Dharwad',17),(343,'Dhekiajuli',4),(344,'Dhenkanal',26),(345,'Dholka',12),(346,'Dhubri',4),(347,'Dhule',21),(348,'Dhulian',35),(349,'Dhuri',28),(350,'Dibrugarh',4),(351,'Digboi',4),(352,'Dighwara',5),(353,'Dimapur',25),(354,'Dinanagar',28),(355,'Dindigul',31),(356,'Diphu',4),(357,'Dipka',7),(358,'Dombivli',21),(359,'Dongargarh',7),(360,'Duliajan Oil Town',4),(361,'Dumdum',35),(362,'Dumka',16),(363,'Dumraon',5),(364,'Durg-Bhilai Nagar',7),(365,'Durgapur',21),(366,'Durgapur',35),(367,'Dwarka',12),(368,'Ellenabad',13),(369,'Eluru',2),(370,'Erattupetta',18),(371,'Erode',31),(372,'Etah',34),(373,'Etawah',34),(374,'Faizabad',34),(375,'Falna',29),(376,'Faridabad',13),(377,'Faridkot',28),(378,'Farooqnagar',2),(379,'Farrukhabad',34),(380,'Fatehabad',13),(381,'Fatehabad',20),(382,'Fatehabad',34),(383,'Fatehgarh',34),(384,'Fatehpur Chaurasi',34),(385,'Fatehpur Sikri',34),(386,'Fatehpur',29),(387,'Fatehpur',34),(388,'Fatehpur',34),(389,'Fatwah',5),(390,'Fazilka',28),(391,'Forbesganj',5),(392,'Firozabad',34),(393,'Firozpur',28),(394,'Firozpur Cantt.',28),(395,'Gadag',17),(396,'Gadchiroli',21),(397,'Gadwal',2),(398,'Ganaur',13),(399,'Gandhidham',12),(400,'Ganjam',26),(401,'Garhwa',16),(402,'Gauripur',4),(403,'Gaya',5),(404,'Gharaunda',13),(405,'Ghatampur',34),(406,'Ghatanji',21),(407,'Ghatshila',16),(408,'Ghaziabad',34),(409,'Ghazipur',34),(410,'Giddarbaha',28),(411,'Giridih',16),(412,'11 Velha',11),(413,'11lpara',4),(414,'Gobindgarh',28),(415,'Gobranawapara',7),(416,'Godda',16),(417,'Godhra',12),(418,'Gogri Jamalpur',5),(419,'Gohana',13),(420,'Gokak',17),(421,'Golaghat',4),(422,'Gomoh',16),(423,'Gondiya',21),(424,'Gooty',2),(425,'Gopalganj',5),(426,'Gorakhpur',34),(427,'Greater Noida',34),(428,'Gudalur',31),(429,'Gudalur',31),(430,'Gudalur',31),(431,'Gudivada',2),(432,'Gudur',2),(433,'Gulbarga',17),(434,'Gumia',16),(435,'Gumla',16),(436,'Guna',20),(437,'Gundlupet',17),(438,'Guntakal',2),(439,'Guntur',2),(440,'Gunupur',26),(441,'Gurdaspur',28),(442,'Gurgaon',13),(443,'Guruvayoor',18),(444,'Guwahati',4),(445,'Gwalior',20),(446,'Haflong',4),(447,'Hailakandi',4),(448,'Hajipur',5),(449,'Haldia',35),(450,'Haldwani',33),(451,'Haibat(Yamuna Nagar)',13),(452,'Hamirpur',14),(453,'Hamirpur',34),(454,'Hansi',13),(455,'Hanuman Junction',2),(456,'Hanumangarh',29),(457,'Harda',20),(458,'Hardoi',34),(459,'Haridwar',33),(460,'Harsawa',29),(461,'Hassan',17),(462,'Hastinapur',34),(463,'Hathras',34),(464,'Hazaribag',16),(465,'Hilsa',5),(466,'Himatnagar',12),(467,'Hindupur',2),(468,'Hinjilicut',26),(469,'Hisar',13),(470,'Hisua',5),(471,'Hodal',13),(472,'Hojai',4),(473,'Hoshiarpur',28),(474,'Hospet',17),(475,'Howrah',35),(476,'Hubli',17),(477,'Hugli-Chuchura',35),(478,'Hussainabad',16),(479,'Ichalkaranji',21),(480,'Ichchapuram',2),(481,'Idar',12),(482,'Indore',20),(483,'Indranagar',32),(484,'Irinjalakuda',18),(485,'Islampur',5),(486,'Islampur',35),(487,'Itarsi',20),(488,'Jabalpur',20),(489,'Jagadhri',13),(490,'Jagatsinghapur',26),(491,'Jagdalpur',7),(492,'Jagdispur',5),(493,'Jaggaiahpet',2),(494,'Jagraon',28),(495,'Jagtial',2),(496,'Jais',34),(497,'Jaisalmer',29),(498,'Jaitaran',29),(499,'Jaitu',28),(500,'Jajapur',26),(501,'Jajmau',34),(502,'Jalalabad',28),(503,'Jalna',21),(504,'Jalandhar Cantt.',28),(505,'Jalandhar',28),(506,'Jaleswar',26),(507,'Jalgaon',21),(508,'Jalore',29),(509,'Jamalpur',5),(510,'Jammalamadugu',2),(511,'Jammu',15),(512,'Jamnagar',12),(513,'Jamshedpur',16),(514,'Jamtara',16),(515,'Jamui',5),(516,'Jandiala',28),(517,'Jangaon',2),(518,'Janjgir',7),(519,'Jashpurnagar',7),(520,'Jaspur',33),(521,'Jatani',26),(522,'Jaunpur',34),(523,'Jehanabad',5),(524,'Jeypur',26),(525,'Jhabua',20),(526,'Jhajha',5),(527,'Jhajjar',13),(528,'Jhalawar',29),(529,'Jhanjharpur',5),(530,'Jhansi',34),(531,'Jhargram',35),(532,'Jharsuguda',26),(533,'Jhumri Tilaiya',16),(534,'Jhunjhunu',29),(535,'Jind',13),(536,'Joda',26),(537,'Jodhpur',29),(538,'Jogabani',5),(539,'Jogendranagar',32),(540,'Jorhat',4),(541,'Jowai',23),(542,'Junagadh',12),(543,'Junnar',21),(544,'Kadapa',2),(545,'Kadi',12),(546,'Kadiri',2),(547,'Kadirur',18),(548,'Kagaznagar',2),(549,'Kailaras',20),(550,'Kailasahar',32),(551,'Kaithal',13),(552,'Kakching',22),(553,'Kakinada',2),(554,'Kalan Wali',13),(555,'Kalavad',12),(556,'Kalburgi',17),(557,'Kalimpong',35),(558,'Kalka',13),(559,'Kalliasseri',18),(560,'Kalpi',34),(561,'Kalol',12),(562,'Kalpetta',18),(563,'Kalyan',21),(564,'Kalyandurg',2),(565,'Kamareddy',2),(566,'Kamthi',21),(567,'Kanchipuram',31),(568,'Kandukur',2),(569,'Kanhangad',18),(570,'Kanjikkuzhi',18),(571,'Kanker',7),(572,'Kannur',18),(573,'Kanpur',34),(574,'Kantabanji',26),(575,'Kanti',5),(576,'Kapadvanj',12),(577,'Kapurthala',28),(578,'Karad',21),(579,'Karaikal',27),(580,'Karaikudi',31),(581,'Karanjia',26),(582,'Karimganj',4),(583,'Karimnagar',2),(584,'Karjan',12),(585,'Karkala',17),(586,'Karnal',13),(587,'Karoran',28),(588,'Kartarpur',28),(589,'Karur',31),(590,'Karungal',31),(591,'Karwar',17),(592,'Kasaragod',18),(593,'Kashipur',33),(594,'Kathua',15),(595,'Katihar',5),(596,'Katni',20),(597,'Kavali',2),(598,'Kawardha',7),(599,'Kayamkulam',18),(600,'Kendrapara',26),(601,'Kendujhar',26),(602,'Keshod',12),(603,'Keylong',14),(604,'Khagaria',5),(605,'Khambhalia',12),(606,'Khambhat',12),(607,'Khammam',2),(608,'Khanna',28),(609,'Kharagpur',5),(610,'Kharagpur',35),(611,'Kharar',28),(612,'Kheda',12),(613,'Khedbrahma',12),(614,'Kheralu',12),(615,'Kheri',34),(616,'Khordha',26),(617,'Khowai',32),(618,'Khunti',16),(619,'Khurai',20),(620,'kichha',33),(621,'Kishanganj',5),(622,'Kochi',18),(623,'Kodad',2),(624,'Kodinar',12),(625,'Kodungallur',18),(626,'Kokrajhar',4),(627,'Kolar',17),(628,'Kolhapur',21),(629,'Kolkata',35),(630,'Kollam',18),(631,'Kollankodu',31),(632,'Kondagaon',7),(633,'Konnagar',35),(634,'Koothuparamba',18),(635,'Koraput',26),(636,'Korba',7),(637,'Koratla',2),(638,'Kot Kapura',28),(639,'Kota',17),(640,'Kota',29),(641,'Kota',34),(642,'Kotdwara',33),(643,'Kothagudem',2),(644,'Kothamangalam',18),(645,'Kothapeta',2),(646,'Kotma',20),(647,'Kottayam',18),(648,'Kovvur',2),(649,'Kozhikode',18),(650,'Krishnanagar',35),(651,'Kuchinda',26),(652,'Kunnamkulam',18),(653,'Kurali',28),(654,'Kurnool',2),(655,'Kyathampalle',2),(656,'Lachhmangarh',29),(657,'Ladnu',29),(658,'Ladwa',13),(659,'Lahar',20),(660,'Laharpur',34),(661,'Lakheri',29),(662,'Lakhimpur',34),(663,'Lakhisarai',5),(664,'Lakshmeshwar',17),(665,'Lal Gopalganj Nindaura',34),(666,'Lalganj',5),(667,'Lalgudi',31),(668,'Lalitpur',34),(669,'Lalganj',34),(670,'Lalsot',29),(671,'Lanka',4),(672,'Lar',34),(673,'Lathi',12),(674,'Latur',21),(675,'Leh',15),(676,'Lilong',22),(677,'Limbdi',12),(678,'Lingsugur',17),(679,'Loha',21),(680,'Lohardaga',16),(681,'Lonar',21),(682,'Lonavla',21),(683,'Longowal',28),(684,'Loni',34),(685,'Losal',29),(686,'Ludhiana',28),(687,'Lumding',4),(688,'Lunawada',12),(689,'Lundi',20),(690,'Lunglei',24),(691,'Macherla',2),(692,'Machilipatnam',2),(693,'Madanapalle',2),(694,'Maddur',17),(695,'Madgaon',11),(696,'Madhepura',5),(697,'Madhubani',5),(698,'Madhugiri',17),(699,'Madhupur',16),(700,'Madhyamgram',26),(701,'Madikeri',17),(702,'Madurai',31),(703,'Magadi',17),(704,'Mahabaleswar',21),(705,'Mahad',21),(706,'Mahbubnagar',2),(707,'Mahalingpur',17),(708,'Maharajganj',5),(709,'Maharajpur',20),(710,'Mahasamund',7),(711,'Mahe',27),(712,'Mahendragarh',7),(713,'Mahendragarh',13),(714,'Mahesana',12),(715,'Mahidpur',20),(716,'Mahnar Bazar',5),(717,'Mahoba',34),(718,'Mahuli',21),(719,'Mahuva',12),(720,'Mahwa',29),(721,'Maihar',20),(722,'Mainaguri',35),(723,'Makhdumpur',5),(724,'Makrana',29),(725,'Mal',35),(726,'Malajkhand',20),(727,'Malappuram',18),(728,'Malavalli',17),(729,'Malegaon',21),(730,'Malerkotla',28),(731,'Malkangiri',26),(732,'Malkapur',21),(733,'Malout',28),(734,'Malpura',29),(735,'Malur',17),(736,'Manasa',20),(737,'Manavadar',12),(738,'Manawar',20),(739,'Manchar',21),(740,'Mancherial',2),(741,'Mandalgarh',29),(742,'Mandamarri',2),(743,'Mandapeta',2),(744,'Mandawa',29),(745,'Mandi',14),(746,'Mandi Dabwali',13),(747,'Mandideep',20),(748,'Mandla',20),(749,'Mandsaur',20),(750,'Mandvi',12),(751,'Mandya',17),(752,'Maner',5),(753,'Manesar',13),(754,'Mangalagiri',2),(755,'Mangaldoi',4),(756,'Mangalore',17),(757,'Mangalvedhe',21),(758,'Manglaur',33),(759,'Mangrol',12),(760,'Mangrol',29),(761,'Mangrulpir',21),(762,'Manihari',5),(763,'Manjlegaon',21),(764,'Mankachar',4),(765,'Manmad',21),(766,'Mansa',28),(767,'Mansa',12),(768,'Manuguru',2),(769,'Manvi',17),(770,'Manwath',21),(771,'Mapusa',11),(772,'Margao',11),(773,'Margherita',4),(774,'Marhaura',5),(775,'Mariani',4),(776,'Marigaon',4),(777,'Markapur',2),(778,'Marmagao',11),(779,'Masaurhi',5),(780,'Mathabhanga',35),(781,'Mathura',34),(782,'Mattannur',18),(783,'Mauganj',20),(784,'Maur',28),(785,'Mavelikkara',18),(786,'Mavoor',18),(787,'Mayang Imphal',22),(788,'Medak',2),(789,'Medinipur',35),(790,'Meerut',34),(791,'Mehkar',21),(792,'Mehmedabad',12),(793,'Memari',35),(794,'Merta City',29),(795,'Mhaswad',21),(796,'Mhow Cantonment',20),(797,'Mhowgaon',20),(798,'Mihijam',16),(799,'Mira-Bhayandar',21),(800,'Miraj',21),(801,'Mirganj',5),(802,'Miryalaguda',2),(803,'Mirzapur',34),(804,'Mithapur',12),(805,'Modasa',12),(806,'Modinagar',34),(807,'Moga',28),(808,'Mogalthur',2),(809,'Mohali',28),(810,'Mohania',5),(811,'Mokama',5),(812,'Mokameh',5),(813,'Mokokchung',25),(814,'Monoharpur',35),(815,'Moradabad',34),(816,'Morena',20),(817,'Morinda',28),(818,'Morshi',21),(819,'Morvi',12),(820,'Motihari',5),(821,'Motipur',5),(822,'Mount Abu',29),(823,'Mudalgi',17),(824,'Mudbidri',17),(825,'Muddebihal',17),(826,'Mudhol',17),(827,'Mukatsar',28),(828,'Mukerian',28),(829,'Mukhed',21),(830,'Muktsar',28),(831,'Mul',21),(832,'Mulbagal',17),(833,'Multai',20),(834,'Mumbai',21),(835,'Mundargi',17),(836,'Mungeli',7),(837,'Munger',5),(838,'Muradnagar',34),(839,'Murliganj',5),(840,'Murshidabad',35),(841,'Murtijapur',21),(842,'Murwara',20),(843,'Musabani',16),(844,'Mussoorie',33),(845,'Muvattupuzha',18),(846,'Muzaffarnagar',34),(847,'Muzaffarpur',5),(848,'Mysore',17),(849,'Nabadwip',35),(850,'Nabarangapur',26),(851,'Nabha',28),(852,'Nadbai',29),(853,'Nadiad',12),(854,'Nagaon',4),(855,'Nagapattinam',31),(856,'Nagar',29),(857,'Nagari',2),(858,'Nagarkurnool',2),(859,'Nagaur',29),(860,'Nagda',20),(861,'Nagercoil',31),(862,'Nagina',34),(863,'Nagla',33),(864,'Nagpur',21),(865,'Nahan',14),(866,'Naharlagun',3),(867,'Naihati',35),(868,'Naila Janjgir',7),(869,'Nainital',33),(870,'Nainpur',20),(871,'Najibabad',34),(872,'Nakodar',28),(873,'Nakur',34),(874,'Nalasopara',21),(875,'Nalbari',4),(876,'Namagiripettai',31),(877,'Namakkal',31),(878,'Nanded-Waghala',21),(879,'Nandgaon',21),(880,'Nandivaram-Guduvancheri',31),(881,'Nandura',21),(882,'Nandurbar',21),(883,'Nandyal',2),(884,'Nangal',28),(885,'Nanjangud',17),(886,'Nanjikottai',31),(887,'Nanpara',34),(888,'Narasapur',2),(889,'Narasaraopet',2),(890,'Naraura',34),(891,'Narayanpet',2),(892,'Nargund',29),(893,'Narkatiaganj',5),(894,'Narkhed',21),(895,'Narnaul',13),(896,'Narsinghgarh',20),(897,'Narsinghgarh',20),(898,'Narsipatnam',2),(899,'Narwana',13),(900,'Nashik',21),(901,'Nasirabad',29),(902,'Natham',31),(903,'Nathdwara',29),(904,'Naugachhia',5),(905,'Naugawan Sadat',34),(906,'Nautanwa',34),(907,'Navalgund',29),(908,'Navi Mumbai',21),(909,'Navsari',12),(910,'Nawabganj',34),(911,'Nawada',5),(912,'Nawalgarh',29),(913,'Nawanshahr',28),(914,'Nawapur',21),(915,'Nedumangad',18),(916,'Neem-Ka-Thana',29),(917,'Neemuch',20),(918,'Nehtaur',34),(919,'Nelamangala',29),(920,'Nellikuppam',31),(921,'Nellore',2),(922,'Nepanagar',20),(923,'Neyveli',31),(924,'Neyyattinkara',18),(925,'Nidadavole',2),(926,'Nilanga',21),(927,'Nimbahera',29),(928,'Nipani',29),(929,'Nirmal',2),(930,'Niwai',29),(931,'Niwari',20),(932,'Nizamabad',2),(933,'Nohar',29),(934,'Noida',34),(935,'Nokha',5),(936,'Nokha',29),(937,'Nongstoin',23),(938,'Noorpur',34),(939,'North Lakhimpur',4),(940,'Nowgong',20),(941,'Nowrozabad',20),(942,'Nuzvid',2),(943,'O\' Valley',31),(944,'Oddanchatram',31),(945,'Obra',34),(946,'Ongole',2),(947,'Orai',34),(948,'Osmanabad',21),(949,'Ottappalam',18),(950,'Ozar',21),(951,'P.N.Patti',31),(952,'Pachora',21),(953,'Pachore',20),(954,'Pacode',31),(955,'Padmanabhapuram',31),(956,'Padra',12),(957,'Padrauna',34),(958,'Paithan',21),(959,'Pakaur',16),(960,'Palacole',2),(961,'Palai',18),(962,'Palakkad',18),(963,'Palani',31),(964,'Palanpur',12),(965,'Palasa Kasibugga',2),(966,'Palghar',21),(967,'Pali',29),(968,'Pali',20),(969,'Palia Kalan',34),(970,'Palitana',12),(971,'Pondur',2),(972,'Palladam',31),(973,'Pallapatti',31),(974,'Pallikonda',31),(975,'Palwal',13),(976,'Palwancha',2),(977,'Panagar',20),(978,'Panagudi',31),(979,'Panchkula',13),(980,'Panchla',35),(981,'Pandharkaoda',21),(982,'Pandharpur',21),(983,'Pandhurna',20),(984,'Pandua',35),(985,'Panipat',13),(986,'Panna',20),(987,'Panniyannur',18),(988,'Panruti',31),(989,'Panvel',21),(990,'Pappinisseri',18),(991,'Paradip',26),(992,'Paramakudi',31),(993,'Parangipettai',31),(994,'Parasi',34),(995,'Paravoor',18),(996,'Parbhani',21),(997,'Pardi',12),(998,'Parlakhemundi',26),(999,'Parli',21),(1000,'Parola',21),(1001,'Partur',21),(1002,'Parvathipuram',2),(1003,'Pasan',20),(1004,'Paschim Punropara',35),(1005,'Pasighat',3),(1006,'Patan',12),(1007,'Pathanamthitta',18),(1008,'Pathankot',28),(1009,'Pathardi',21),(1010,'Pathri',21),(1011,'Patiala',28),(1012,'Patran',28),(1013,'Patratu',16),(1014,'Pattamundai',26),(1015,'Patti',28),(1016,'Pattukkottai',31),(1017,'Patur',21),(1018,'Pauni',21),(1019,'Pauri',33),(1020,'Pavagada',17),(1021,'Payyannur',18),(1022,'Pedana',2),(1023,'Peddapuram',2),(1024,'Pehowa',13),(1025,'Pen',21),(1026,'Perambalur',31),(1027,'Peravurani',31),(1028,'Peringathur',18),(1029,'Perinthalmanna',18),(1030,'Periyakulam',31),(1031,'Periyasemur',31),(1032,'Pernampattu',31),(1033,'Perumbavoor',18),(1034,'Petlad',12),(1035,'Phagwara',28),(1036,'Phalodi',29),(1037,'Phaltan',21),(1038,'Phillaur',28),(1039,'Phulabani',26),(1040,'Phulera',29),(1041,'Phulpur',34),(1042,'Phusro',16),(1043,'Pihani',34),(1044,'Pilani',29),(1045,'Pilibanga',29),(1046,'Pilibhit',34),(1047,'Pilkhuwa',34),(1048,'Pindwara',29),(1049,'Pinjore',13),(1050,'Pipar City',29),(1051,'Pipariya',20),(1052,'Piro',5),(1053,'Pithampur',20),(1054,'Pithapuram',2),(1055,'Pithoragarh',33),(1056,'Pollachi',31),(1057,'Polur',31),(1058,'Ponnani',18),(1059,'Ponneri',31),(1060,'Ponnur',2),(1061,'Porbandar',12),(1062,'Porsa',20),(1063,'Powayan',34),(1064,'Prantij',29),(1065,'Pratapgarh',29),(1066,'Pratapgarh',32),(1067,'Prithvipur',20),(1068,'Proddatur',2),(1069,'Pudukkottai',31),(1070,'Pudupattinam',31),(1071,'Pukhrayan',34),(1072,'Pulgaon',21),(1073,'Puliyankudi',31),(1074,'Punalur',18),(1075,'Punch',15),(1076,'Pune',21),(1077,'Punjaipugalur',31),(1078,'Punganur',2),(1079,'Puranpur',34),(1080,'Purna',21),(1081,'Puri',26),(1082,'Purnia',5),(1083,'Purquazi',34),(1084,'Purulia',35),(1085,'Purwa',34),(1086,'Pusad',21),(1087,'Puttur',17),(1088,'Puttur',2),(1089,'Qadian',28),(1090,'Quilandy',18),(1091,'Rabkavi Banhatti',17),(1092,'Radhanpur',12),(1093,'Rae Bareli',34),(1094,'Rafiganj',5),(1095,'Raghogarh-Vijaypur',20),(1096,'Raghunathpur',35),(1097,'Rahatgarh',20),(1098,'Rahuri',21),(1099,'Raichur',17),(1100,'Raiganj',35),(1101,'Raigarh',7),(1102,'Raikot',28),(1103,'Rairangpur',26),(1104,'Raisen',20),(1105,'Raisinghnagar',29),(1106,'Rajagangapur',26),(1107,'Rajahmundry',2),(1108,'Rajakhera',29),(1109,'Rajaldesar',29),(1110,'Rajam',2),(1111,'Rajampet',2),(1112,'Rajapalayam',31),(1113,'Rajauri',15),(1114,'Rajgarh (Alwar)',29),(1115,'Rajgarh (Churu)',29),(1116,'Rajgarh',20),(1117,'Rajgir',5),(1118,'Rajkot',12),(1119,'Rajnandgaon',7),(1120,'Rajpipla',12),(1121,'Rajpura',28),(1122,'Rajsamand',29),(1123,'Rajula',12),(1124,'Rajura',21),(1125,'Ramachandrapuram',2),(1126,'Ramagundam',2),(1127,'Ramanagaram',17),(1128,'Ramanathapuram',31),(1129,'Ramdurg',17),(1130,'Rameshwaram',31),(1131,'Ramganj Mandi',29),(1132,'Ramngarh',16),(1133,'Ramngarh',29),(1134,'Ramnagar',5),(1135,'Ramnagar',33),(1136,'Rampur',34),(1137,'Rampur Maniharan',34),(1138,'Rampura Phul',28),(1139,'Rampurhat',35),(1140,'Ramtek',21),(1141,'Ranaghat',35),(1142,'Ranavav',12),(1143,'Rangia',4),(1144,'Rania',13),(1145,'Ranibennur',17),(1146,'Rapar',12),(1147,'Rasipuram',31),(1148,'Rasra',34),(1149,'Ratangarh',29),(1150,'Rath',34),(1151,'Ratia',13),(1152,'Ratlam',20),(1153,'Ratnagiri',21),(1154,'Rau',20),(1155,'Raurkela',26),(1156,'Raver',21),(1157,'Rawatbhata',29),(1158,'Rawatsar',29),(1159,'Raxaul Bazar',5),(1160,'Rayachoti',2),(1161,'Rayadurg',2),(1162,'Rayagada',26),(1163,'Reengus',29),(1164,'Rehli',20),(1165,'Renigunta',2),(1166,'Renukoot',34),(1167,'Reoti',34),(1168,'Repalle',2),(1169,'Revelganj',5),(1170,'Rewa',20),(1171,'Rewari',13),(1172,'Rishikesh',33),(1173,'Risod',21),(1174,'Robertsganj',34),(1175,'Robertson Pet',17),(1176,'Rohtak',13),(1177,'Ron',17),(1178,'Roorkee',33),(1179,'Rosera',5),(1180,'Rudauli',34),(1181,'Rudrapur',33),(1182,'Rudrapur',34),(1183,'Rupnagar',28),(1184,'Sabalgarh',20),(1185,'Sadabad',34),(1186,'Sadalgi',17),(1187,'Sadasivpet',2),(1188,'Sadri',29),(1189,'Sadulshahar',29),(1190,'Safidon',13),(1191,'Safipur',34),(1192,'Sagar',20),(1193,'Sagar',17),(1194,'Sagwara',29),(1195,'Saharanpur',34),(1196,'Saharsa',5),(1197,'Sahaspur',34),(1198,'Sahaswan',34),(1199,'Sahawar',34),(1200,'Sahibganj',16),(1201,'Sahjanwa',34),(1202,'Saidpur',34),(1203,'Saiha',24),(1204,'Sailu',21),(1205,'Sainthia',35),(1206,'Sakleshpur',17),(1207,'Sakti',7),(1208,'Salaya',12),(1209,'Salem',31),(1210,'Salur',2),(1211,'Samalkha',13),(1212,'Samalkot',2),(1213,'Samana',28),(1214,'Samastipur',5),(1215,'Sambalpur',26),(1216,'Sambhal',34),(1217,'Sambhar',29),(1218,'Samdhan',34),(1219,'Samthar',34),(1220,'Sanand',12),(1221,'Sanawad',20),(1222,'Sanchore',29),(1223,'Sandi',34),(1224,'Sandila',34),(1225,'Sandur',17),(1226,'Sangamner',21),(1227,'Sangareddy',2),(1228,'Sangaria',29),(1229,'Sangli',21),(1230,'Sangole',21),(1231,'Sangrur',28),(1232,'Sankarankoil',31),(1233,'Sankari',31),(1234,'Sankeshwar',17),(1235,'Santipur',35),(1236,'Sarangpur',20),(1237,'Sardarshahar',29),(1238,'Sardhana',34),(1239,'Sarni',20),(1240,'Sasaram',5),(1241,'Sasvad',21),(1242,'Satana',21),(1243,'Satara',21),(1244,'Satna',20),(1245,'Sathyamangalam',31),(1246,'Sattenapalle',2),(1247,'Sattur',31),(1248,'Saunda',16),(1249,'Saundatti-Yellamma',17),(1250,'Sausar',20),(1251,'Savarkundla',12),(1252,'Savanur',17),(1253,'Savner',21),(1254,'Sawai Madhopur',29),(1255,'Sawantwadi',21),(1256,'Sedam',17),(1257,'Sehore',20),(1258,'Sendhwa',20),(1259,'Seohara',34),(1260,'Seoni',20),(1261,'Seoni-Malwa',20),(1262,'Shahabad',17),(1263,'Shahabad, Hardoi',34),(1264,'Shahabad, Rampur',34),(1265,'Shahade',21),(1266,'Shahbad',13),(1267,'Shahdol',20),(1268,'Shahganj',34),(1269,'Shahjahanpur',34),(1270,'Shahpur',17),(1271,'Shahpura',29),(1272,'Shahpura',29),(1273,'Shajapur',20),(1274,'Shamgarh',20),(1275,'Shamli',34),(1276,'Shamsabad, Agra',34),(1277,'Shamsabad, Farrukhabad',34),(1278,'Shegaon',21),(1279,'Sheikhpura',5),(1280,'Shendurjana',21),(1281,'Shenkottai',31),(1282,'Sheoganj',29),(1283,'Sheohar',5),(1284,'Sheopur',20),(1285,'Sherghati',5),(1286,'Sherkot',34),(1287,'Shiggaon',17),(1288,'Shikapur',17),(1289,'Shikarpur, Bulandshahr',34),(1290,'Shikohabad',34),(1291,'Shimoga',17),(1292,'Shirdi',21),(1293,'Shirpur-Warwade',21),(1294,'Shirur',21),(1295,'Shishgarh',34),(1296,'Shivpuri',20),(1297,'Sholavandan',31),(1298,'Sholingur',31),(1299,'Shoranur',18),(1300,'Shorapur',17),(1301,'Shrigonda',21),(1302,'Shrirampur',21),(1303,'Shrirangapattana',17),(1304,'Shujalpur',20),(1305,'Siana',34),(1306,'Sibsagar',4),(1307,'Siddipet',2),(1308,'Sidhi',20),(1309,'Sidhpur',12),(1310,'Sidlaghatta',17),(1311,'Sihor',12),(1312,'Sihora',20),(1313,'Sikanderpur',34),(1314,'Sikandra Rao',34),(1315,'Sikandrabad',34),(1316,'Sikar',29),(1317,'Silao',5),(1318,'Silapathar',4),(1319,'Silchar',4),(1320,'Siliguri',35),(1321,'Sillod',21),(1322,'Simdega',16),(1323,'Sindgi',17),(1324,'Sindhnur',17),(1325,'Singapur',2),(1326,'Singrauli',20),(1327,'Sinnar',21),(1328,'Sira',17),(1329,'Sircilla',2),(1330,'Sirhind Fatehgarh Sahib',28),(1331,'Sirkali',31),(1332,'Sirohi',29),(1333,'Sironj',20),(1334,'Sirsa',13),(1335,'Sirsaganj',34),(1336,'Sirsi',17),(1337,'Sirsi',34),(1338,'Siruguppa',17),(1339,'Sitamarhi',5),(1340,'Sitapur',34),(1341,'Sitarganj',33),(1342,'Sivaganga',31),(1343,'Sivagiri',31),(1344,'Sivakasi',31),(1345,'Siwan',5),(1346,'Sohagpur',20),(1347,'Sohna',13),(1348,'Sojat',29),(1349,'Solan',14),(1350,'Solapur',21),(1351,'Sonamukhi',35),(1352,'Sonepur',5),(1353,'Songadh',12),(1354,'Sonipat',13),(1355,'Sopore',15),(1356,'Soro',26),(1357,'Soron',34),(1358,'Soyagaon',21),(1359,'Sri Madhopur',29),(1360,'Srikakulam',2),(1361,'Srikalahasti',2),(1362,'Srinivaspur',17),(1363,'Srisailam Project (Right Flank Colony) Township',2),(1364,'Srirampore',35),(1365,'Srivilliputhur',31),(1366,'Suar',34),(1367,'Sugauli',5),(1368,'Sujangarh',29),(1369,'Sujanpur',28),(1370,'Sultanganj',5),(1371,'Sultanpur',34),(1372,'Sumerpur',29),(1373,'Sumerpur',34),(1374,'Sunabeda',26),(1375,'Sunam',28),(1376,'Sundargarh',26),(1377,'Sundarnagar',14),(1378,'Supaul',5),(1379,'Surandai',31),(1380,'Surat',12),(1381,'Suratgarh',29),(1382,'Suri',35),(1383,'Suriyampalayam',31),(1384,'Suryapet',2),(1385,'Tadepalligudem',2),(1386,'Tadpatri',2),(1387,'Taki',35),(1388,'Talaja',12),(1389,'Talcher',26),(1390,'Talegaon Dabhade',21),(1391,'Talikota',17),(1392,'Taliparamba',18),(1393,'Talode',21),(1394,'Talwara',28),(1395,'Tamluk',35),(1396,'Tanda',34),(1397,'Tanda',34),(1398,'Tandur',2),(1399,'Tanuku',2),(1400,'Tarakeswar',35),(1401,'Tarana',20),(1402,'Taranagar',29),(1403,'Taraori',13),(1404,'Tarikere',17),(1405,'Tarn Taran',28),(1406,'Tasgaon',21),(1407,'Tehri',33),(1408,'Tekkalakota',17),(1409,'Tenali',2),(1410,'Tenkasi',31),(1411,'Tenu Dam-cum- Kathhara',16),(1412,'Terdal',17),(1413,'Tetri Bazar',34),(1414,'Tezpur',4),(1415,'Thakurdwara',34),(1416,'Thammampatti',31),(1417,'Thana Bhawan',34),(1418,'Thanesar',13),(1419,'Thangadh',12),(1420,'Thanjavur',31),(1421,'Tharad',12),(1422,'Tharamangalam',31),(1423,'Tharangambadi',31),(1424,'Theni Allinagaram',31),(1425,'Thirumangalam',31),(1426,'Thirunindravur',31),(1427,'Thiruparappu',31),(1428,'Thirupuvanam',31),(1429,'Thiruthuraipoondi',31),(1430,'Thiruvalla',18),(1431,'Thiruvallur',31),(1432,'Thiruvananthapuram',18),(1433,'Thiruvarur',31),(1434,'Thodupuzha',18),(1435,'Thoothukudi',31),(1436,'Thoubal',22),(1437,'Thrissur',18),(1438,'Thuraiyur',31),(1439,'Tikamgarh',20),(1440,'Tilda Newra',7),(1441,'Tilhar',34),(1442,'Tindivanam',31),(1443,'Tinsukia',4),(1444,'Tiptur',17),(1445,'Tirora',21),(1446,'Tiruchendur',31),(1447,'Tiruchengode',31),(1448,'Tiruchirappalli',31),(1449,'Tirukalukundram',31),(1450,'Tirukkoyilur',31),(1451,'Tirunelveli',31),(1452,'Tirupathur',31),(1453,'Tirupathur',31),(1454,'Tirupati',2),(1455,'Tiruppur',31),(1456,'Tirur',18),(1457,'Tiruttani',31),(1458,'Tiruvannamalai',31),(1459,'Tiruvethipuram',31),(1460,'Tiruvuru',2),(1461,'Tirwaganj',34),(1462,'Titlagarh',26),(1463,'Tittakudi',31),(1464,'Todabhim',29),(1465,'Todaraisingh',29),(1466,'Tohana',13),(1467,'Tonk',29),(1468,'Tuensang',25),(1469,'Tuljapur',21),(1470,'Tulsipur',34),(1471,'Tumkur',17),(1472,'Tumsar',21),(1473,'Tundla',34),(1474,'Tuni',2),(1475,'Tura',23),(1476,'Uchgaon',21),(1477,'Udaipur',29),(1478,'Udaipur',32),(1479,'Udaipurwati',29),(1480,'Udgir',21),(1481,'Udhagamandalam',31),(1482,'Udhampur',15),(1483,'Udumalaipettai',31),(1484,'Udupi',17),(1485,'Ujhani',20),(1486,'Ujjain',20),(1487,'Umarga',21),(1488,'Umaria',20),(1489,'Umarkhed',21),(1490,'Umarkote',26),(1491,'Umbergaon',12),(1492,'Umred',21),(1493,'Umreth',12),(1494,'Una',12),(1495,'Unjha',12),(1496,'Unnamalaikadai',31),(1497,'Unnao',34),(1498,'Upleta',12),(1499,'Uran',21),(1500,'Uran Islampur',21),(1501,'Uravakonda',2),(1502,'Urmar Tanda',28),(1503,'Usilampatti',31),(1504,'Uthamapalayam',31),(1505,'Uthiramerur',31),(1506,'Utraula',34),(1507,'Vadakara',18),(1508,'Vadakkuvalliyur',31),(1509,'Vadalur',31),(1510,'Vadgaon Kasba',21),(1511,'Vadipatti',31),(1512,'Vadnagar',12),(1513,'Vadodara',12),(1514,'Vaijapur',21),(1515,'Vaikom',18),(1516,'Valparai',31),(1517,'Valsad',12),(1518,'Vandavasi',31),(1519,'Vaniyambadi',31),(1520,'Vapi',12),(1521,'Vapi',12),(1522,'Varanasi',34),(1523,'Varkala',18),(1524,'Vasai',21),(1525,'Vedaranyam',31),(1526,'Vellakoil',31),(1527,'Vellore',31),(1528,'Venkatagiri',2),(1529,'Veraval',12),(1530,'Vicarabad',2),(1531,'Vidisha',20),(1532,'Vijainagar',29),(1533,'Vijapur',12),(1534,'Vijayapura',17),(1535,'Vijayawada',2),(1536,'Vikramasingapuram',31),(1537,'Viluppuram',31),(1538,'Vinukonda',2),(1539,'Viramgam',12),(1540,'Virar',21),(1541,'Virudhachalam',31),(1542,'Virudhunagar',31),(1543,'Visakhapatnam',2),(1544,'Visnagar',12),(1545,'Viswanatham',31),(1546,'Vita',21),(1547,'Vizianagaram',2),(1548,'Vrindavan',34),(1549,'Vyara',12),(1550,'Wadgaon Road',21),(1551,'Wadhwan',12),(1552,'Wadi',17),(1553,'Wai',21),(1554,'Wanaparthy',2),(1555,'Wani',21),(1556,'Wankaner',12),(1557,'Wara Seoni',20),(1558,'Warangal',2),(1559,'Wardha',21),(1560,'Warhapur',34),(1561,'Warisaliganj',5),(1562,'Warora',21),(1563,'Warud',21),(1564,'Washim',21),(1565,'Wokha',25),(1566,'Yadgir',17),(1567,'Yamunanagar',13),(1568,'Yanam',27),(1569,'Yavatmal',21),(1570,'Yawal',21),(1571,'Yellandu',2),(1572,'Yemmiganur',2),(1573,'Yerraguntla',2),(1574,'Yevla',21),(1575,'Zahirabad',2),(1576,'Zaidpur',34),(1577,'Zamania',34),(1578,'Zira',28),(1579,'Zirakpur',28),(1580,'Zunheboto',25);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `district` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `district` varchar(100) NOT NULL,
  `stateid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `district` (`district`),
  UNIQUE KEY `district_2` (`district`,`stateid`),
  KEY `stateid` (`stateid`)
) ENGINE=MyISAM AUTO_INCREMENT=628 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district`
--

LOCK TABLES `district` WRITE;
/*!40000 ALTER TABLE `district` DISABLE KEYS */;
INSERT INTO `district` VALUES (1,'Ambala',13),(2,'Bhiwani',13),(3,'Faridabad',13),(4,'Fatehabad',13),(5,'Gurgaon',13),(6,'Hisar',13),(7,'Jhajjar',13),(8,'Jind',13),(9,'Kaithal',13),(10,'Karnal',13),(11,'Kurukshetra',13),(12,'Mahendragarh',13),(13,'Mewat',13),(14,'Palwal',13),(15,'Panchkula',13),(16,'Panipat',13),(17,'Rewari',13),(18,'Rohtak',13),(19,'Sirsa',13),(20,'Sonipat',13),(21,'Yamunanagar',13),(22,'Nicobar',1),(23,'North and Middle Andaman',1),(24,'South Andaman',1),(25,'Adilabad',2),(26,'Anantapur',2),(27,'Chittoor',2),(28,'East Godavari',2),(29,'Hyderabad',2),(30,'Kadapa',2),(31,'Karimnagar',2),(32,'Khammam',2),(33,'Kurnool',2),(34,'Mahabubnagar',2),(35,'Nalgonda',2),(36,'Nellore',2),(37,'Nizamabad',2),(38,'Rangareddy',2),(39,'Srikakulam',2),(40,'Visakhapatnam',2),(41,'Vizianagaram',2),(42,'Warangal',2),(43,'West Godavari',2),(44,'Guntur',2),(45,'Krishna',2),(46,'Medak',2),(47,'Prakasam',2),(48,'Anjaw',3),(49,'Dibang Valley',3),(50,'Upper Subansiri',3),(51,'Changlang',3),(52,'East Kameng',3),(53,'East Siang',3),(54,'Kurung Kumey',3),(55,'Lohit',3),(56,'Lower Dibang Valley',3),(57,'Lower Subansiri',3),(58,'Papum Pare',3),(59,'Tawang',3),(60,'Tirap',3),(61,'Upper Siang',3),(62,'West Kameng',3),(63,'West Siang',3),(64,'Barpeta',4),(65,'Bongaigaon',4),(66,'Cachar',4),(67,'Darrang',4),(68,'Dhemaji',4),(69,'Dhubri',4),(70,'Dibrugarh',4),(71,'Goalpara',4),(72,'Golaghat',4),(73,'Hailakandi',4),(74,'Jorhat',4),(75,'Kamrup',4),(76,'Karbi Anglong',4),(77,'Karimganj',4),(78,'Kokrajhar',4),(79,'Lakhimpur',4),(80,'Morigaon',4),(81,'Nagaon',4),(82,'Nalbari',4),(83,'North Cachar Hills',4),(84,'Sivasagar',4),(85,'Sonitpur',4),(86,'Tinsukia',4),(87,'Udalguri',4),(88,'Baksa',4),(89,'Chirang',4),(90,'Kamrup Metropolitan',4),(91,'Araria',5),(92,'Arwal',5),(93,'Aurangabad',5),(94,'Banka',5),(95,'Begusarai',5),(96,'Bhagalpur',5),(97,'Bhojpur',5),(98,'Buxar',5),(99,'Darbhanga',5),(100,'East Champaran',5),(101,'Gaya',5),(102,'Gopalganj',5),(103,'Jamui',5),(104,'Jehanabad',5),(105,'Kaimur (Bhabua)',5),(106,'Katihar',5),(107,'Khagaria',5),(108,'Lakhisarai',5),(109,'Madhubani',5),(110,'Nalanda',5),(111,'Nawada',5),(112,'Patna',5),(113,'Saharsa',5),(114,'Samastipur',5),(115,'Saran',5),(116,'Sheikhpura',5),(117,'Sheohar',5),(118,'Sitamarhi',5),(119,'Siwan',5),(120,'Supaul',5),(121,'Vaishali',5),(122,'West Champaran',5),(123,'Kishanganj',5),(124,'Madhepura',5),(125,'Munger',5),(126,'Muzaffarpur',5),(127,'Purnea',5),(128,'Rohtas',5),(129,'Chandigarh',6),(130,'Bastar',7),(131,'Bilaspur',7),(132,'Dhamtari',7),(133,'Durg',7),(134,'Janjgir-Champa',7),(135,'Jashpur',7),(136,'Kabirdham-Kawardha',7),(137,'Korba',7),(138,'Korea',7),(139,'Mahasamund',7),(140,'Norh Bastar-Kanker',7),(141,'Raigarh',7),(142,'Raipur',7),(143,'Rajnandgaon',7),(144,'South Bastar-Dantewada',7),(145,'Surguja',7),(146,'Bijapur',7),(147,'Narayanpur',7),(148,'Dadra and Nagar Haveli',8),(149,'Daman',9),(150,'Diu',9),(151,'Central Delhi',10),(152,'East Delhi',10),(153,'New Delhi',10),(154,'North Delhi',10),(155,'North East Delhi',10),(156,'North West Delhi',10),(157,'South Delhi',10),(158,'South West Delhi',10),(159,'West Delhi',10),(160,'North Goa',11),(161,'South Goa',11),(162,'Ahmedabad',12),(163,'Amreli',12),(164,'Anand',12),(165,'Banaskantha',12),(166,'Bharuch',12),(167,'Bhavnagar',12),(168,'Dahod',12),(169,'Dang',12),(170,'Gandhinagar',12),(171,'Jamnagar',12),(172,'Junagadh',12),(173,'Kheda',12),(174,'Kutch',12),(175,'Mehsana',12),(176,'Narmada',12),(177,'Navsari',12),(178,'Panchmahals',12),(179,'Patan',12),(180,'Porbandar',12),(181,'Rajkot',12),(182,'Sabarkantha',12),(183,'Surat',12),(184,'Surendranagar',12),(185,'Vadodara',12),(186,'Valsad',12),(187,'Chamba',14),(188,'Hamirpur',14),(189,'Kangra',14),(190,'Kinnaur',14),(191,'Kullu',14),(192,'Lahaul and Spiti',14),(193,'Mandi',14),(194,'Shimla',14),(195,'Sirmaur',14),(196,'Solan',14),(197,'Una',14),(198,'Anantnag',15),(199,'Baramulla',15),(200,'Budgam',15),(201,'Doda',15),(202,'Jammu',15),(203,'Kargil',15),(204,'Kathua',15),(205,'Kupwara',15),(206,'Leh',15),(207,'Poonch',15),(208,'Pulwama',15),(209,'Rajouri',15),(210,'Samba',15),(211,'Srinagar',15),(212,'Udhampur',15),(213,'Bokaro',16),(214,'Chatra',16),(215,'Dhanbad',16),(216,'Dumka',16),(217,'East Singhbhum',16),(218,'Garhwa',16),(219,'Giridih',16),(220,'Gumla',16),(221,'Hazaribag',16),(222,'Jamtara',16),(223,'Koderma',16),(224,'Latehar',16),(225,'Lohardaga',16),(226,'Pakur',16),(227,'Palamu',16),(228,'Ranchi',16),(229,'Sahibganj',16),(230,'Seraikela-Kharsawan',16),(231,'Simdega',16),(232,'West Singhbhum',16),(233,'Deoghar',16),(234,'Godda',16),(235,'Khunti',16),(236,'Ramgarh',16),(237,'Tumkur',17),(238,'Bagalkot',17),(239,'Bangalore',17),(240,'Bangalore Rural',17),(241,'Belgaum',17),(242,'Bellary',17),(243,'Bidar',17),(244,'Chamrajanagar',17),(245,'Chickmagalur',17),(246,'Chikballapur',17),(247,'Chitradurga',17),(248,'Dakshina Kannada',17),(249,'Davangere',17),(250,'Dharwad',17),(251,'Gadag',17),(252,'Gulbarga',17),(253,'Hassan',17),(254,'Haveri',17),(255,'Kodagu',17),(256,'Kolar',17),(257,'Koppal',17),(258,'Mandya',17),(259,'Mysore',17),(260,'Raichur',17),(261,'Shimoga',17),(262,'Udupi',17),(263,'Uttara Kannada',17),(264,'Alappuzha',18),(265,'Ernakulam',18),(266,'Idukki',18),(267,'Kannur',18),(268,'Kasargod',18),(269,'Kollam',18),(270,'Kottayam',18),(271,'Kozhikode',18),(272,'Malappuram',18),(273,'Palakkad',18),(274,'Pathanamthitta',18),(275,'Thiruvananthapuram',18),(276,'Thrissur',18),(277,'Wayanad',18),(278,'Lakshadweep',19),(279,'Alirajpur',20),(280,'Anuppur',20),(281,'Ashoknagar',20),(282,'Balaghat',20),(283,'Barwani',20),(284,'Betul',20),(285,'Bhind',20),(286,'Bhopal',20),(287,'Burhanpur',20),(288,'Chhatarpur',20),(289,'Chhindwara',20),(290,'Damoh',20),(291,'Datia',20),(292,'Dewas',20),(293,'Dhar',20),(294,'Dindori',20),(295,'Guna',20),(296,'Gwalior',20),(297,'Harda',20),(298,'Hoshangabad',20),(299,'Indore',20),(300,'Jabalpur',20),(301,'Jhabua',20),(302,'Katni',20),(303,'Khandwa',20),(304,'Khargone',20),(305,'Mandla',20),(306,'Mandsaur',20),(307,'Morena',20),(308,'Narsinghpur',20),(309,'Neemuch',20),(310,'Panna',20),(311,'Raisen',20),(312,'Rajgarh',20),(313,'Ratlam',20),(314,'Rewa',20),(315,'Sagar',20),(316,'Satna',20),(317,'Sehore',20),(318,'Seoni',20),(319,'Shahdol',20),(320,'Shajapur',20),(321,'Sheopur',20),(322,'Shivpuri',20),(323,'Sidhi',20),(324,'Singrauli',20),(325,'Tikamgarh',20),(326,'Ujjain',20),(327,'Umaria',20),(328,'Vidisha',20),(329,'Ahmednagar',21),(330,'Akola',21),(331,'Amravati',21),(332,'Beed',21),(333,'Bhandara',21),(334,'Buldhana',21),(335,'Chandrapur',21),(336,'Dhule',21),(337,'Gadchiroli',21),(338,'Gondia',21),(339,'Hingoli',21),(340,'Jalgaon',21),(341,'Jalna',21),(342,'Kolhapur',21),(343,'Latur',21),(344,'Mumbai City',21),(345,'Mumbai Suburban',21),(346,'Nagpur',21),(347,'Nanded',21),(348,'Nandurbar',21),(349,'Nashik',21),(350,'Osmanabad',21),(351,'Parbhani',21),(352,'Pune',21),(353,'Raigad',21),(354,'Ratnagiri',21),(355,'Sangli',21),(356,'Satara',21),(357,'Sindhudurg',21),(358,'Solapur',21),(359,'Thane',21),(360,'Wardha',21),(361,'Washim',21),(362,'Yavatmal',21),(363,'Bishnupur',22),(364,'Chandel',22),(365,'Churachandpur',22),(366,'Imphal East',22),(367,'Imphal West',22),(368,'Senapati',22),(369,'Tamenglong',22),(370,'Thoubal',22),(371,'Ukhrul',22),(372,'Aizawl',24),(373,'Kolasib',24),(374,'Lawngtlai',24),(375,'Lunglei',24),(376,'Saiha',24),(377,'Serchhip',24),(378,'Champhai',24),(379,'Mamit',24),(380,'Kephrie',25),(381,'Longleng',25),(382,'Dimapur',25),(383,'Kohima',25),(384,'Mokokchung',25),(385,'Mon',25),(386,'Peren',25),(387,'Phek',25),(388,'Tuensang',25),(389,'Wokha',25),(390,'Zunheboto',25),(391,'Angul',26),(392,'Balangir',26),(393,'Balasore',26),(394,'Bargarh',26),(395,'Bhadrak',26),(396,'Boudh',26),(397,'Cuttack',26),(398,'Deogarh',26),(399,'Dhenkanal',26),(400,'Gajapati',26),(401,'Ganjam',26),(402,'Jagatsinghapur',26),(403,'Jajpur',26),(404,'Jharsuguda',26),(405,'Kalahandi',26),(406,'Kandhamal',26),(407,'Kendrapara',26),(408,'Kendujhar',26),(409,'Khordha',26),(410,'Koraput',26),(411,'Malkangiri',26),(412,'Mayurbhanj',26),(413,'Nabarangpur',26),(414,'Nayagarh',26),(415,'Nuapada',26),(416,'Puri',26),(417,'Rayagada',26),(418,'Sambalpur',26),(419,'Subarnapur',26),(420,'Sundargarh',26),(421,'Karaikal',27),(422,'Mahe',27),(423,'Pondicherry',27),(424,'Yanam',27),(425,'Amritsar',28),(426,'Bathinda',28),(427,'Faridkot',28),(428,'Fatehgarh Sahib',28),(429,'Ferozepur',28),(430,'Gurdaspur',28),(431,'Hoshiarpur',28),(432,'Jalandhar',28),(433,'Kapurthala',28),(434,'Ludhiana',28),(435,'Mansa',28),(436,'Moga',28),(437,'Muktsar',28),(438,'Nawanshahr',28),(439,'Patiala',28),(440,'Rupnagar',28),(441,'Sangrur',28),(442,'SAS Nagar',28),(443,'Barnala',28),(444,'Tarn Taran',28),(445,'Ajmer',29),(446,'Alwar',29),(447,'Banswara',29),(448,'Baran',29),(449,'Barmer',29),(450,'Bharatpur',29),(451,'Bhilwara',29),(452,'Bikaner',29),(453,'Bundi',29),(454,'Chittorgarh',29),(455,'Churu',29),(456,'Dausa',29),(457,'Dholpur',29),(458,'Dungarpur',29),(459,'Hanumangarh',29),(460,'Jaipur',29),(461,'Jaisalmer',29),(462,'Jalore',29),(463,'Jhalawar',29),(464,'Jhunjhunu',29),(465,'Jodhpur',29),(466,'Karauli',29),(467,'Kota',29),(468,'Nagaur',29),(469,'Pali',29),(470,'Pratapgarh',29),(471,'Rajsamand',29),(472,'Sawai Madhopur',29),(473,'Sikar',29),(474,'Sirohi',29),(475,'Sri Ganganagar',29),(476,'Tonk',29),(477,'Udaipur',29),(478,'North Sikkim',30),(479,'South Sikkim',30),(480,'East Sikkim',30),(481,'West Sikkim',30),(482,'Ariyalur',31),(483,'Tiruppur',31),(484,'Chennai',31),(485,'Coimbatore',31),(486,'Cuddalore',31),(487,'Dharmapuri',31),(488,'Dindigul',31),(489,'Erode',31),(490,'Kanchipuram',31),(491,'Kanyakumari',31),(492,'Karur',31),(493,'Krishnagiri',31),(494,'Madurai',31),(495,'Nagapattinam',31),(496,'Namakkal',31),(497,'Perambalur',31),(498,'Pudukkottai',31),(499,'Ramanathapuram',31),(500,'Salem',31),(501,'Sivaganga',31),(502,'Thanjavur',31),(503,'The Nilgiris',31),(504,'Theni',31),(505,'Thoothukudi',31),(506,'Tiruchirappalli',31),(507,'Tirunelveli',31),(508,'Tiruvallur',31),(509,'Tiruvannamalai',31),(510,'Tiruvarur',31),(511,'Vellore',31),(512,'Viluppuram',31),(513,'Virudhunagar',31),(514,'Dhalai',32),(515,'North Tripura',32),(516,'South Tripura',32),(517,'West Tripura',32),(518,'Meerut',34),(519,'Mirzapur',34),(520,'Moradabad',34),(521,'Muzaffarnagar',34),(522,'Pilibhit',34),(523,'RaeBareli',34),(524,'Rampur',34),(525,'Saharanpur',34),(526,'Sant Kabir Nagar',34),(527,'Sant Ravidas Nagar',34),(528,'Shahjahanpur',34),(529,'Shravasti',34),(530,'Siddharthnagar',34),(531,'Sitapur',34),(532,'Sonbhadra',34),(533,'Sultanpur',34),(534,'Unnao',34),(535,'Varanasi',34),(536,'Agra',34),(537,'Aligarh',34),(538,'Allahabad',34),(539,'Ambedkar Nagar',34),(540,'Auraiya',34),(541,'Azamgarh',34),(542,'Bagpat',34),(543,'Bahraich',34),(544,'Ballia',34),(545,'Balrampur',34),(546,'Banda',34),(547,'Barabanki',34),(548,'Bareilly',34),(549,'Basti',34),(550,'Bijnor',34),(551,'Budaun',34),(552,'Bulandshahar',34),(553,'Chandauli',34),(554,'Chitrakoot',34),(555,'Deoria',34),(556,'Etah',34),(557,'Etawah',34),(558,'Faizabad',34),(559,'Farrukhabad',34),(560,'Fatehpur',34),(561,'Firozabad',34),(562,'Gautam Buddha Nagar',34),(563,'Ghaziabad',34),(564,'Ghazipur',34),(565,'Gonda',34),(566,'Gorakhpur',34),(567,'Hardoi',34),(568,'Hathras',34),(569,'Jalaun',34),(570,'Jaunpur',34),(571,'Jhansi',34),(572,'Jyotiba Phule Nagar',34),(573,'Kannauj',34),(574,'Kanpur Dehat',34),(575,'Kanpur Nagar',34),(576,'Kaushambi',34),(577,'Kheri',34),(578,'Kushinagar',34),(579,'Lalitpur',34),(580,'Lucknow',34),(581,'Maharajganj',34),(582,'Mahoba',34),(583,'Mainpuri',34),(584,'Mathura',34),(585,'Mau',34),(586,'Almora',33),(587,'Bageshwar',33),(588,'Chamoli',33),(589,'Champawat',33),(590,'Dehradun',33),(591,'Haridwar',33),(592,'Nainital',33),(593,'Pauri Garhwal',33),(594,'Pithoragarh',33),(595,'Rudraprayag',33),(596,'Tehri Garhwal',33),(597,'Udham Singh Nagar',33),(598,'Uttarkashi',33),(599,'Bankura',35),(600,'Bardhaman',35),(601,'Birbhum',35),(602,'Cooch Behar',35),(603,'Darjeeling',35),(604,'East Medinipur',35),(605,'Hooghly',35),(606,'Howrah',35),(607,'Jalpaiguri',35),(608,'Malda',35),(609,'Murshidabad',35),(610,'Nadia',35),(611,'North 24 Parganas',35),(612,'North Dinajpur',35),(613,'Purulia',35),(614,'South 24 Parganas',35),(615,'South Dinajpur',35),(616,'West Medinipur',35),(617,'East Garo Hills',23),(618,'East Khasi Hills',23),(619,'Jaintia Hills',23),(620,'Ri-Bhoi',23),(621,'South Garo Hills',23),(622,'West Garo Hills',23),(623,'West Khasi Hills',23);
/*!40000 ALTER TABLE `district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serviceproviders`
--

DROP TABLE IF EXISTS `serviceproviders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serviceproviders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `ServicePassword` varchar(32) NOT NULL,
  `RequestUrl` varchar(200) NOT NULL,
  `ResponseUrl` varchar(200) NOT NULL,
  `AccountNumber` varchar(20) NOT NULL,
  `BankIFSCCode` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serviceproviders`
--

LOCK TABLES `serviceproviders` WRITE;
/*!40000 ALTER TABLE `serviceproviders` DISABLE KEYS */;
INSERT INTO `serviceproviders` VALUES (2,'iMatrix','8621ffdbc5698829397d97767ac13db3','http://www.iMatrix.com/RequestUrl','http://www.iMatrix.com/ResponseUrl','SBI000001','SBI0000123');
/*!40000 ALTER TABLE `serviceproviders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Andaman and Nicobar Islands'),(2,'Andhra Pradesh'),(3,'Arunachal Pradesh'),(4,'Assam'),(5,'Bihar'),(6,'Chandigarh'),(7,'Chhattisgarh'),(8,'Dadra and Nagar Haveli'),(9,'Daman and Diu'),(10,'Delhi'),(11,'Goa'),(12,'Gujarat'),(13,'Haryana'),(14,'Himachal Pradesh'),(15,'Jammu and Kashmir'),(16,'Jharkhand'),(17,'Karnataka'),(18,'Kerala'),(19,'Lakshadweep'),(20,'Madhya Pradesh'),(21,'Maharashtra'),(22,'Manipur'),(23,'Meghalaya'),(24,'Mizoram'),(25,'Nagaland'),(26,'Odisha'),(27,'Puducherry'),(28,'Punjab'),(29,'Rajasthan'),(30,'Sikkim'),(31,'Tamil Nadu'),(32,'Tripura'),(33,'Uttarakhand'),(34,'Uttar Pradesh'),(35,'West Bengal');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `UID` varchar(15) NOT NULL,
  `ServiceProviderId` int(10) NOT NULL,
  `ServiceProviderTransactionId` varchar(15) NOT NULL,
  `BankTransactionId` varchar(15) DEFAULT NULL,
  `Status` enum('FAILED','SUCCESS','PENDING') NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Amount` double(20,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'U00328266854270',2,'12345',NULL,'PENDING','2012-03-28 09:36:02',100.00),(2,'U00328266854270',2,'T6460',NULL,'PENDING','2012-03-28 10:33:09',2000.00),(3,'U00328266854270',2,'T6460',NULL,'PENDING','2012-03-28 10:35:29',2000.00),(4,'U00328266854270',2,'T20566',NULL,'PENDING','2012-03-28 10:54:34',2000.00),(5,'U00328266854270',2,'T91285',NULL,'PENDING','2012-03-28 11:08:24',2000.00),(6,'U00328266854270',2,'T91285',NULL,'PENDING','2012-03-28 11:10:34',2000.00),(7,'U00328266854270',2,'T91285',NULL,'PENDING','2012-03-28 11:11:11',2000.00),(8,'U00328266854270',2,'T91285',NULL,'PENDING','2012-03-28 11:11:35',2000.00),(9,'U00328266854270',2,'T13631',NULL,'PENDING','2012-03-28 11:19:27',2000.00),(10,'U00328266854270',2,'T89958',NULL,'PENDING','2012-03-28 11:22:20',2000.00),(11,'U00328266854270',2,'T89958',NULL,'PENDING','2012-03-28 11:25:06',2000.00),(12,'U00328266854270',2,'T53584',NULL,'PENDING','2012-03-28 11:50:05',2000.00),(13,'U00328266854270',2,'T74302',NULL,'PENDING','2012-03-28 11:53:50',2000.00),(14,'U00328266854270',2,'T32627','BK56461','SUCCESS','2012-03-28 11:57:42',2000.00),(15,'U00328266854270',2,'T74514',NULL,'PENDING','2012-03-28 12:47:13',2000.00),(16,'U00328266854270',2,'T6309','BK70040','SUCCESS','2012-03-28 13:12:16',2000.00);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_tokens`
--

DROP TABLE IF EXISTS `transaction_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_tokens` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `TransactionId` int(20) NOT NULL,
  `UID` varchar(15) NOT NULL,
  `Token` varchar(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `TransactionId` (`TransactionId`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_tokens`
--

LOCK TABLES `transaction_tokens` WRITE;
/*!40000 ALTER TABLE `transaction_tokens` DISABLE KEYS */;
INSERT INTO `transaction_tokens` VALUES (1,15,'U00328266854270','813820'),(2,16,'U00328266854270','395206');
/*!40000 ALTER TABLE `transaction_tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-29  7:59:20
