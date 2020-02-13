CREATE DATABASE  IF NOT EXISTS `book_shelf`;
USE `book_shelf`;

SET NAMES utf8 ;

DROP TABLE IF EXISTS `borrow`;
SET character_set_client = utf8mb4 ;
CREATE TABLE `borrow` (
  `borrow_value` int(11) NOT NULL auto_increment,
  `book_value` int(11) NOT NULL,
  `stunum` varchar(20) NOT NULL,
  `stuname` varchar(20) NOT NULL,
  `start_date` varchar(25) NOT NULL,
  `end_date` varchar(25) NOT NULL,
  PRIMARY KEY (`borrow_value`),
  FOREIGN KEY (`book_value`) REFERENCES all_data(`book_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `borrow` WRITE;
# INSERT INTO `borrow` VALUES (1, 1,'20161477',now()),(2, 1,'20161468',now()),(3, 2,'20161472',now());
# INSERT INTO `borrow`(book_value,stunum,start_date,end_date) VALUES (1,'20161477',now(), date_add(now(),INTERVAL 14 DAY));
UNLOCK TABLES;