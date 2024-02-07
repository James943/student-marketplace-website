-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2024 at 02:32 PM
-- Server version: 5.7.44
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jn494_ci601`
--

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `sellerID`, `itemName`, `price`, `catagory`, `description`, `unlisted`) VALUES
(1, 1, 'Xbox', 49.00, 'console', 'Xbox 360 (great condition)', 0),
(2, 23, 'Xbox 360', 49.99, 'console', 'used 12 year old xbox 360 slim 50gb (barely works)', 0),
(3, 19, 'Laptop', 150.11, 'laptop', 'Mint condition Asus laptop  ', 0),
(4, 4, 'baseball bat', 12.97, 'other', 'very old', 0),
(5, 16, 'PS5', 599.99, 'console', 'used ps5 poor condition', 0),
(6, 25, 'Banana', 1000.00, 'other', 'Its a banana!', 1),
(7, 24, 'Ps4', 69.76, 'console', 'used ps4 poor condition\r\n  ', 0),
(8, 20, 'laptop', 100.00, 'laptop', 'Gaming laptop, intel core i7 10th gen very good condition with original packaging  ', 0),
(9, 1, 'Xbox One', 100.99, 'console', '500gb xbox one from 2014, no controller', 0),
(15, 27, 'sony 43 inch tv', 350.00, 'other', 'Sony 43 inch Tv very good condition supports 4K\r\n  ', 0),
(14, 26, 'iphone x', 300.00, 'phone', 'Iphone x in very good condition 64gb \r\n  ', 0),
(13, 25, 'Cheesecake', 10.00, 'other', 'Its a new york cheesecake\r\n  ', 1),
(12, 16, 'Gaming mouse', 61.99, 'peripheral', 'new Logitech RGB gaming mouse (never used)', 0),
(11, 24, 'RC car', 36.50, 'other', 'Real nice Chevrolet Camaro SS remote controlled car (batteries not included)', 0),
(10, 19, 'Charizard', 5098.99, 'other', 'Ultra rare pokemon card - hologaphic rainbow Charizard GX\r\n  ', 0),
(16, 4, 'Gaming keyboard', 39.99, 'peripheral', 'Used WisFox Gaming Keyboard Model CE0142', 0),
(17, 30, 'iPhone 6s', 78.50, 'phone', 'Apple iPhone 6S 64GB - Used Excellent Condition Condition (Rose Gold)', 0),
(18, 28, 'Nintendo wii', 41.99, 'console', 'Good condition', 0),
(19, 36, 'my friend pedro the game', 30.00, 'other', 'video game', 1),
(20, 1, 'tomb raider (wii)', 9.98, 'other', '2009 game works fine', 0),
(21, 38, 'Used diet coke ', 100.00, 'other', 'Half drunk but still fizzy ', 1),
(22, 38, 'Used diet coke ', 100.00, 'other', 'Half drunk but still fizzy ', 0);

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`sellerID`, `firstName`, `lastName`, `studentNumber`, `email`, `phoneNumber`, `location`, `password`) VALUES
(1, 'James', 'Netto', 20838500, 'J.Netto1@uni.brighton.ac.uk', '07399287227', 'Moulsecoomb', 'qwerty'),
(2, 'dfgfd', 'gfdgfd', 0, 'fdgfdg@gail.com', '07359112339', 'Falmer', '123'),
(3, 'dsfsdf', 'dsfsd', 0, 'fdsf@gmail.com', '07359112339', 'Other', '123'),
(4, 'Jimmy', 'Smith', 0, 'jims21312@gmail.com', '07598453321', 'City', '12345'),
(5, 'sdfsdf', 'fdewsfwaef', 0, 'werafa@gmail.com', '07598453321', 'Eastbourne', 'ertypk'),
(6, 'Yerry', 'Jones', 0, 'yjones1@outlook.com', '07359112339', 'Moulsecoomb', 'yerry1'),
(7, 'gfdgdg', 'fdgfdgd', 0, 'fdgdf@g.com', '07759441336', 'Eastbourne', '123'),
(8, 'fdgdfgfd', 'gfdgfdgfd', 0, 'fdg@gmail.com', '07759441336', 'Falmer', '12'),
(9, 'fdsf', 'dsfsd', 0, 'dsfds@gmail.com', '07759441336', 'Other', '123'),
(10, 'ssfddsfd', 'sdsdf', 0, 'dsf@g.com', '07956822145', 'Falmer', '123'),
(11, 'ergtesrgs', 'segrergse', 0, 'sergse@gmail.com', '07956822145', 'Falmer', 'qwerty'),
(12, 'ergtesrgs', 'segrergse', 0, 'sergss@gmail.com', '07456339224', 'Eastbourne', 'qwerty'),
(13, 'ergtesrgs', 'segrergse', 0, 'sergses@gmail.com', '07456339224', 'Other', 'qwerty'),
(14, 'fsfs', 'sdfsd', 0, 'sfd@gmail.com', '07598453321', 'Other', '123'),
(15, 'ergtesrgs', 'segrergse', 0, 'serg@gmail.com', '07598453321', 'Eastbourne', 'qwerty'),
(16, 'Ronald', 'McDonald', 0, 'ronaldmclol@gmail.com', '07759441336', 'Varley Park', 'rip'),
(17, 'Ronald', 'McDonald', 0, 'ronaldmclolol@gmail.com', '07759441336', 'Varley Park', '123'),
(18, 'Ronald', 'McDonaldJr', 0, 'ronaldmcd@gmail.com', '07759441336', 'Varley Park', 'lol'),
(19, 'Johny', 'Smith', 0, 'lJim3243@hotmail.de', '07956822145', 'Falmer', '678'),
(20, 'Jane', 'Walker', 0, 'J.Walker2@outlook.co.uk', '07359112339', 'Other', 'jane1234'),
(21, 'malcom', 'smith', 0, 'M.smith1@gmail.com', '07359112339', 'Moulsecoomb', 'smith1'),
(22, 'fds', 'dsfsd', 0, 'dsfsdf@gmsdf.com', '07359112339', 'Other', 'asd'),
(23, 'Jose', 'Smith', 0, 'josesmith4@gmail.com', '07456339224', 'Varley Park', 'win31'),
(24, 'Jeff', 'Jefferson', 0, 'jeffry789@gmail.com', '07688267449', 'City', '12345'),
(25, 'Tara', 'Pieters', 0, 'tkpieterslol@outlook.com', '07124663177', 'Other', 'password'),
(26, 'Freddy', 'Jones', 0, 'yellowfridge21@gmail.com', '07359112339', 'Moulsecoomb', 'qscCSQwe12'),
(27, 'demo', 'demo', 0, 'demo1234@gmail.com', '07359112339', 'Falmer', 'demo1234'),
(28, 'Shaggy', 'Rogers', 0, 'shaggy78@gmail.com', '07598453321', 'Varley Park', 'monkey11'),
(29, 'hgfh', 'fghgfhfg', 0, 'fdsfds@gmail.com', '07759441336', 'City', 'lol22'),
(30, 'Scobert', 'Doo', 0, 'scoob22@hotmail.com', '07759441336', 'Eastbourne', 'pw123'),
(33, 'Kyle', 'Kimchi', 20495475, 'k.kimchi1@uni.brighton.ac.uk', '07769664992', 'Eastbourne', 'soap11'),
(34, 'Doug', 'Peterson', 20864828, 'D.Peterson1@uni.brighton.ac.uk', '07569224993', 'Varley Park', 'dougie666'),
(35, 'sean', 'mcnally', 88888888, 'seanmichaelmcnally@gmail.com', '07522 77702', 'Moulsecoomb', 'Verfub2f'),
(36, 'Aasef', 'Reza', 16618442, 'a.reza1@uni.brighton.ac.uk', '07999432101', 'Moulsecoomb', 'qwertyasdf1'),
(37, 'John ', 'Smith ', 20830851, 'Jsmith1@uni.brighton.ac.uk', '07512345312', 'Moulsecoomb', 'jsmith'),
(38, 'Oli', 'Langford ', 88888888, 'Lmao262776@gmail.com', '07979075000', 'Eastbourne', 'Hello123!');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
