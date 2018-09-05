-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 06, 2018 at 08:00 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qq`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Sports'),
(2, 'HTML'),
(3, 'PHP'),
(4, 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_name` text NOT NULL,
  `answer1` varchar(250) NOT NULL,
  `answer2` varchar(250) NOT NULL,
  `answer3` varchar(250) NOT NULL,
  `answer4` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_name`, `answer1`, `answer2`, `answer3`, `answer4`, `answer`, `category_id`) VALUES
(1, 'Real time streaming is most useful for', 'Short Video Clips', 'Extremely Short and low quality clips', 'Long video Clips', 'Extremely long and hgh quality clips', '3', 4),
(2, '*Identify the concept of blending colours along the edges of letter to create gentle effect', 'Morphing', 'Kerning', 'Leading', 'Anti Aliasing', '4', 4),
(3, 'A Multimedia file \r\n\r\n\r\n', 'Is same as any other regular file', 'Must be accessed at a specific rate', 'Stored on remote server and can be delivered to client ', 'Only mp3/mp4 file', '2', 4),
(4, 'The web standard allows programmers on many different computer platforms to dispersed\r\nformat and display the information server. These programs are called \r\n\r\n\r\n\r\n\r\n', 'HTML', 'XML', 'Nettscape Navigator', 'Web Browsers', '4', 4),
(5, 'Which color combination produces BLUE color\r\n\r\n\r\n\r\n', 'Yellow and Magenta ', 'Yellow and cyan ', 'Magenta and cyan ', 'Magenta and black', '3', 4),
(6, 'Which color consists of equal amounts of all basic colors?', 'Purple,Green and Red', 'White, Black and Grey', 'White, Magenta and Black', 'Black, Brown and Grey', '2', 4),
(7, 'Which of the following is not a sound type', '.wav', '.aiff', '.wma', '.aif', '4', 4),
(8, '*Interleaving the audio and video segments of a file together\r\n', 'Flare', 'Flattening', 'Simulation', 'Multimedia', '2', 4),
(9, 'MPEG compression', 'Stores the value of each frames', 'Stores the difference between successive frames', 'Stores multiple frames together', 'All of these', '2', 4),
(10, 'ASF stands for', 'Advanced Stereo Format', 'Advanced Streaming Format', 'Advanced Sound File', 'Advanced Sound Format', '2', 4),
(11, '*The way a particular application views the data from the database that the application uses\r\nis a ', 'Module', 'Schema', 'Relation', 'Sub Schema', '4', 2),
(12, 'The logical data structure with a one to many relationship is a ', 'Network', 'Chain', 'Tree', 'Relational', '3', 2),
(13, 'The database environment has all of the following except', 'Users', 'DBA', 'Query Language', 'Separate Files', '4', 2),
(14, 'Which of the following is true of a network structure?', 'Its a physical representation of data', 'Conceptually Simple', 'Allows many to many relationship', 'Dominant Database of the future', '3', 2),
(15, 'One approach to standardizing storing of data', 'MIS', 'MCYL', 'CODASYL', 'STRUCTPRO', '3', 2),
(16, 'An access path is provided by the file key', 'True', 'False', 'Cannot be determined', 'No answer possible', '1', 2),
(17, 'Which of these hasn’t developed a DBMS?', 'Microsoft', 'Oracle', 'Firebird', 'Phoenix', '4', 2),
(18, '*Which of the following IBM free form database is compatible for personal computers', 'Q&A', 'Double Helix', 'MySQL', 'Memory Mate', '4', 2),
(19, 'DBMS able to handle full text data, image data, audio & Video', 'GUIDBMS', 'DBMS++', 'Multimedia', 'Hypertext', '3', 2),
(20, 'Set of program that handle a firm’s database responsibilities\r\n', 'DBMS', 'DBPS', 'DMS', 'All of these', '4', 2),
(21, 'Internal auditors should review data system design before they are', 'Developed', 'Modifies', 'Implemented', 'All of these', '4', 2),
(22, '*One data dictionary software package is called\r\n', 'DB Dictionary', 'DC Dictionary', 'Any of these', 'None of these', '3', 2),
(23, 'QDOS was developed by', 'Peter Parker', 'Tim Paterson', 'L.Augusta', 'B.Gates', '2', 1),
(24, ' The Windows 7/8/8.1 registration takes place with a software which employs use of ', 'KMS', 'SSL', 'MIS', 'None of these', '1', 1),
(25, '*Which of the following are valid Passwords in case of Windows OS a', 'SYSKEY Password', 'System Password', 'All of these', 'None of these', '3', 1),
(26, 'Which of the following is not relevant to windows security', 'LSA', 'SAM', 'SRM', 'WSA', '4', 1),
(27, 'The shift hotkey process application file (.exe) {triggered by pressing shift multiple times} is stored in windows folder by which of the following names ', 'shift', 'sethc', 'shifttoggle', 'bfsvc', '2', 1),
(28, 'The initial program that is run when a computer is powered up is called', 'Boot program', 'Bootstrap Leader', 'Initializer', 'BootLoader', '2', 1),
(29, 'Consider the following snapshot of a system running n processes. Process i is holding Xi instances of a resource R, 1 <= i <= n. currently, all instances of R are occupied. Further, for all i, process i has placed a request for an additional Yi instances while holding the Xi instances it already has. There are exactly two processes p and q such that Yp = Yq = 0. Which one of the following can serve as a necessary condition to guarantee that the system is not approaching a deadlock?', 'min (Xp, Xq) < max (Yk) where k != p and k != q', 'Xp + Xq >= min (Yk) where k != p and k != q', 'max(Xp,Xq)>1', 'min(Xp,Xq)>1', '2', 1),
(30, 'Which of the following is NOT true of deadlock prevention and deadlock avoidance schemes?', 'In deadlock prevention, the request for resources is always granted if the resulting state is safe', 'In deadlock avoidance, the request for resources is always granted if the result state is safe', 'Deadlock avoidance is less restrictive than deadlock prevention', 'Deadlock avoidance requires knowledge of resource requirements a priori', '1', 1),
(31, 'A system contains three programs and each requires three tape units for its operation. The minimum number of tape units which the system must have such that deadlocks never arise is _', '6', '7', '8', '9', '2', 1),
(32, 'Which of the following is NOT a valid deadlock prevention scheme?', 'Release all resources before requesting a new resource', 'Number the resources uniquely and never request a lower numbered resource than the last one requested.', 'Never request a resource after releasing any resource', 'Request and all required resources be allocated before execution.', '3', 1),
(33, 'Which of the following is not a client server application', 'Internet Chat', 'Web Browsing', 'E-mail', 'Ping', '4', 5),
(34, 'In the following pairs of OSI protocol layer/sub-layer and its functionality, the INCORRECT pair is\r\nData Link Layer and ', 'Network Layer and Routing', 'Data Link Layer and Bit Synchronization', 'Transport Layer and End to end process communication', 'Medium Access Control sub layer and Channel Sharing', '2', 5),
(35, 'Which of the following is NOT true with respect to a transparent bridge and a router?', 'Both bridge and router selectively forward data packets', 'A bridge uses IP addresses while a router uses MAC address', 'A bridge builds up its routing table by inspect­ing incoming packets', 'A router can connect between a LAN and a WAN', '2', 5),
(36, 'Host A sends a UDP datagram containing 8880 bytes of user data to host B over an Ethernet LAN. Ethernet frames may carry data up to 1500 bytes (i.e. MTU = 1500 bytes). Size of UDP header is 8 bytes and size of IP header is 20 bytes. There is no option field in IP header. How may total number of IP fragments will be transmitted and what will be the contents of offset field in the last fragment?', '6 and 925', '6 and 7400', '7 and 1110', '7 and 8880', '3', 5),
(37, 'Since it is a network that uses switch, every packet goes through two links, one from source to switch and other from switch to destination. Since there are 10000 bits and packet size is 5000, two packets are sent. Transmission time for each packet is 5000 / 1077 bits per second links. Each link has a propagation delay of 20 microseconds. The switch begins forwarding a packet 35 microseconds after it receives the same. If 10000 bits of data are to be transmitted between the two hosts using a packet size of 5000 bits, the time elapsed between the transmission of the first bit of data and the reception of the last bit of the data in microseconds is ', '1075', '1575', '2220', '2200', '2', 5),
(38, 'Which one of the following statements is FALSE?', 'TCP guarantees a minimum communication rate', 'TCP ensures in-order delivery', 'TCP reacts to congestion by reducing sender window size', 'TCP employs retransmission to compensate for packet loss', '1', 5),
(39, 'Which one of the following statements is FALSE?', 'HTTP runs over TCP', 'HTTP describes the structur of web pages', 'HTTP allows information to be stored in a URL', 'HTTP can be used to test thee validity of a hypertext link', '2', 5),
(40, 'In a sliding window ARQ scheme, the transmitter''s window size is N and the receiver''s window size is M. The minimum number of distinct sequence numbers required to ensure correct operation of the ARQ scheme is  ', 'min(M,N)', 'max(M,N)', 'M+N', 'MN', '3', 5),
(41, 'Which one of the following protocols is NOT used to resolve one form of address to another one?', 'DNS', 'ARP', 'DCHP', 'RARP', '3', 5),
(42, 'How many bytes of data can be sent in 15 seconds over a serial link with baud rate of 9600 in asynchronous mode with odd parity and two stop bits in the frame?', '10000', '12000', '15000', '27000', '2', 5),
(43, 'There are n cards present in on the table arranged horizontally side by side randomly.Loop over positions in the array, starting with index 1. Each new position you need to pick that card, and you need to insert it into the correct place in the sorted sucollection of cards to the left of that position. This at worst might take O(n^2). Which sorting algorithm did you perform?', 'heap sort', 'quick sort', 'radix sort', 'insertion sort', '4', 3),
(44, 'Adam goes to school daily in his school bus. Initially the bus is empty, but as students start boarding at each stop the try to occupy last most seat empty. By the time they reach the school the entire bus is full and students start deboarding the bus from front and the last gets out last. This procedure is similar to which data structure?', 'heap', 'stack', 'queue', 'tree', '2', 3),
(45, 'I am a string searching algorithm . It is a kind of dictionary-matching algorithm that locates elements of a finite set of strings (the "dictionary") within an input text. It matches all strings simultaneously. The complexity of the algorithm is linear in the length of the strings plus the length of the searched text plus the number of output matches. Note that because all matches are found, there can be a quadratic number of matches if every substring matches (e.g. dictionary = a, aa, aaa, aaaa and input string is aaaa).', 'Breadth First search', 'DFS', 'Aho - Corasick Algorithm', 'Floyd Warshall Algorithm', '3', 3),
(46, 'I am basically a retrieval data structure. Using me, search complexities can be brought to optimal limit (key length). If we store keys in binary search tree, a well balanced BST will need time proportional to M * log N, where M is maximum string length and N is number of keys in tree. Using me, we can search the key in O(M) time. However the penalty is on my storage requirements.\r\nEvery node of mine consists of multiple branches. Each branch represents a possible character of keys. We need to mark the last node of every key as end of word node. \r\nCan you guess my name?\r\n', 'tree', 'stack', 'heap', 'linked list', '1', 3),
(47, 'I am an algorithm for finding minimum spanning tree in a graph for which all edge weights are distinct, or a minimum spanning forest in the case of a graph that is not connected. Here’s what I do - \r\nThe algorithm begins by finding the minimum-weight edge incident to each vertex of the graph, and adding all of those edges to the forest. Then, it repeats a similar process of finding the minimum-weight edge from each tree constructed so far to a different tree, and adding all of those edges to the forest. Each repetition of this process reduces the number of trees, within each connected component of the graph, to at most half of this former value, so after logarithmically many repetitions the process finishes. When it does, the set of edges it has added forms the minimum spanning forest.\r\nCan you guess my name?\r\n', 'Bor?vka''s algorithm', 'Floyd Warshall Algorithm', 'Dijkstra Algorithm', 'Bellman Ford Algorithm', '1', 3),
(48, 'I am an algorithm for computing the convex hull of a finite set of points in the plane. It uses a divide and conquer approach similar to that of quicksort, from which my name derives. My average case complexity is considered to be ?(n * log(n)), whereas in the worst case I take O(n2) (quadratic). Who am I?', 'Quicksort Algorithm', 'Quickhull algorithm', 'Convex hull algorithm', 'Bellman Ford Algorithm', '2', 3),
(49, 'I am an improvement over Binary Search for instances, where the values in a sorted array are uniformly distributed. Binary Search always goes to middle element to check. On the other hand I  may go to different locations according the value of key being searched. For example if the value of key is closer to the last element, I am likely to start search toward the end side. Can you guess my name?\r\n\r\n', 'Tertiary Search', 'BFS', 'DFS', 'Interpolation Search', '4', 3),
(50, 'if dynamic programming :: longest common subsequence then binary indexed tree::\r\n? \r\n', 'Count inversions in an array', ' compute union if two sets', 'get index of a the node in a binary search tree(considering that the data of bst is identical to that of BIT)', 'sort an array', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE IF NOT EXISTS `users1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
