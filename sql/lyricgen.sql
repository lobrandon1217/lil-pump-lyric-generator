-- MySQL dump 10.13  Distrib 5.7.21, for osx10.13 (x86_64)
--
-- Host: localhost    Database: lyricgen
-- ------------------------------------------------------
-- Server version	5.7.21

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
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_bin NOT NULL,
  `artist` text COLLATE utf8_bin NOT NULL COMMENT 'Artist of the song',
  `lyrics` text COLLATE utf8_bin NOT NULL,
  `user_submitted_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Gucci Gang','Lil Pump','Yuh, ooh, brr, brr\r\nGucci gang, ooh\r\n(That\'s it right there, Gnealz)\r\nYuh, Lil Pump, yuh\r\nGucci gang, ooh\r\n(Ooh, Bi-Bighead on the beat)\r\nYuh, brr\r\n\r\n\r\nGucci gang, Gucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nSpend three racks on a new chain (yuh)\r\nMy bitch love do cocaine, ooh (ooh)\r\nI fuck a bitch, I forgot her name (brr, yuh)\r\nI can\'t buy a bitch no wedding ring (ooh)\r\nRather go and buy Balmains (brr)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nGucci gang, Gucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nSpend three racks on a new chain (huh?)\r\nMy bitch love do cocaine, ooh (brr)\r\nI fuck a bitch, I forgot her name, yuh (yuh, yuh)\r\nI can\'t buy no bitch no wedding ring, ooh (nope)\r\nRather go and buy Balmains, ayy (brr)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\n\r\nMy lean cost more than your rent, ooh (it do)\r\nYour momma still live in a tent, yuh (brr)\r\nStill slangin\' dope in the \'jects, huh? (yeah)\r\nMe and my grandma take meds, ooh (huh?)\r\nNone of this shit be new to me (nope)\r\nFuckin\' my teacher, call it tutory (yuh)\r\nBought some red bottoms, cost hella Gs (huh?)\r\nFuck your airline, fuck your company (fuck it!)\r\nBitch, your breath smell like some cigarettes (cigarettes)\r\nI\'d rather fuck a bitch from the projects (yuh)\r\nThey kicked me out the plane off a percocet (brr)\r\nNow Lil Pump flyin\' private jet (yuh)\r\nEverybody scream, \"Fuck WestJet\" (fuck \'em)\r\nLil Pump still sell that meth (yuh)\r\nHunnid on my wrist, sippin\' on Tech (brr)\r\nFuck a lil bitch, make her pussy wet (what?)\r\n\r\nGucci gang, Gucci gang, Gucci gang, Gucci gang (Gucci gang), Gucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nSpend three racks on a new chain (huh?)\r\nMy bitch love do cocaine, ooh (yuh)\r\nI fuck a bitch, I forgot her name (brr)\r\nI can\'t buy a bitch no wedding ring (huh?)\r\nRather go and buy Balmains (yuh)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nGucci gang, Gucci gang, Gucci gang, Gucci gang\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nSpend three racks on a new chain (huh?)\r\nMy bitch love do cocaine, ooh (brr)\r\nI fuck a bitch, I forgot her name, yuh (yuh)\r\nI can\'t buy no bitch no wedding ring, ooh (nope)\r\nRather go and buy Balmains, ayy (huh?)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)',1),(2,'Boss','Lil Pump','[Intro & Producertag]\r\nDiablo murder\r\nOoh, yeah\r\nLil Pump!\r\nYeah\r\n\r\n[Chorus]\r\nYeah, I came in with the sauce, ooh\r\nYeah, I came in with a saw, yeah\r\nBitch, I flex, Rick Ross, yeah\r\nBitch, I flex, Rick Ross, yeah\r\nYeah, I came in with the sauce, ooh\r\nYeah, I came in with a saw, ooh\r\nBitch, I flex, Rick Ross, yeah\r\nBitch, I flex, Rick Ross, yeah\r\n\r\n[Post-Chorus]\r\nWalk in the trap like a boss (ooh)\r\nWalk in the trap like a boss (brr)\r\nWalk in the trap like a boss (ooh)\r\nWalk in the trap like a boss (trap)\r\nYeah, I came in with the sauce, (ooh)\r\nYeah, I came in with a saw, ooh\r\nBitch, I flex, Rick Ross, ooh\r\nBitch, I flex, Rick Ross, ooh\r\n\r\n[Verse]\r\nWalk in the trap, Ric Flair, ooh\r\nFuck a nigga bitch, don\'t care, damn\r\nThrowing up racks in the air, damn\r\nTold that bitch \"Lil Pump, yeah, ooh\", damn\r\nI just broke my wrist\r\n100 on my wrist, can\'t tell me shit\r\nPop 4 Xans then I fucked a nigga\'s bitch\r\nNever went to school cause I was always flippin\' bricks, ayy\r\nYeah, I came up with the sauce, damn\r\nYeah, I sold crack in the halls, damn\r\nLil Pump, bands on top, damn\r\nGave my mom 2 Glocks, damn\r\nEverybody do wanna be me\r\nLookin\' at my neck and it\'s Fiji, ooh, damn\r\nEverybody do wanna be me\r\nLookin\' at my neck and it\'s Fiji, ooh\r\n\r\n[Chorus]\r\nYeah, I came in with the sauce, ooh\r\nYeah, I came in with a saw, yeah\r\nBitch, I flex, Rick Ross, yeah\r\nBitch, I flex, Rick Ross, yeah\r\nYeah, I came in with the sauce, ooh\r\nYeah, I came in with a saw, ooh\r\nBitch, I flex, Rick Ross, yeah\r\nBitch, I flex, Rick Ross, yeah',1),(3,'Look At Me!','XXXTENTACION','[Intro]\r\nAyy, I\'m like \"Bitch, who is your mans?\" ayy\r\nCan\'t keep my dick in my pants, ayy\r\nMy bitch don\'t love me no mo\', ayy\r\nShe kick me out, I\'m like vro, ayy\r\n\r\n[Interlude]\r\n\"Damn son, where\'d you find this?\"\r\nYah, ayy\r\nYah, ayy, yah\r\nAyy, haha, yah, yah, yah\r\nAyy\r\nAyy, ayy, ayy\r\n\r\n[Verse 1]\r\nI\'m like \"Bitch, who is your mans?\" ayy\r\nCan\'t keep my dick in my pants, ayy\r\nMy bitch don\'t love me no mo\', ayy\r\nShe kick me out, I\'m like vro, ayy\r\nThat bitch don\'t wanna be friends, ayy\r\nI gave her dick, she amen, ayy\r\nShe put her tongue on my dick, ayy\r\nLook at my wrist, about ten, ayy\r\nJust got a pound of the boof, ayy\r\nBrought that shit straight to the booth, ayy\r\nTommy my Hilfiger voots, ayy\r\nShe said, \"wan\' fuck?\" Bitch, I do, ayy\r\nYou put a gun on my mans, ayy\r\nI put a hole in your parents, ayy\r\nI just got lean on my ksubis, ayy\r\nI got a UZI, no Uzi\r\n\r\n[Chorus]\r\nFuck on me, look at me, ayy\r\nFuck on me, yah, look at me, ayy\r\nLook at me, look at me, yah\r\nFuck on me, yah, aye\r\nLook at me, yah, fuck on me\r\nLook at me, fuck on me, yah\r\nLook at me, fuck on me\r\nYah, ayy\r\n\r\n[Bridge]\r\nTell these fuck nigga voot me up, pipe up\r\nAyy, shouts-out Bans and them\r\nAyy\r\n\r\n[Verse 2]\r\nI took a white bitch to Starbucks\r\nThat little bitch got her throat fucked\r\nI like to rock out like I\'m misfit\r\nMy emo bitch like her wrist slit\r\nCurly hair bitch like I\'m Corbin\r\nGot, like, three bitches, I\'m Mormon\r\nSkeet on your main bitch\'s forehead\r\nDon\'t want your pussy, just want head\r\n\r\n[Chorus]\r\nLook at me, fuck on me\r\nLook at me, fuck on me\r\nLook at me, fuck on me\r\nLook at me, yah, aye!\r\nLook at me, fuck on me\r\nLook at me, fuck on me\r\nLook at me, fuck on me\r\nLook at me, yah!',1),(4,'Rip Roach','XXXTENTACION','Cocaine for my breakfast (what?)\nHold that pistol, ambidextrous, uh (yuh, yuh)\nPussy boy talk reckless (ayy)\nHe might end up on a stretcher, uh (yuh, bitch)\nFuck with my set (ayy)\nYou get wet, like a pussy, yuh (yuh, yuh)\nSauce, what I spilled (yuh, yuh)\nOn my kilt, she need milk, okay like... (ayy, ayy)\nXXX on a Killstreak, huh (bitch)\nYou pussy niggas, Rice Krispie, uh (what?)\nFuck a white bitch on a 6 speed (yuh)\n6 stars like GTA, kill me, uh (fuck)\nIt\'s more money I\'m getting (ayy)\nIf a nigga tryna take, wig splitting \'em (ayy)\nShouts out to my Zoe, they killed my VRO (yuh, yuh)\nSo, bitch, off rip now, I\'m like... (ayy)\nMama raised a soldier (huh, yuh)\nNot no bitch, not no bitch, yuh (yuh, what?)\nMama raised a soldier (huh, yuh)\nNot no bitch, not no bitch, uh (yuh, ayy)\nMama raised a soldier (yuh, yuh)\nNot no bitch, not no bitch, uh (yuh, ayy)\nMama raised a soldier (yuh, what?)\nNot no bitch, not no bitch, yuh (huh)\nMama raised a soldier (huh, yuh)\nNot no bitch, not no bitch, ayy (yuh, okay, you alright?)\nR.I.P. my Zoe, ayy (yuh, uh)\nR.I.P. my Zoe, okay (uh, yuh)\nR.I.P. my Zoe, ayy (huh, yuh)\nR.I.P. my Zoe, okay (hey, al-alright?)\nR.I.P. my Zoe, yuh (yuh, yuh)\nR.I.P. my Zoe, okay (yuh, yuh)\nR.I.P my soul (ayy, my who?)\nYuh (rest in peace, my soul, man)\nAyy (yuh, man)\nTY, bitch\nI got my Andy Capp\'s on this bitch\nI\'m \'bout to sip this motherfuckin\' water \nThat\'s not even water\nI stole that boy\'s shit (where the fuck is a)\nAyy\nCame from the dirt, you can\'t hit my purp\nSaid my diamonds wetter than some sweat, absurd\nGold up on my wrist\'s lookin\' sunny, Big Bird\nHit \'em with the, hit \'em with the numbers like a nerd\nAyy, let\'s slide sixth wall, I\'m tied\nCall my pockets knotty \'cause they sloppy, oh, my\nI could be Xzibit, might pimp my ride\nWet pleasure rather pay the Rafs, like Christ\nHit my bitch like Bruno, uh\nGet a bitch wet, no Juno, uh\nPut it in her mouth like Uno, uh\nChest, all Polo like \"Kudos!\", ayy\nDog-ass nigga like Cujo, uh\nFace card bad who you know, ayy\nShe all wet like fructose, ayy\nDiamonds on like they cheat codes, ayy',1);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_song_comments`
--

DROP TABLE IF EXISTS `user_song_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_song_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_song_id` int(11) NOT NULL,
  `comment_author_id` int(11) NOT NULL,
  `comment_text` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_song_comments`
--

LOCK TABLES `user_song_comments` WRITE;
/*!40000 ALTER TABLE `user_song_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_song_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_song_ratings`
--

DROP TABLE IF EXISTS `user_song_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_song_ratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'id of the person leaving the rating',
  `is_like` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_song_ratings`
--

LOCK TABLES `user_song_ratings` WRITE;
/*!40000 ALTER TABLE `user_song_ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_song_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_songs`
--

DROP TABLE IF EXISTS `user_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `lyrics` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_songs`
--

LOCK TABLES `user_songs` WRITE;
/*!40000 ALTER TABLE `user_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','password',1);
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

-- Dump completed on 2018-05-01 10:20:59
