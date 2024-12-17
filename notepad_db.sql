-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 09:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notepad_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Content` text DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`Id`, `Title`, `Content`, `CreatedDate`) VALUES
(1, 'Example', '“Distinguished guests, luminous minds, and visionaries of the future,\n\nWelcome to a gathering of unparalleled significance—a confluence of intellect, creativity, and boundless possibility. We stand on the cusp of an epoch, where dreams transform into realities, and imagination takes flight.\n\nTogether, we shall embark on a journey that transcends the ordinary—a voyage through the realms of possibility, where each step forward brings us closer to the sublime. Here, in the space between dreams and destiny, we shall chart a course not just for progress, but for greatness itself.\n\nToday, we dare to dream in colors unseen, to reach heights once thought unattainable, and to carve a legacy that will stand the test of time. This is not merely a presentation—it is a call to action, a call to ignite the fire of innovation and unleash the full potential of the human spirit.\nAs we move forward, let us remember that the future is not a destination, but a journey—a journey we undertake together, with courage, conviction, and an unwavering belief in what we can achieve.\n\nLet us begin, for the extraordinary awaits.”', '2024-12-16 06:32:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `reset_auto_increment_event` ON SCHEDULE EVERY 1 MINUTE STARTS '2024-12-16 08:51:49' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    IF (SELECT COUNT(*) FROM notes) = 0 THEN
        ALTER TABLE notes AUTO_INCREMENT = 0;
    END IF;
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
