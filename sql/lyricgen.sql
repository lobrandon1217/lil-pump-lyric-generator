-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 12:52 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyricgen`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `lyrics` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `lyrics`) VALUES
(1, 'Gucci Gang', 'Yuh, ooh, brr, brr\r\nGucci gang, ooh\r\n(That\'s it right there, Gnealz)\r\nYuh, Lil Pump, yuh\r\nGucci gang, ooh\r\n(Ooh, Bi-Bighead on the beat)\r\nYuh, brr\r\n\r\n\r\nGucci gang, Gucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nSpend three racks on a new chain (yuh)\r\nMy bitch love do cocaine, ooh (ooh)\r\nI fuck a bitch, I forgot her name (brr, yuh)\r\nI can\'t buy a bitch no wedding ring (ooh)\r\nRather go and buy Balmains (brr)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nGucci gang, Gucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nSpend three racks on a new chain (huh?)\r\nMy bitch love do cocaine, ooh (brr)\r\nI fuck a bitch, I forgot her name, yuh (yuh, yuh)\r\nI can\'t buy no bitch no wedding ring, ooh (nope)\r\nRather go and buy Balmains, ayy (brr)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\n\r\nMy lean cost more than your rent, ooh (it do)\r\nYour momma still live in a tent, yuh (brr)\r\nStill slangin\' dope in the \'jects, huh? (yeah)\r\nMe and my grandma take meds, ooh (huh?)\r\nNone of this shit be new to me (nope)\r\nFuckin\' my teacher, call it tutory (yuh)\r\nBought some red bottoms, cost hella Gs (huh?)\r\nFuck your airline, fuck your company (fuck it!)\r\nBitch, your breath smell like some cigarettes (cigarettes)\r\nI\'d rather fuck a bitch from the projects (yuh)\r\nThey kicked me out the plane off a percocet (brr)\r\nNow Lil Pump flyin\' private jet (yuh)\r\nEverybody scream, \"Fuck WestJet\" (fuck \'em)\r\nLil Pump still sell that meth (yuh)\r\nHunnid on my wrist, sippin\' on Tech (brr)\r\nFuck a lil bitch, make her pussy wet (what?)\r\n\r\nGucci gang, Gucci gang, Gucci gang, Gucci gang (Gucci gang), Gucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nSpend three racks on a new chain (huh?)\r\nMy bitch love do cocaine, ooh (yuh)\r\nI fuck a bitch, I forgot her name (brr)\r\nI can\'t buy a bitch no wedding ring (huh?)\r\nRather go and buy Balmains (yuh)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nGucci gang, Gucci gang, Gucci gang, Gucci gang\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)\r\nSpend three racks on a new chain (huh?)\r\nMy bitch love do cocaine, ooh (brr)\r\nI fuck a bitch, I forgot her name, yuh (yuh)\r\nI can\'t buy no bitch no wedding ring, ooh (nope)\r\nRather go and buy Balmains, ayy (huh?)\r\nGucci gang, Gucci gang, Gucci gang (Gucci gang)'),
(2, 'Boss', '[Intro & Producertag]\r\nDiablo murder\r\nOoh, yeah\r\nLil Pump!\r\nYeah\r\n\r\n[Chorus]\r\nYeah, I came in with the sauce, ooh\r\nYeah, I came in with a saw, yeah\r\nBitch, I flex, Rick Ross, yeah\r\nBitch, I flex, Rick Ross, yeah\r\nYeah, I came in with the sauce, ooh\r\nYeah, I came in with a saw, ooh\r\nBitch, I flex, Rick Ross, yeah\r\nBitch, I flex, Rick Ross, yeah\r\n\r\n[Post-Chorus]\r\nWalk in the trap like a boss (ooh)\r\nWalk in the trap like a boss (brr)\r\nWalk in the trap like a boss (ooh)\r\nWalk in the trap like a boss (trap)\r\nYeah, I came in with the sauce, (ooh)\r\nYeah, I came in with a saw, ooh\r\nBitch, I flex, Rick Ross, ooh\r\nBitch, I flex, Rick Ross, ooh\r\n\r\n[Verse]\r\nWalk in the trap, Ric Flair, ooh\r\nFuck a nigga bitch, don\'t care, damn\r\nThrowing up racks in the air, damn\r\nTold that bitch \"Lil Pump, yeah, ooh\", damn\r\nI just broke my wrist\r\n100 on my wrist, can\'t tell me shit\r\nPop 4 Xans then I fucked a nigga\'s bitch\r\nNever went to school cause I was always flippin\' bricks, ayy\r\nYeah, I came up with the sauce, damn\r\nYeah, I sold crack in the halls, damn\r\nLil Pump, bands on top, damn\r\nGave my mom 2 Glocks, damn\r\nEverybody do wanna be me\r\nLookin\' at my neck and it\'s Fiji, ooh, damn\r\nEverybody do wanna be me\r\nLookin\' at my neck and it\'s Fiji, ooh\r\n\r\n[Chorus]\r\nYeah, I came in with the sauce, ooh\r\nYeah, I came in with a saw, yeah\r\nBitch, I flex, Rick Ross, yeah\r\nBitch, I flex, Rick Ross, yeah\r\nYeah, I came in with the sauce, ooh\r\nYeah, I came in with a saw, ooh\r\nBitch, I flex, Rick Ross, yeah\r\nBitch, I flex, Rick Ross, yeah'),
(3, 'Look At Me!', '[Intro]\r\nAyy, I\'m like \"Bitch, who is your mans?\" ayy\r\nCan\'t keep my dick in my pants, ayy\r\nMy bitch don\'t love me no mo\', ayy\r\nShe kick me out, I\'m like vro, ayy\r\n\r\n[Interlude]\r\n\"Damn son, where\'d you find this?\"\r\nYah, ayy\r\nYah, ayy, yah\r\nAyy, haha, yah, yah, yah\r\nAyy\r\nAyy, ayy, ayy\r\n\r\n[Verse 1]\r\nI\'m like \"Bitch, who is your mans?\" ayy\r\nCan\'t keep my dick in my pants, ayy\r\nMy bitch don\'t love me no mo\', ayy\r\nShe kick me out, I\'m like vro, ayy\r\nThat bitch don\'t wanna be friends, ayy\r\nI gave her dick, she amen, ayy\r\nShe put her tongue on my dick, ayy\r\nLook at my wrist, about ten, ayy\r\nJust got a pound of the boof, ayy\r\nBrought that shit straight to the booth, ayy\r\nTommy my Hilfiger voots, ayy\r\nShe said, \"wan\' fuck?\" Bitch, I do, ayy\r\nYou put a gun on my mans, ayy\r\nI put a hole in your parents, ayy\r\nI just got lean on my ksubis, ayy\r\nI got a UZI, no Uzi\r\n\r\n[Chorus]\r\nFuck on me, look at me, ayy\r\nFuck on me, yah, look at me, ayy\r\nLook at me, look at me, yah\r\nFuck on me, yah, aye\r\nLook at me, yah, fuck on me\r\nLook at me, fuck on me, yah\r\nLook at me, fuck on me\r\nYah, ayy\r\n\r\n[Bridge]\r\nTell these fuck nigga voot me up, pipe up\r\nAyy, shouts-out Bans and them\r\nAyy\r\n\r\n[Verse 2]\r\nI took a white bitch to Starbucks\r\nThat little bitch got her throat fucked\r\nI like to rock out like I\'m misfit\r\nMy emo bitch like her wrist slit\r\nCurly hair bitch like I\'m Corbin\r\nGot, like, three bitches, I\'m Mormon\r\nSkeet on your main bitch\'s forehead\r\nDon\'t want your pussy, just want head\r\n\r\n[Chorus]\r\nLook at me, fuck on me\r\nLook at me, fuck on me\r\nLook at me, fuck on me\r\nLook at me, yah, aye!\r\nLook at me, fuck on me\r\nLook at me, fuck on me\r\nLook at me, fuck on me\r\nLook at me, yah!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_bin NOT NULL,
  `password` text COLLATE utf8_bin NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_songs`
--

CREATE TABLE `user_songs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `lyrics` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_song_comments`
--

CREATE TABLE `user_song_comments` (
  `id` int(11) NOT NULL,
  `user_song_id` int(11) NOT NULL,
  `comment_author_id` int(11) NOT NULL,
  `comment_text` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_song_ratings`
--

CREATE TABLE `user_song_ratings` (
  `id` int(11) NOT NULL,
  `user_song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'id of the person leaving the rating',
  `is_like` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Username` (`username`);

--
-- Indexes for table `user_songs`
--
ALTER TABLE `user_songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_song_comments`
--
ALTER TABLE `user_song_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_song_ratings`
--
ALTER TABLE `user_song_ratings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_songs`
--
ALTER TABLE `user_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_song_comments`
--
ALTER TABLE `user_song_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_song_ratings`
--
ALTER TABLE `user_song_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
