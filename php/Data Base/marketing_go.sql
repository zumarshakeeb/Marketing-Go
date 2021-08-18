-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2021 at 01:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketing go`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(0, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories`, `status`) VALUES
(28, 'Food', 1),
(29, 'Clothing', 1),
(30, 'Travel', 1),
(34, 'Blogger', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(10, 'User', 'User@gmail.com', '03242345462', 'Hello Checking 123...', '2021-07-15 08:48:45');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `added_on`) VALUES
(23, 0, 'Uog Sialkot Sub Campus', 'Sialkot', 51310, 'After Pay', 5000, 'Success', 5, '2021-07-16 01:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `qty`, `price`) VALUES
(25, 23, 38, 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Pending'),
(2, 'Processing'),
(3, 'Done'),
(4, 'Canceled'),
(5, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(2000) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categories_id`, `name`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(22, 29, 'Jannat Mirza', 10000, 5, '845770788_Jannat-Mirza-Snapchat-Username.jpg', 'Jannat Mirza is the no. 1 Pakistani female TikToker with a huge fan following of 10.9 million. She is famous for her looks & personality.', 'Jannat Mirza, who hails from Faisalabad, is following only 16 people on TikTok. Mirza has also amassed over two million followers on Instagram where she often shares her TikTok videos. Meanwhile, she recently made her debut in the mainstream entertainment industry when she appeared in a music video', 1, 'Jannat Mirza', 'Jannat Mirza', 'Jannat Mirza', 1),
(23, 28, 'Alishbah Anjum', 5000, 5, '695811029_Alishba-Anjum-Snapchat-ID.jpg', '1.5m Followers, 80 Following, 775 Posts on instagram', 'Alishba Anjum is a stunning Pakistani Tik Toker known for making videos on ‘Tik Tok.’ She aspired to become a Pakistani actress. Her stunning face and astounding expressions will make her a big star one day. Her sister Jannat Mirza is likewise talented Tok Toker. This article has all the information about Alishba, including Alishba Anjum Biography and Alishba Anjum Family.', 0, 'Alishbah Anjum', 'Alishbah Anjum', 'Alishbah Anjum', 1),
(24, 30, 'Nousheen Syed', 5000, 10, '975182829_TikToker-Dolly-Snapchat-Userame.jpg', 'Nousheen Syed better known as Dolly belongs from Lahore and runs her own beauty salon. She has 6.5 million followers on her official tiktok account.', 'Dolly Fashion Icon (Dolly Leo) is a Pakistani social media star who has earned popularity through the lip-syncing app, TikTok. With 6.5+ followers on TikTok, Dolly Fashion Icon is considered as one of the popular TikTok stars in Pakistan.', 0, 'Dolly', 'Dolly', 'Dolly', 1),
(25, 29, 'Minahil Malik', 7000, 5, '271266149_Minahil-Malik-Snapchat-ID.jpg', '849k Followers, 74 Following on Instagram', 'Minahil Malik is another Pakistani female tiktoker with a fan following of 5.7 million.', 0, 'Minahil Malik', 'Minahil Malik', 'Minahil Malik', 1),
(26, 30, 'Zeba Gul', 5000, 10, '498167032_zibagul-snapchat-id.jpg', 'Ziba Gul Tiktok is based on TikTok videos in which provides funny, romantic, comedy & travelling', 'Zeba Gul belongs to a Pathan family and best known for her beautiful looks & pure Pashtoon way of speaking. She has 7.1 million followers on her official TikTok account.', 0, 'Zeba Gul', 'Zeba Gul', 'Zeba Gul', 1),
(27, 28, 'Romaisa Khan', 5000, 5, '977741320_Romaisa-Khan-snapchat-ID.jpg', 'Romaisa Khan on Instagram', 'Romaisa Khan is another Pakistani Female tiktoker with 3.6 million followers family. She has also collaborated with several commercials.', 0, 'Romaisa Khan', 'Romaisa Khan', 'Romaisa Khan', 1),
(28, 29, 'Areeka Haq', 10000, 5, '682029972_Areeka-Haq-Snapchat-ID.jpg', '2.4m Followers, 26 Following on instagram', 'Areeka Haq is one of the most famous Pakistani tiktokers. There are almost 7.2 million followers on her official tik tok account.', 0, 'Areeka Haq', 'Areeka Haq', 'Areeka Haq', 1),
(29, 28, 'Sehar Hayyat', 10000, 5, '735573197_Sehar-Hayat-Snapchat-ID.jpg', '1.3m Followers, 146 Following on Instagram', 'Sehar Hayyat is one of the most innocent Pakistani female tiktokers with a huge fan following of 6.4 million. Hayyat has also collaborated with many commercials after gaining popularity through tiktok.', 0, 'Sehar Hayyat', 'Sehar Hayyat', 'Sehar Hayyat', 1),
(30, 30, 'Hoor Mahaveera', 10000, 5, '424100050_Hoor-Maheveera-Snapchat-ID.jpg', '342.2M Likes. 12.9M Fans', 'Hoor Mahaveera is one of the most charming personalities of Pakistani tiktokers. She is best known for her facial expressions during her tik tok videos. She recently completed her 8 million on tiktok account.', 1, 'Hoor Mahaveera', 'Hoor Mahaveera', 'Hoor Mahaveera', 1),
(31, 29, 'Zulqarnain Sikandar', 10000, 5, '571583794_Zulqurnain-Snapchat-ID.jpg', '937k Followers, 134 Following on Instagram', 'Zulqarnain Sikandar is the top Pakistani male tiktoker with a huge fan following of 9.6 million. He is best known for his funny videos and facial expressions', 1, 'Zulqarnain Sikandar', 'Zulqarnain Sikandar', 'Zulqarnain Sikandar', 1),
(32, 28, 'Nadeem Mubarak', 5000, 10, '173973430_Nadeem-Naniwala.jpg', '823k Followers, 91 Following on Instagram', 'Nadeen Mubarak best known as Nadeem Nani wala is a Pakistani tiktoker who lives in the United Kingdom. He is continuously engaged with Pakistani tiktokers and arranges different events for them. Naniwala has a fan following of 6.7 million on his official tiktok account.', 0, 'Nadeem Mubarak', 'Nadeem Mubarak', 'Nadeem Mubarak', 1),
(33, 30, 'Ali Khan', 5000, 5, '349367414_Ali-Khan-Snapchat-ID-1.jpg', 'Ali Khan best known as Ali Haiderabadi got instant popularity from tik tok through his energetic walking style. Ali has a 11 million fan following on his official tiktok account.', 'Pakistan\'s leading TikTok star Ali Khan Hyderabadi, from Hyderabad Sindh, has managed to make a name for himself on the short video sharing app TikTok. The number of followers on Ali Khan Hyderabadi\'s TiKTok account has reached 11 million.', 0, 'Ali Khan', 'Ali Khan', 'Ali Khan', 1),
(34, 29, 'Usman Asim', 5000, 5, '140759887_Molvi-Usman-Snapchat-ID.jpg', '115k Followers, 46 Following on Instagram', 'Usman Asim is another famous Pakistani Tiktoker better known as famous molvi. He always prefers to use this hashtag instead of his name. He is famous for his funny tik tok videos. He is the top male tiktoker after Zulqarnain Sikandar with 8.8 million followers.', 0, 'Molvi', 'Molvi', 'Molvi', 1),
(35, 28, 'Umer Butt', 5000, 5, '672093757_Umer-Butt-Snapchat-ID.jpg', '709k Followers, 104 Following on Instagram', 'Umer Fayyaz Butt is the younger  brother of famous tiktoker Ali Fayyaz Butt. Umer has 2.9 million followers on his tik tok account.', 0, 'Umer butt', 'Umer butt', 'Umer butt', 1),
(36, 30, 'Harris Ali', 5000, 5, '242509743_Haris-Ali-Snapchat-ID.jpg', '252.3M Likes. 6M Fans on tiktok', 'Harris Ali is another Paksitani male tiktoker. He is considered a prime influencer and Harris has also collaborated with many ads. He just completed his 6 million on his TikTok account.', 0, 'Harris Ali', 'Harris Ali', 'Harris Ali', 1),
(37, 29, 'Mujtaba Lakhani', 5000, 10, '570156283_mujtaba-lakhani-snapchat-ID.jpg', '451k Followers, 61 Following on instagram', 'Mujtaba Lakhani is another famous Pakistani Male tiktoker. He has 4.1 million followers on his TikTok account.', 0, 'Mujtaba Lakhani', 'Mujtaba Lakhani', 'Mujtaba Lakhani', 1),
(38, 28, 'Shahbaz Sher', 5000, 5, '445825027_shahbaz-sher-snapchat-id.jpg', '51k Followers, 65 Following on Instagram', 'Shahbaz Sher is another famous Pakistani Male tiktoker, who is famous for his men’s hair salon. He recently completed his 4 million on his official TikTok account.', 0, 'Shahbaz Sher', 'Shahbaz Sher', 'Shahbaz Sher', 1),
(39, 30, 'Ali Fayyaz Butt', 5000, 5, '887954333_Ali-Fayyaz-Butt-snapchat-id.jpg', 'Ali Fayyaz Butt is a famous TikTok star, He was born on 14 Jan 1995 at Faisalabad, Pakistan. His brother is also a famous TikTok star named \"Umer Fayyaz Butt\".', 'Tiktok stars Umer Fayyaz Butt and Ali Fayyaz Butt are famous as “Butt Brothers” on Social Media. Ali is the elder brother of Umer with 5.2 million fans following his official tiktok account.', 1, 'Ali Butt', 'Ali Butt', 'Ali Butt', 1),
(40, 29, 'Kanwal Aftab', 10000, 10, '338163911_Kanwal-Aftab-Snapchat-ID.jpg', '1.6m Followers, 68 Following on Instagram', 'Kanwal Aftab is best known for her innocent looks in TikTok videos. She has a simple and graceful personality and now she is going to complete her 10 million on tiktok. After Jannat Mirza she is the only TikTok star who has a huge fan following on TikTok.', 0, 'Kanwal Aftab', 'Kanwal Aftab', 'Kanwal Aftab', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(0, 'umar', 'admin', 'umar@gmail.com', '03316265447', '2021-07-16 01:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `added_on`) VALUES
(26, 0, 31, '2021-07-16 01:27:10'),
(27, 0, 30, '2021-07-16 01:27:12'),
(28, 0, 30, '2021-07-16 01:27:12'),
(29, 0, 22, '2021-07-16 01:27:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
