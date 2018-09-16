-- phpMyAdmin SQL Dump
-- version 2.11.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2018 at 10:54 AM
-- Server version: 5.0.26
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `s_jmarkey`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artists`
--

CREATE TABLE IF NOT EXISTS `Artists` (
  `artistID` int(11) NOT NULL auto_increment,
  `artistName` char(24) NOT NULL,
  PRIMARY KEY  (`artistID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `Artists`
--

INSERT INTO `Artists` (`artistID`, `artistName`) VALUES
(1, 'Microwave'),
(2, 'Pink Floyd'),
(3, 'The Rolling Stones'),
(4, 'Glenn Miller'),
(5, 'Miles Davis'),
(6, 'Pat Boone'),
(7, 'Kill Your Idols'),
(8, 'Glenn Miller'),
(9, 'PUP'),
(10, 'Post Malone'),
(11, 'Kanye West'),
(12, 'Kurt Vethake'),
(13, 'Jeff Rosenstock'),
(14, 'Paramore'),
(15, 'My Chemical Romance'),
(16, 'Michael Jackson'),
(17, 'Meghan Trainor'),
(18, 'Freddie Slack');

-- --------------------------------------------------------

--
-- Table structure for table `AuthorOfLineNumber`
--

CREATE TABLE IF NOT EXISTS `AuthorOfLineNumber` (
  `linNAuthorID` int(11) NOT NULL auto_increment,
  `authorName` char(40) default NULL,
  PRIMARY KEY  (`linNAuthorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `AuthorOfLineNumber`
--

INSERT INTO `AuthorOfLineNumber` (`linNAuthorID`, `authorName`) VALUES
(1, 'Lucas Firn'),
(2, 'Darius Svengoolie'),
(3, 'Kevin Flynn'),
(4, 'George Handi'),
(5, 'Milo Thatch'),
(6, 'John Fargon'),
(7, 'Drako Malvin'),
(8, 'Benjamin D. Over');

-- --------------------------------------------------------

--
-- Table structure for table `MusicCategory`
--

CREATE TABLE IF NOT EXISTS `MusicCategory` (
  `categoryID` int(11) NOT NULL auto_increment,
  `mainCategoryName` char(16) NOT NULL,
  `subCategoryName` char(20) default NULL,
  PRIMARY KEY  (`categoryID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `MusicCategory`
--

INSERT INTO `MusicCategory` (`categoryID`, `mainCategoryName`, `subCategoryName`) VALUES
(1, 'Alternative', 'Indie'),
(2, 'Rock', ' Psychedelic Rock'),
(3, 'Rock', ' Blues'),
(4, 'Jazz', ' Big Band'),
(5, 'Jazz', ' Modal Jazz'),
(6, 'Rock', ' Rock & Roll'),
(7, 'Rock', ' Hardcore Punk'),
(8, 'Rock', ' Pop Punk'),
(9, 'Pop', ' Hip Hop'),
(10, 'Hip Hop', ' Rap'),
(11, 'Children''s', ''),
(12, 'Rock', ' Indie Rock'),
(13, 'Pop', ' Emo'),
(14, 'Pop', ' Soul'),
(15, 'Pop', ' Reggae'),
(16, 'Rock', ' Hard Rock'),
(17, 'Jazz', ' Boogie Woogie');

-- --------------------------------------------------------

--
-- Table structure for table `Photos`
--

CREATE TABLE IF NOT EXISTS `Photos` (
  `pictureID` int(11) NOT NULL auto_increment,
  `pictureType` char(3) default NULL,
  `photoName` char(128) NOT NULL,
  `recordID` int(11) NOT NULL,
  PRIMARY KEY  (`pictureID`),
  KEY `RefRecords11` (`recordID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Photos`
--

INSERT INTO `Photos` (`pictureID`, `pictureType`, `photoName`, `recordID`) VALUES
(1, 'RCD', 'pictures/record/Stovall', 1),
(2, 'RCD', 'pictures/record/Much_Love', 2),
(3, 'CVR', 'pictures/cover/Dark_Side', 3),
(4, 'RCD', 'pictures/record/Sympathy_Devil', 4),
(5, 'CVR', 'pictures/cover/Glenn_Miller', 5),
(6, 'RCD', 'pictures/record/Kind_of_Blue', 6),
(7, 'RCD', 'pictures/record/April_Love', 7),
(8, 'CVR', 'pictures/cover/Companionship', 8),
(9, 'RCD', 'pictures/record/String_Pearls', 9),
(10, 'CVR', 'pictures/cover/Dream_Over', 10),
(11, 'RCD', 'pictures/record/Stoney', 11),
(12, 'CVR', 'pictures/cover/College_Dropout', 12),
(13, 'RCD', 'pictures/record/Pitje_Puck', 13),
(14, 'CVR', 'pictures/cover/POST', 14),
(15, 'CVR', 'pictures/cover/Riot', 15),
(16, 'CVR', 'pictures/cover/Black_Parade', 16),
(17, 'RCD', 'pictures/record/Off_Wall', 17),
(18, 'CVR', 'pictures/cover/Better_Dancin', 18),
(19, 'CVR', 'pictures/cover/Animals', 19),
(20, 'RCD', 'pictures/record/Freddie_Slack', 20);

-- --------------------------------------------------------

--
-- Table structure for table `RecordCompany`
--

CREATE TABLE IF NOT EXISTS `RecordCompany` (
  `companyID` int(11) NOT NULL auto_increment,
  `companyName` char(40) NOT NULL,
  PRIMARY KEY  (`companyID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `RecordCompany`
--

INSERT INTO `RecordCompany` (`companyID`, `companyName`) VALUES
(1, 'SideOneDummy'),
(2, 'Harvest'),
(3, 'London Records'),
(4, 'Tee Vee International'),
(5, 'Columbia Records'),
(6, 'Republic Records'),
(7, 'Roc-A-Fella'),
(8, 'Domino'),
(9, 'Polyvinyl'),
(10, 'Fueled By Ramen'),
(11, 'Reprise'),
(12, 'Epic Records'),
(13, 'Sony Music'),
(14, 'Capitol Records');

-- --------------------------------------------------------

--
-- Table structure for table `Records`
--

CREATE TABLE IF NOT EXISTS `Records` (
  `recordID` int(11) NOT NULL auto_increment,
  `recordSize` int(11) NOT NULL,
  `recordTitle` char(40) NOT NULL,
  `producer` char(40) NOT NULL,
  `releaseYear` char(10) NOT NULL,
  `recordCondition` char(2) NOT NULL,
  `estimValue` double(18,0) NOT NULL,
  `price` double(18,0) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `sellerID` int(11) NOT NULL,
  `companyID` int(11) NOT NULL,
  `linNAuthorID` int(11) NOT NULL,
  `artistID` int(11) NOT NULL,
  PRIMARY KEY  (`recordID`),
  KEY `RefMusicCategory9` (`categoryID`),
  KEY `RefSeller14` (`sellerID`),
  KEY `RefRecordCompany19` (`companyID`),
  KEY `RefAuthorOfLineNumber22` (`linNAuthorID`),
  KEY `RefArtists24` (`artistID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `Records`
--

INSERT INTO `Records` (`recordID`, `recordSize`, `recordTitle`, `producer`, `releaseYear`, `recordCondition`, `estimValue`, `price`, `categoryID`, `sellerID`, `companyID`, `linNAuthorID`, `artistID`) VALUES
(1, 33, 'Stovall', 'Travis Hill', '2014', 'VG', 8, 10, 1, 1, 1, 1, 1),
(2, 33, 'Much Love', 'Travis Hill', '2016', 'G', 7, 10, 1, 1, 1, 1, 1),
(3, 33, 'Dark Side of the Moon', 'Pink Floyd', '1973', 'M', 1399, 426, 2, 2, 2, 2, 2),
(4, 45, 'Sympathy For The Devil', 'Jimmy Miller', '1968', 'M', 42, 143, 3, 3, 3, 0, 3),
(5, 33, 'The Glenn Miller Collection', 'RCA Victor', '1978', 'F', 12, 18, 4, 4, 4, 3, 4),
(6, 33, 'Kind of Blue', 'Teo Macero, Irving Townsend', '1959', 'M', 49, 25, 5, 4, 5, 4, 5),
(7, 45, 'April Love', 'Sammy Fain, Paul Francis Webster', '1957', 'F', 10, 69, 6, 2, 3, 0, 6),
(8, 45, 'From Companionship to Competition', 'Noah Evans', '2005', 'VG', 20, 20, 7, 1, 1, 0, 7),
(9, 33, 'String of Pearls', 'RCA Victor', '1973', 'F', 13, 20, 5, 5, 4, 2, 4),
(10, 45, 'The Dream is Over', 'Dave Schiffman', '2016', 'F', 14, 20, 8, 1, 1, 0, 8),
(11, 33, 'Stoney', 'Cashio, DJ Mustard', '2016', 'M', 45, 40, 9, 6, 6, 5, 9),
(12, 33, 'The College Dropout', 'Kanye West', '2004', 'M', 42, 7, 0, 7, 7, 2, 10),
(13, 45, 'Pitje Puck - Der Held des Tages', 'Kurt Vethake', '1970', 'M', 5, 5, 11, 8, 8, 0, 11),
(14, 33, 'POST-', 'Jack Shirley', '2018', 'VG', 16, 20, 12, 9, 9, 2, 12),
(15, 33, 'RIOT!', 'David Bendeth', '2007', 'P', 4, 12, 13, 1, 10, 6, 13),
(16, 33, 'Welcome to the Black Parade', 'Rob Cavallo', '2006', 'P', 8, 12, 13, 1, 11, 6, 14),
(17, 33, 'Off the Wall', 'Quincy Jones', '1979', 'F', 13, 15, 14, 10, 12, 7, 15),
(18, 45, 'Better When I''m Dancin''', 'Thaddeus Dixon', '2016', 'M', 13, 13, 15, 11, 13, 0, 16),
(19, 33, 'Animals', 'Pink Floyd', '1977', 'M', 48, 26, 16, 12, 2, 8, 2),
(20, 78, 'Freddie Slack''s Boogie Woogie', 'Freddie Slack', '1945', 'G', 22, 35, 17, 13, 14, 0, 17);

-- --------------------------------------------------------

--
-- Table structure for table `Seller`
--

CREATE TABLE IF NOT EXISTS `Seller` (
  `sellerID` int(11) NOT NULL auto_increment,
  `sellerName` char(50) NOT NULL,
  `sellerAddress` char(100) NOT NULL,
  PRIMARY KEY  (`sellerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `Seller`
--

INSERT INTO `Seller` (`sellerID`, `sellerName`, `sellerAddress`) VALUES
(1, 'Dennis Hopper', '6803 W 159th St, Tinley Park, IL 60477'),
(2, 'Teddy Bonesman', '1201 W 101st Ave, Duluth, MN, 55808'),
(3, 'Frank West', '8215 Broadway, Merrillville, IN 46410'),
(4, 'Charlie Jones', '634 S. West St, New York, NY, 10001'),
(5, 'John Shepard', '5300 W War Memorial Dr, Peoria, IL 61615'),
(6, 'Ewan Dinelli', 'Westminster, London SW1A 1AA, UK'),
(7, 'Miles Miller', '1600 Pennsylvania Ave NW, Washington, DC, 20500'),
(8, 'Toshinori Yagi', '1 Chome-1-83 Shimorenjaku, Mitaka, Tokyo 181-0013, Japan'),
(9, 'Jeff Simmons', '381 Brookview Ln, Bolingbrook, IL 60440'),
(10, 'Travis Touchdown', '201 S Canyon St, West Yellowstone, MT 59758'),
(11, 'Sam Flynn', '6261 Vorlage Dr, Orleans, ON K1C 2E4, Canada'),
(12, 'Jorge Blukas', '1110 Gorgas Ave, San Francisco, CA 94129'),
(13, 'Charlie Jones', '634 S. West St, New York, NY, 10001');

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE IF NOT EXISTS `Songs` (
  `songID` int(11) NOT NULL auto_increment,
  `recordID` int(11) NOT NULL,
  `songName` char(50) NOT NULL,
  PRIMARY KEY  (`songID`),
  KEY `RefRecords10` (`recordID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`songID`, `recordID`, `songName`) VALUES
(1, 1, 'Stovall'),
(2, 1, 'Work It Out'),
(3, 2, 'Whimper'),
(4, 2, 'Wrong'),
(5, 3, 'Time'),
(6, 3, 'Money'),
(7, 4, 'Sympathy For The Devil'),
(8, 4, 'Prodigal Son'),
(9, 5, 'Moolight Serenade'),
(10, 5, 'American Patrol'),
(11, 6, 'So What'),
(12, 6, 'Flamenco Sketches'),
(13, 7, 'April Love'),
(14, 7, 'When The Swallows Come Back To Capistrano'),
(15, 8, 'Intro'),
(16, 8, 'We''ve Tried Nothing And We''re Out of Ideas'),
(17, 9, 'String of Pearls'),
(18, 9, 'Bugle Call Rag'),
(19, 10, 'If This Tour Doesn''t Kill You I Will'),
(20, 10, 'DVP'),
(21, 11, 'I Fall Apart'),
(22, 11, 'Congratulations'),
(23, 12, 'Jesus Walks'),
(24, 12, 'Through the Wire'),
(25, 13, 'Seite A'),
(26, 13, 'Seite B'),
(27, 14, 'USA'),
(28, 14, 'TV Stars'),
(29, 15, 'Misery Business'),
(30, 15, 'For a Pessimist, I''m Pretty Optimisitic'),
(31, 16, 'Welcome to the Black Parade'),
(32, 16, 'Cancer'),
(33, 17, 'Don''t Stop ''Til You Get Enough'),
(34, 17, 'Rock With You'),
(35, 18, 'Better When I''m Dancin'''),
(36, 18, 'Bang Dem Sticks'),
(37, 19, 'Dogs'),
(38, 19, 'Pigs (Three Different Ones)'),
(39, 20, 'Rib Joint'),
(40, 20, 'Kitten on the Keys');
