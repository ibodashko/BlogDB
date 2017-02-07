-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `blog_tags`
--

DROP TABLE IF EXISTS `blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_blog_tags_posts1_idx` (`post_id`),
  KEY `fk_blog_tags_tags1_idx` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tags`
--

LOCK TABLES `blog_tags` WRITE;
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
INSERT INTO `blog_tags` VALUES (1,1,1),(2,1,3),(3,2,1),(4,2,2),(5,2,3),(6,4,1),(7,4,3),(8,6,1),(9,6,3);
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(500) NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Illidan','Is it over?','Capicola jerky ham, leberkas beef ribs pork belly short loin venison corned beef sausage filet mignon turkey. Leberkas drumstick filet mignon ham hock swine cow boudin shank.','2017-01-17'),(2,'Illidan','My legacy','Flank leberkas turducken, shankle brisket pork prosciutto porchetta jerky. Rump swine pig, bacon tenderloin boudin jowl kevin turducken. Leberkas shankle t-bone boudin shoulder.\n\nJerky spare ribs sirloin pancetta pork loin bresaola drumstick beef ribs turkey landjaeger t-bone tri-tip beef. Pancetta landjaeger ham hock bresaola meatloaf. Short ribs swine meatloaf andouille salami.','2017-01-18'),(3,'Vernon Roche','Witcher\'s friend','Bresaola tail swine short ribs. Pork loin filet mignon flank pork belly pork chop andouille strip steak. Rump ham short ribs bresaola. Shank beef ribs pastrami, hamburger doner swine pancetta strip steak kielbasa ham hock tongue t-bone tri-tip.','2017-01-18'),(4,'Athas','King','Bacon beef ribs cow kevin, short loin sausage leberkas t-bone rump ribeye boudin brisket pancetta meatball landjaeger. Landjaeger tenderloin kevin prosciutto short loin pancetta turducken tri-tip ham. Brisket pork belly jowl, kevin capicola ham ball tip jerky. Pancetta ball tip tail strip steak beef turducken sirloin shankle doner tenderloin. ','2017-01-19'),(5,'Geralt','Spy','Tenderloin andouille doner sirloin. Ham hock shank swine meatball filet mignon tail doner. Pork belly beef cow prosciutto shankle porchetta. Turducken short ribs capicola turkey, doner jerky strip steak sirloin pork belly kielbasa rump swine flank filet mignon biltong. Short ribs prosciutto tongue swine meatball jerky sausage kevin filet mignon chicken.','2017-01-19'),(6,'Illidan','Demon Hunter','Lorem ipsum dolor amet rump biltong beef ribs boudin tenderloin capicola. Shankle capicola chicken brisket ball tip landjaeger corned beef prosciutto kielbasa. Filet mignon short ribs shankle, meatball beef doner pancetta venison fatback strip steak. Brisket andouille meatball landjaeger ham. Shankle turducken leberkas, pork chop prosciutto ham boudin kevin sirloin cow.','2017-01-19');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Story'),(2,'Life'),(3,'WoW'),(4,'The Witcher');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-07 17:05:03
