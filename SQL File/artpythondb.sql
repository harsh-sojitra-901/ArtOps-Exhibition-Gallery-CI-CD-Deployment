-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 05:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artpythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `artapp_artist`
--

CREATE TABLE `artapp_artist` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobnum` varchar(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `edudetails` longtext NOT NULL,
  `awarddetails` longtext NOT NULL,
  `images` varchar(100) NOT NULL,
  `creationdate` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artapp_artist`
--

INSERT INTO `artapp_artist` (`id`, `name`, `mobnum`, `email`, `edudetails`, `awarddetails`, `images`, `creationdate`, `updated_at`) VALUES
(1, 'Mohan', '7894561236', 'mohan@gmail.com', 'hjghj', 'jhghj', 'media/artistprofile_pic/profile.jpg', '2024-05-24 07:26:50.238465', '2024-05-24 07:26:50.238465'),
(3, 'Rajat Mehta', '7797798797', 'rajat@gmail.com', 'Bachelor in Fine Arts', 'Lalit Kala Academy Award in 2016', 'media/artistprofile_pic/image.png', '2024-05-24 11:13:09.546790', '2024-05-24 11:13:09.546790'),
(4, 'Shanu Mishra', '4646464646', 'shanu@gmail.com', 'Master in fine arts-2017\r\nBachelor in Fine arts-2021', 'Varnashilpi Venkatappa Award', 'media/artistprofile_pic/2.jpg', '2024-05-24 11:18:03.179279', '2024-05-24 11:18:03.179279'),
(5, 'Manav Kumar', '7646479873', 'manav@gmail.com', 'Bachelor in Fine Arts', 'Kaivinai Pokkisham Award, Kala Ratna', 'media/artistprofile_pic/profile_utgaU9C.jpg', '2024-05-24 11:19:41.862428', '2024-05-27 05:05:35.227114'),
(7, 'Komal Mishra', '7797979798', 'komal@gmail.com', 'Bachelor in Fine Arts', 'None', 'media/artistprofile_pic/a2.jpg', '2024-05-31 06:49:56.467183', '2024-05-31 06:50:11.944727'),
(8, 'Rahul', '1472536541', 'rahul12@gmail.com', 'NA', 'NA', 'media/artistprofile_pic/profile.png', '2024-06-09 12:51:04.287217', '2024-06-09 12:51:04.287217');

-- --------------------------------------------------------

--
-- Table structure for table `artapp_artmedium`
--

