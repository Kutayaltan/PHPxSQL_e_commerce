-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 21. Jul 2024 um 13:12
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be22_exam4_kutayaltan_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `ISBN_Code` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(120) NOT NULL,
  `short_description` text NOT NULL,
  `type` varchar(59) NOT NULL,
  `author_first_name` varchar(50) NOT NULL,
  `author_last_name` varchar(50) NOT NULL,
  `publisher_name` varchar(50) NOT NULL,
  `publisher_adress` varchar(120) NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `library`
--

INSERT INTO `library` (`ISBN_Code`, `title`, `image`, `short_description`, `type`, `author_first_name`, `author_last_name`, `publisher_name`, `publisher_adress`, `publish_date`) VALUES
(1, 'The Great Gatsby', 'https://m.media-amazon.com/images/I/71ptoyWH8dL._AC_UF1000,1000_QL80_.jpg', 'as', 'Book', 'F. Scott', 'Fitzgerald', 'Scribner', '123 Publisher St, New York, NY', '0000-00-00'),
(2, 'To Kill a Mockingbird', 'https://www.alvahnbeldinglibrary.org/site-assets/book-images/to-kill-a-mockingbird.jpg/@@images/image.jpeg', 'A novel about racial injustice in the Deep South.', 'Book', 'Harper', 'Lee', 'J.B. Lippincott & Co.', 'Philadelphia, PA', '1960-07-11'),
(3, '1984', 'https://m.media-amazon.com/images/I/612ADI+BVlL._AC_UF894,1000_QL80_.jpg', 'A dystopian novel about totalitarianism.', 'Book', 'George', 'Orwell', 'Secker & Warburg', 'London, UK', '1949-06-08'),
(4, 'The Beatles: Abbey Road', 'https://static.dw.com/image/39219505_803.jpg', 'A classic album by The Beatles.', 'CD', 'The', 'Beatles', 'Apple Records', 'London, UK', '1969-09-26'),
(5, 'The Dark Knight', 'https://image.film.at/images/cfs_2_3_large/2937228/img.jpg', 'A superhero film directed by Christopher Nolan.', 'DVD', 'Christopher', 'Nolan', 'Warner Bros.', 'Burbank, CA', '2008-07-18'),
(6, 'The Lord of the Rings: The Fellowship of the Ring', 'https://m.media-amazon.com/images/I/71lKy8RoFUL._AC_UF894,1000_QL80_.jpg', 'The first film in The Lord of the Rings trilogy.', 'DVD', 'Peter', 'Jackson', 'New Line Cinema', 'Los Angeles, CA', '2001-12-19'),
(7, 'Thriller', 'https://www.artofdesignonline.com/uploads/1/1/7/1/117189571/thriller_orig.jpg', 'The best-selling album of all time by Michael Jackson.', 'CD', 'Michael', 'Jackson', 'Epic Records', 'New York, NY', '1982-11-30'),
(8, 'Pride and Prejudice', 'https://upload.wikimedia.org/wikipedia/commons/3/37/Pride_and_Pr%C3%A9judice_CH_43.jpg', 'A classic romance novel.', 'Book', 'Jane', 'Austen', 'T. Egerton', 'London, UK', '1813-01-28'),
(9, 'The Matrix', 'https://upload.wikimedia.org/wikipedia/en/9/9a/The_Matrix_soundtrack_cover.jpg', 'A groundbreaking science fiction film.', 'DVD', 'Lana', 'Wachowski', 'Warner Bros.', 'Burbank, CA', '1999-03-31'),
(10, 'The Catcher in the Rye', 'https://live.staticflickr.com/3736/9671531161_c3044fd7db_b.jpg', 'A novel about teenage rebellion.', 'Book', 'J.D.', 'Salinger', 'Little, Brown and Company', 'Boston, MA', '1951-07-16'),
(11, 'Back in Black', 'https://upload.wikimedia.org/wikipedia/de/thumb/6/6a/Back-in-black_Cover.jpg/483px-Back-in-black_Cover.jpg', 'A classic rock album by AC/DC.', 'CD', 'AC/DC', '', 'Albert Productions', 'Sydney, Australia', '1980-07-25'),
(12, 'Inception', 'https://image.film.at/images/cfs_2_3_large/2966421/img.jpg', 'A science fiction thriller directed by Christopher Nolan.', 'DVD', 'Christopher', 'Nolan', 'Warner Bros.', 'Burbank, CA', '2010-07-16'),
(13, 'Harry Potter and the Philosopher\'s Stone', 'https://cdn.cineplex.de/_imageserver/340f52883.jpg', 'The first book in the Harry Potter series.', 'Book', 'J.K.', 'Rowling', 'Bloomsbury', 'London, UK', '1997-06-26');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`ISBN_Code`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `library`
--
ALTER TABLE `library`
  MODIFY `ISBN_Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