CREATE TABLE `artapp_artmedium` (
  `id` bigint(20) NOT NULL,
  `artmedium` varchar(250) NOT NULL,
  `creationdate` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artapp_artmedium`
--

INSERT INTO `artapp_artmedium` (`id`, `artmedium`, `creationdate`, `updated_at`) VALUES
(1, 'Wood and Bronze', '2024-05-27 05:36:12.087608', '2024-05-27 05:36:12.087608'),
(2, 'Acrylic on canvas', '2024-05-27 05:36:23.125626', '2024-05-27 05:36:23.125626'),
(3, 'Resin', '2024-05-27 05:36:37.071680', '2024-05-27 05:36:37.072677'),
(4, 'Mixed Media', '2024-05-27 05:36:43.261750', '2024-05-27 05:36:43.261750'),
(5, 'Bronze', '2024-05-27 05:36:51.559626', '2024-05-27 05:36:51.559626'),
(6, 'Fibre', '2024-05-27 05:36:58.788649', '2024-05-27 05:36:58.788649'),
(7, 'Steel', '2024-05-27 05:37:05.926599', '2024-05-27 05:37:05.926599'),
(8, 'Metal', '2024-05-27 05:37:12.071477', '2024-05-27 05:37:12.071477'),
(9, 'Oil on Canvas', '2024-05-27 05:37:20.023829', '2024-05-27 05:37:20.023829'),
(10, 'Oil on Linen', '2024-05-27 05:38:17.716442', '2024-05-27 05:38:17.716442'),
(11, 'Acrylics on paper', '2024-05-27 05:38:25.305681', '2024-05-27 05:38:25.305681'),
(12, 'Hand-painted on particle wood/MDF', '2024-05-27 05:38:32.206473', '2024-05-27 05:38:32.206473'),
(15, 'Resin', '2024-05-31 06:50:43.219402', '2024-05-31 06:50:43.219402');

-- --------------------------------------------------------

--
-- Table structure for table `artapp_artproducts`
--

CREATE TABLE `artapp_artproducts` (
  `id` bigint(20) NOT NULL,
  `referencenumber` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `images` varchar(100) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `dimension` varchar(250) NOT NULL,
  `orientation` varchar(250) NOT NULL,
  `size` varchar(250) NOT NULL,
  `sellingprice` decimal(10,2) NOT NULL,
  `description` longtext NOT NULL,
  `creationdate` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `artist_id` bigint(20) DEFAULT NULL,
  `artmedium_id` bigint(20) DEFAULT NULL,
  `arttype_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artapp_artproducts`
--

INSERT INTO `artapp_artproducts` (`id`, `referencenumber`, `title`, `images`, `image1`, `image2`, `image3`, `image4`, `dimension`, `orientation`, `size`, `sellingprice`, `description`, `creationdate`, `updated_at`, `artist_id`, `artmedium_id`, `arttype_id`) VALUES
(1, 203173187, 'Peacock Paintings', 'artpics/images/918y3-QapcL._SL1500__UELFK14.jpg', 'artpics/images/918y3-QapcL._SL1500__kL08lrB.jpg', 'artpics/images/918y3-QapcL._SL1500__hOIg2Mq.jpg', 'artpics/images/918y3-QapcL._SL1500__HFOFITr.jpg', 'artpics/images/918y3-QapcL._SL1500__wNzw19Y.jpg', '76.2 cm x 45 cm', 'Potrait', 'Medium', 500.00, 'About this item\r\nQUALITY :- The artwork is printed on 310 GSM thick paper with high quality printer and vibrant colors, to give it rich look.\r\nUSE WHEREVER YOU WANT - The stylish picture frames are multi-use home and office decoration item that can also be used in hostels & study room, classrooms & corridors as well as shops & cafes. In short, if you can find a wall to nail, these framed posters will stay & convey.\r\nGREAT FOR GIFTING - These framed postersencourage everyone to live a positive life and achieve more. Its longevity and great use would give them something to remember you forever. It’s a great Motivational Gift for Girl, Men, Boy, Student, Brother & Friends.It serves as a perfect gift for your loved ones, colleagues and friends.\r\nArt print can be hung on wall. Best for Painting wall\'s.Can be Used as a Gift for Your Friends, Sweetheart, Business Partner or Family Members.\r\nWe Hope You Can Find Something That Will Make You Relaxed, Make You Think, Inspire You…Or Will Just Make Your Room Look So Much Cooler', '2024-05-27 06:55:52.271604', '2024-05-27 06:55:52.271604', NULL, 11, 4),
(2, 502435989, 'Little Cute Krishna Blue Krishna', 'artpics/images/71TLqjHg2yL._SL1000_.jpg', 'artpics/images/71rKO3bJvIL._SL1216_.jpg', 'artpics/images/51ndg64-76L._SL1000_.jpg', '', '', '41Cm X 41Cm', 'Landscape', 'Large', 600.00, 'Material: Full HD Glossy Vinyl\r\nWall Poster Covering Area: 41 CM X 41 CM.\r\nHome - Room - Bedroom Anywhere Decoration Wall Poster.\r\nPackaging: One Wall Poster with Installation manual in Hard Paper Tube.\r\nOur Sticker Poster Is a Great Choice for Wall decoration With 1000+ Designs Available.', '2024-05-27 07:05:10.863206', '2024-05-27 07:05:10.863206', 1, 2, 1),
(3, 916832548, 'Theme Meditating Lord Buddha', 'artpics/images/715pDkaRiSL._SL1500__1PQss4b.jpg', 'artpics/images/81GoFBEoswL._SL1500_.jpg', 'artpics/images/715pDkaRiSL._SL1500_.jpg', '', '', '12 X 16 Inches | 6mm Thick', 'Landscape', 'Medium', 200.00, 'About this item\r\nBUDDHA WOODEN WALL PAINTING: Enhance the spiritual ambiance of your living room, drawing room, bedroom, office, or hotel with this captivating Single Frame Religious Buddha Wall Painting. With its exquisite design and serene depiction of Buddha, this painting will bring tranquillity and inspiration to any space.\r\nPEACEFUL WALL ART FOR HOME VASTU OR GOOD LUCK: This painting serves as a powerful symbol of peace, wisdom, and inner harmony, making it an ideal addition to meditation rooms or spaces dedicated to relaxation. It also serves as a meaningful gift for loved ones, conveying a message of spiritual enlightenment and mindfulness.\r\nNO ASSEMBLY REQUIRED, AND EASY TO HANG: This Idol Buddha wood print wall art piece comes with a sturdy hanging placement on the back. You just need to open the package and it is ready to hang on anywhere.\r\n❤RELIABLE MATERIAL LIKE PINEWOOD OR BIRCHWOOD: This Buddha painting frame is made of quality wood material, which is exquisitely made, smooth in surface, neat in edges, without unnecessary burrs, clear in pattern printing, not easy to fade, beak or deform, and can be applied for a long time.\r\n100% CUSTOMER SATISFACTION: Chalk My Theme is committed to your complete satisfaction. Need help? Reach out to us to and we\'ll put a smile back on your face!', '2024-05-27 07:07:30.578547', '2024-05-27 12:18:45.554237', 3, 1, 2),
(5, 916832549, 'Theme Meditating Buddha', 'artpics/images/715QEq3k6cL._SL1500_.jpg', 'artpics/images/81GoFBEoswL._SL1500_.jpg', 'artpics/images/715pDkaRiSL._SL1500_.jpg', '', '', '12 X 16 Inches | 6mm Thick', 'Landscape', 'Medium', 200.00, 'About this item\r\nBUDDHA WOODEN WALL PAINTING: Enhance the spiritual ambiance of your living room, drawing room, bedroom, office, or hotel with this captivating Single Frame Religious Buddha Wall Painting. With its exquisite design and serene depiction of Buddha, this painting will bring tranquillity and inspiration to any space.\r\nPEACEFUL WALL ART FOR HOME VASTU OR GOOD LUCK: This painting serves as a powerful symbol of peace, wisdom, and inner harmony, making it an ideal addition to meditation rooms or spaces dedicated to relaxation. It also serves as a meaningful gift for loved ones, conveying a message of spiritual enlightenment and mindfulness.\r\nNO ASSEMBLY REQUIRED, AND EASY TO HANG: This Idol Buddha wood print wall art piece comes with a sturdy hanging placement on the back. You just need to open the package and it is ready to hang on anywhere.\r\n❤RELIABLE MATERIAL LIKE PINEWOOD OR BIRCHWOOD: This Buddha painting frame is made of quality wood material, which is exquisitely made, smooth in surface, neat in edges, without unnecessary burrs, clear in pattern printing, not easy to fade, beak or deform, and can be applied for a long time.\r\n100% CUSTOMER SATISFACTION: Chalk My Theme is committed to your complete satisfaction. Need help? Reach out to us to and we\'ll put a smile back on your face!', '2024-05-27 07:07:30.578547', '2024-05-27 07:07:30.578547', 5, 11, 3),
(6, 902435989, 'Little Cute Krishna Blue Krishna', 'artpics/images/71TLqjHg2yL._SL1000_.jpg', 'artpics/images/71rKO3bJvIL._SL1216_.jpg', 'artpics/images/51ndg64-76L._SL1000_.jpg', '', '', '41Cm X 41Cm', 'Landscape', 'Large', 600.00, 'Material: Full HD Glossy Vinyl\r\nWall Poster Covering Area: 41 CM X 41 CM.\r\nHome - Room - Bedroom Anywhere Decoration Wall Poster.\r\nPackaging: One Wall Poster with Installation manual in Hard Paper Tube.\r\nOur Sticker Poster Is a Great Choice for Wall decoration With 1000+ Designs Available.', '2024-05-27 07:05:10.863206', '2024-05-27 07:05:10.863206', 1, 2, 1),
(8, 916832546, 'Theme Meditating Buddha', 'artpics/images/715QEq3k6cL._SL1500_.jpg', 'artpics/images/81GoFBEoswL._SL1500_.jpg', 'artpics/images/715pDkaRiSL._SL1500_.jpg', '', '', '12 X 16 Inches | 6mm Thick', 'Landscape', 'Medium', 200.00, 'About this item\r\nBUDDHA WOODEN WALL PAINTING: Enhance the spiritual ambiance of your living room, drawing room, bedroom, office, or hotel with this captivating Single Frame Religious Buddha Wall Painting. With its exquisite design and serene depiction of Buddha, this painting will bring tranquillity and inspiration to any space.\r\nPEACEFUL WALL ART FOR HOME VASTU OR GOOD LUCK: This painting serves as a powerful symbol of peace, wisdom, and inner harmony, making it an ideal addition to meditation rooms or spaces dedicated to relaxation. It also serves as a meaningful gift for loved ones, conveying a message of spiritual enlightenment and mindfulness.\r\nNO ASSEMBLY REQUIRED, AND EASY TO HANG: This Idol Buddha wood print wall art piece comes with a sturdy hanging placement on the back. You just need to open the package and it is ready to hang on anywhere.\r\n❤RELIABLE MATERIAL LIKE PINEWOOD OR BIRCHWOOD: This Buddha painting frame is made of quality wood material, which is exquisitely made, smooth in surface, neat in edges, without unnecessary burrs, clear in pattern printing, not easy to fade, beak or deform, and can be applied for a long time.\r\n100% CUSTOMER SATISFACTION: Chalk My Theme is committed to your complete satisfaction. Need help? Reach out to us to and we\'ll put a smile back on your face!', '2024-05-27 07:07:30.578547', '2024-05-27 07:07:30.578547', 5, 11, 3),
(9, 303173187, 'Peacock Paintings', 'artpics/images/918y3-QapcL._SL1500__UELFK14.jpg', 'artpics/images/918y3-QapcL._SL1500__kL08lrB.jpg', 'artpics/images/918y3-QapcL._SL1500__hOIg2Mq.jpg', 'artpics/images/918y3-QapcL._SL1500__HFOFITr.jpg', 'artpics/images/918y3-QapcL._SL1500__wNzw19Y.jpg', '76.2 cm x 45 cm', 'Potrait', 'Medium', 500.00, 'About this item\r\nQUALITY :- The artwork is printed on 310 GSM thick paper with high quality printer and vibrant colors, to give it rich look.\r\nUSE WHEREVER YOU WANT - The stylish picture frames are multi-use home and office decoration item that can also be used in hostels & study room, classrooms & corridors as well as shops & cafes. In short, if you can find a wall to nail, these framed posters will stay & convey.\r\nGREAT FOR GIFTING - These framed postersencourage everyone to live a positive life and achieve more. Its longevity and great use would give them something to remember you forever. It’s a great Motivational Gift for Girl, Men, Boy, Student, Brother & Friends.It serves as a perfect gift for your loved ones, colleagues and friends.\r\nArt print can be hung on wall. Best for Painting wall\'s.Can be Used as a Gift for Your Friends, Sweetheart, Business Partner or Family Members.\r\nWe Hope You Can Find Something That Will Make You Relaxed, Make You Think, Inspire You…Or Will Just Make Your Room Look So Much Cooler', '2024-05-27 06:55:52.271604', '2024-05-27 06:55:52.271604', NULL, 11, 4),
(10, 402435989, 'Little Cute Krishna Blue Krishna', 'artpics/images/71TLqjHg2yL._SL1000_.jpg', 'artpics/images/71rKO3bJvIL._SL1216_.jpg', 'artpics/images/51ndg64-76L._SL1000_.jpg', '', '', '41Cm X 41Cm', 'Landscape', 'Large', 600.00, 'Material: Full HD Glossy Vinyl\r\nWall Poster Covering Area: 41 CM X 41 CM.\r\nHome - Room - Bedroom Anywhere Decoration Wall Poster.\r\nPackaging: One Wall Poster with Installation manual in Hard Paper Tube.\r\nOur Sticker Poster Is a Great Choice for Wall decoration With 1000+ Designs Available.', '2024-05-27 07:05:10.863206', '2024-05-27 07:05:10.863206', 1, 2, 1),
(12, 502435987, 'Little Cute Krishna Blue Krishna', 'artpics/images/71TLqjHg2yL._SL1000_.jpg', 'artpics/images/71rKO3bJvIL._SL1216_.jpg', 'artpics/images/51ndg64-76L._SL1000_.jpg', '', '', '41Cm X 41Cm', 'Landscape', 'Large', 600.00, 'Material: Full HD Glossy Vinyl\r\nWall Poster Covering Area: 41 CM X 41 CM.\r\nHome - Room - Bedroom Anywhere Decoration Wall Poster.\r\nPackaging: One Wall Poster with Installation manual in Hard Paper Tube.\r\nOur Sticker Poster Is a Great Choice for Wall decoration With 1000+ Designs Available.', '2024-05-27 07:05:10.863206', '2024-05-27 07:05:10.863206', 1, 2, 1),
(14, 654316880, 'Painting Of Numerous Causes', 'artpics/images/g2.jpg', 'artpics/images/g2_WKtAaz7.jpg', '', '', '', '12 X 16 Inches | 6mm Thick', 'Landscape', 'Medium', 200.00, 'Painting Of Numerous CausesPainting Of Numerous CausesPainting Of Numerous CausesPainting Of Numerous CausesPainting Of Numerous CausesPainting Of Numerous CausesPainting Of Numerous CausesPainting Of Numerous Causes', '2024-05-31 06:52:47.421795', '2024-05-31 06:53:07.875953', 7, 12, 6),
(15, 443620200, 'Tamatina Nature Art Canvas Painting | Moon Light | Beautiful Modern Abstract Art Unframed Painting for Home décor|Size - 48X36 Inches.q1', 'artpics/images/51Hl2NvGWXL._SY300_SX300_QL70_FMwebp_.webp', 'artpics/images/818c-RntYOL._SX679_.jpg', 'artpics/images/713AN26ZNCL._SX679_.jpg', 'artpics/images/71jE7y7ytuL._SX679_.jpg', '', '121.9L x 91.4W Centimeters', 'Landscape', 'Large', 4500.00, 'The frame-less canvas paintings are made using the pure cotton canvas and are absolutely free from the use of any plastic or PVC for a thoughtful approach and enhanced look.\r\n\r\nItem model number ‏ : ‎ 1285CGT47X35\r\nCountry of Origin ‏ : ‎ India\r\nItem Weight ‏ : ‎ 300 g\r\nItem Dimensions LxWxH ‏ : ‎ 48 x 36 Centimeters\r\nNet Quantity ‏ : ‎ 1.00 count\r\nIncluded Components ‏ : ‎ 1 Unframed gorgeous Canvas Painting', '2024-06-09 12:52:38.420667', '2024-06-09 12:52:38.420667', 8, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `artapp_arttype`
--

CREATE TABLE `artapp_arttype` (
  `id` bigint(20) NOT NULL,
  `arttype` varchar(250) NOT NULL,
  `creationdate` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artapp_arttype`
--

INSERT INTO `artapp_arttype` (`id`, `arttype`, `creationdate`, `updated_at`) VALUES
(1, 'Sculptures', '2024-05-27 05:33:21.547647', '2024-05-27 05:33:21.547647'),
(2, 'Serigraphs', '2024-05-27 05:33:48.927210', '2024-05-27 05:33:48.927210'),
(3, 'Prints', '2024-05-27 05:33:55.465883', '2024-05-27 05:33:55.465883'),
(4, 'Painting', '2024-05-27 05:34:01.753385', '2024-05-27 05:34:01.753385'),
(5, 'Street Art', '2024-05-27 05:34:11.923584', '2024-05-27 05:34:11.923584'),
(6, 'Visual art', '2024-05-27 05:34:19.867809', '2024-05-27 05:34:19.867809'),
(7, 'Conceptual art', '2024-05-27 05:34:29.334606', '2024-05-27 05:34:29.334606'),
(14, 'Street Art', '2024-05-31 06:50:28.062821', '2024-05-31 06:50:28.062821');

-- --------------------------------------------------------

--
-- Table structure for table `artapp_customuser`
--

CREATE TABLE `artapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artapp_customuser`
--

INSERT INTO `artapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$390000$6bnEsdErKvviZLmz366cud$n0AOCi/oxrHoPqPiHXpsjxeHC67szuyikED7QnF00kE=', '2024-06-09 14:44:30.416825', 1, 'admin', 'Admin', 'User', 'admin@gmail.com', 1, 1, '2024-05-24 06:13:41.055135', '1', 'media/profile_pic/g6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artapp_customuser_groups`
--

CREATE TABLE `artapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artapp_customuser_user_permissions`
--

CREATE TABLE `artapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artapp_enquiry`
--

CREATE TABLE `artapp_enquiry` (
  `id` bigint(20) NOT NULL,
  `enquirynumber` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `prod_id_id` bigint(20) DEFAULT NULL,
  `enquiry_date` datetime(6) NOT NULL,
  `message` longtext NOT NULL,
  `mobnum` varchar(15) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `remark_date` datetime(6) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artapp_enquiry`
--

INSERT INTO `artapp_enquiry` (`id`, `enquirynumber`, `fullname`, `email`, `prod_id_id`, `enquiry_date`, `message`, `mobnum`, `remark`, `remark_date`, `status`) VALUES
(1, 514586611, 'Rakesh Sharma', 'rakesh@gmail.com', 1, '2024-05-29 06:31:35.531261', 'uiyioi', '7878978978', '', '2024-05-29 06:31:35.532259', ''),
(2, 514586669, 'Test', 'test@gmail.com', 3, '2024-05-29 06:35:15.277208', 'yuy', '7895444444', 'tyuytjryuikry', '2024-05-30 08:44:23.560676', 'Answered'),
(3, 660093123, 'Ram', 'ram@gmail.com', 1, '2024-05-29 06:48:30.036161', 'dfgrtgy', '4545412454', 'Ok. Thanks for enquiry', '2024-05-30 08:47:02.640018', 'Answered'),
(4, 776606007, 'Rakesh Mishra', 'raj@gmail.com', 1, '2024-05-29 06:55:10.956310', 'fsdgfdfhyhjuyk', '4646464646', '', '2024-05-29 06:55:10.958305', ''),
(5, 367506747, 'Mohan Kumar', 'mohan@gmail.com', 2, '2024-05-29 06:59:30.092249', 'ljjkckjksdfcsdfg', '7778787878', '', '2024-05-29 06:59:30.093247', ''),
(6, 778176480, 'tina', 'tina@gmail.com', 1, '2024-05-29 13:25:24.935275', 'hi', '4546456765', '', '2024-05-29 13:25:24.937268', ''),
(7, 603524619, 'Test Test123', 'test@gmail.com', 1, '2024-05-29 13:27:04.059319', 'tyr', '7894561236', '', '2024-05-29 13:27:04.059319', ''),
(8, 351325773, 'Teena Khanna', 'teena@gmail.com', 9, '2024-05-31 11:11:46.444186', 'Test Sample', '4644646546', '', '2024-05-31 11:11:46.444186', ''),
(9, 940049205, 'Amit', 'Amitk@gmail.com', 15, '2024-06-09 12:53:39.636693', 'I wan to buy this', '1425364445', 'Test enquiry\r\n', '2024-06-09 12:54:00.515327', 'Answered');

-- --------------------------------------------------------

--
-- Table structure for table `artapp_page`
--

CREATE TABLE `artapp_page` (
  `id` bigint(20) NOT NULL,
  `pagetitle` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `aboutus` longtext NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobilenumber` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artapp_page`
--

INSERT INTO `artapp_page` (`id`, `pagetitle`, `address`, `aboutus`, `email`, `mobilenumber`, `created_at`, `updated_at`) VALUES
(1, 'Website Details', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'An art  is an exhibition space to display and sell artworks. As a result, the art gallery is a commercial enterprise working with a portfolio of artists. The gallery acts as the dealer representing, supporting, and distributing the artworks by the artists in question.', 'support@gmail.com', 1234567899, '2024-05-27 14:26:18.056153', '2024-05-31 06:53:29.464841');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add artist', 7, 'add_artist'),
(26, 'Can change artist', 7, 'change_artist'),
(27, 'Can delete artist', 7, 'delete_artist'),
(28, 'Can view artist', 7, 'view_artist'),
(29, 'Can add artmedium', 8, 'add_artmedium'),
(30, 'Can change artmedium', 8, 'change_artmedium'),
(31, 'Can delete artmedium', 8, 'delete_artmedium'),
(32, 'Can view artmedium', 8, 'view_artmedium'),
(33, 'Can add arttype', 9, 'add_arttype'),
(34, 'Can change arttype', 9, 'change_arttype'),
(35, 'Can delete arttype', 9, 'delete_arttype'),
(36, 'Can view arttype', 9, 'view_arttype'),
(37, 'Can add artproducts', 10, 'add_artproducts'),
(38, 'Can change artproducts', 10, 'change_artproducts'),
(39, 'Can delete artproducts', 10, 'delete_artproducts'),
(40, 'Can view artproducts', 10, 'view_artproducts'),
(41, 'Can add page', 11, 'add_page'),
(42, 'Can change page', 11, 'change_page'),
(43, 'Can delete page', 11, 'delete_page'),
(44, 'Can view page', 11, 'view_page'),
(45, 'Can add enquiry', 12, 'add_enquiry'),
(46, 'Can change enquiry', 12, 'change_enquiry'),
(47, 'Can delete enquiry', 12, 'delete_enquiry'),
(48, 'Can view enquiry', 12, 'view_enquiry');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-27 14:26:18.060140', '1', 'Page object (1)', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'artapp', 'artist'),
(8, 'artapp', 'artmedium'),
(10, 'artapp', 'artproducts'),
(9, 'artapp', 'arttype'),
(6, 'artapp', 'customuser'),
(12, 'artapp', 'enquiry'),
(11, 'artapp', 'page'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-24 05:59:47.145094'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-05-24 05:59:47.216819'),
(3, 'auth', '0001_initial', '2024-05-24 05:59:47.442731'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-05-24 05:59:47.506620'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-05-24 05:59:47.517591'),
(6, 'auth', '0004_alter_user_username_opts', '2024-05-24 05:59:47.525569'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-05-24 05:59:47.535543'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-05-24 05:59:47.538002'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-05-24 05:59:47.545980'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-05-24 05:59:47.552891'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-05-24 05:59:47.561176'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-05-24 05:59:47.573922'),
(13, 'auth', '0011_update_proxy_permissions', '2024-05-24 05:59:47.581900'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-05-24 05:59:47.589273'),
(15, 'artapp', '0001_initial', '2024-05-24 05:59:47.858526'),
(16, 'admin', '0001_initial', '2024-05-24 05:59:47.974446'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-05-24 05:59:47.997384'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-24 05:59:48.007392'),
(19, 'sessions', '0001_initial', '2024-05-24 05:59:48.043185'),
(20, 'artapp', '0002_artist', '2024-05-24 06:49:47.577223'),
(21, 'artapp', '0003_alter_artist_email_alter_artist_mobnum', '2024-05-24 07:09:44.427954'),
(22, 'artapp', '0004_artmedium_arttype', '2024-05-27 05:12:47.152788'),
(23, 'artapp', '0005_artproducts', '2024-05-27 06:55:41.634502'),
(24, 'artapp', '0006_page', '2024-05-27 12:24:06.410672'),
(25, 'artapp', '0007_enquiry', '2024-05-29 05:47:45.502068'),
(26, 'artapp', '0008_enquiry_enquiry_date_enquiry_message_enquiry_mobnum_and_more', '2024-05-29 06:11:21.827718');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('a92cqpih8gvcln1bbpm1xvf2iupyl62e', '.eJxVjDEOwjAMRe-SGUVO4jiFkZ0zRE5saAG1UtNOiLtDpQ6w_vfef5nM69LntemcBzEn48zhdytcHzpuQO483iZbp3GZh2I3xe602csk-jzv7t9Bz63_1ig1kPckIQJxosRdhOIVnVdQBNIjUazOFcGOEdGlApHkqqEL1YN5fwC6fzbO:1sD0Lr:vZYsKCm7SB-p7_RkcyqXohttzF4OwHC5eISVbZoepEc', '2024-06-14 11:23:15.072360'),
('c0drliz66t8lreo1w5flnsklnifxemkx', '.eJxVjEEOwiAQRe_C2hBgWhhduvcMBJhBqgaS0q6Md7dNutDte-__t_BhXYpfO89-InERWpx-WQzpyXUX9Aj13mRqdZmnKPdEHrbLWyN-XY_276CEXrY1ukzZ8OCUMYBKp8jKMhm0ERDtMKIlJocjBKTkmCDrCHmjYM5ss_h8AdtJN_M:1sBbHt:pcNKjLyS-S5F3Q1-5sBysM8fRW4zpq266B2fqB3slK8', '2024-06-10 14:25:21.859658');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artapp_artist`
--
ALTER TABLE `artapp_artist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artapp_artist_email_99861c6d_uniq` (`email`),
  ADD UNIQUE KEY `artapp_artist_mobnum_84157bfe_uniq` (`mobnum`);

--
-- Indexes for table `artapp_artmedium`
--
ALTER TABLE `artapp_artmedium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artapp_artproducts`
--
ALTER TABLE `artapp_artproducts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referencenumber` (`referencenumber`),
  ADD KEY `artapp_artproducts_artist_id_e7900092_fk_artapp_artist_id` (`artist_id`),
  ADD KEY `artapp_artproducts_artmedium_id_0fd51877_fk_artapp_artmedium_id` (`artmedium_id`),
  ADD KEY `artapp_artproducts_arttype_id_eeb589d7_fk_artapp_arttype_id` (`arttype_id`);

--
-- Indexes for table `artapp_arttype`
--
ALTER TABLE `artapp_arttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artapp_customuser`
--
ALTER TABLE `artapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `artapp_customuser_groups`
--
ALTER TABLE `artapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artapp_customuser_groups_customuser_id_group_id_be06352f_uniq` (`customuser_id`,`group_id`),
  ADD KEY `artapp_customuser_groups_group_id_e1150d8d_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `artapp_customuser_user_permissions`
--
ALTER TABLE `artapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `artapp_customuser_user_p_customuser_id_permission_b07bd8c8_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `artapp_customuser_us_permission_id_047ff10e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `artapp_enquiry`
--
ALTER TABLE `artapp_enquiry`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enquirynumber` (`enquirynumber`),
  ADD KEY `artapp_enquiry_prod_id_id_d2d6eea6_fk_artapp_artproducts_id` (`prod_id_id`);

--
-- Indexes for table `artapp_page`
--
ALTER TABLE `artapp_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_artapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artapp_artist`
--
ALTER TABLE `artapp_artist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `artapp_artmedium`
--
ALTER TABLE `artapp_artmedium`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `artapp_artproducts`
--
ALTER TABLE `artapp_artproducts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `artapp_arttype`
--
ALTER TABLE `artapp_arttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `artapp_customuser`
--
ALTER TABLE `artapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artapp_customuser_groups`
--
ALTER TABLE `artapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artapp_customuser_user_permissions`
--
ALTER TABLE `artapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artapp_enquiry`
--
ALTER TABLE `artapp_enquiry`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `artapp_page`
--
ALTER TABLE `artapp_page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artapp_artproducts`
--
ALTER TABLE `artapp_artproducts`
  ADD CONSTRAINT `artapp_artproducts_artist_id_e7900092_fk_artapp_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artapp_artist` (`id`),
  ADD CONSTRAINT `artapp_artproducts_artmedium_id_0fd51877_fk_artapp_artmedium_id` FOREIGN KEY (`artmedium_id`) REFERENCES `artapp_artmedium` (`id`),
  ADD CONSTRAINT `artapp_artproducts_arttype_id_eeb589d7_fk_artapp_arttype_id` FOREIGN KEY (`arttype_id`) REFERENCES `artapp_arttype` (`id`);

--
-- Constraints for table `artapp_customuser_groups`
--
ALTER TABLE `artapp_customuser_groups`
  ADD CONSTRAINT `artapp_customuser_gr_customuser_id_732449cf_fk_artapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `artapp_customuser` (`id`),
  ADD CONSTRAINT `artapp_customuser_groups_group_id_e1150d8d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `artapp_customuser_user_permissions`
--
ALTER TABLE `artapp_customuser_user_permissions`
  ADD CONSTRAINT `artapp_customuser_us_customuser_id_1b77a50b_fk_artapp_cu` FOREIGN KEY (`customuser_id`) REFERENCES `artapp_customuser` (`id`),
  ADD CONSTRAINT `artapp_customuser_us_permission_id_047ff10e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `artapp_enquiry`
--
ALTER TABLE `artapp_enquiry`
  ADD CONSTRAINT `artapp_enquiry_prod_id_id_d2d6eea6_fk_artapp_artproducts_id` FOREIGN KEY (`prod_id_id`) REFERENCES `artapp_artproducts` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_artapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `artapp_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
