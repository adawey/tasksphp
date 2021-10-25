-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2021 at 11:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_adawe`
--

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

CREATE TABLE `adress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `street` varchar(20) NOT NULL,
  `bulding` varchar(20) NOT NULL,
  `flat` varchar(20) NOT NULL,
  `floor` varchar(20) NOT NULL,
  `notes` varchar(25) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `users_address` bigint(20) UNSIGNED NOT NULL,
  `regions_address` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adress`
--

INSERT INTO `adress` (`id`, `street`, `bulding`, `flat`, `floor`, `notes`, `created_at`, `updated_at`, `users_address`, `regions_address`) VALUES
(1, 'hadayq', '1', '2', '3', NULL, '2021-10-23 23:21:04', '2021-10-23 23:21:04', 24, 4),
(2, 'khaled bn elwaleed', '2', '5', '6', NULL, '2021-10-23 23:21:04', '2021-10-23 23:21:04', 27, 3),
(3, 'abaselaad', '3', '2', '4', NULL, '2021-10-23 23:21:04', '2021-10-23 23:21:04', 28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(20) NOT NULL,
  `name_ar` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name_en`, `name_ar`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'nokia', 'نوكيا', '1', NULL, '2021-10-20 23:33:25', '2021-10-20 23:33:25'),
(2, 'sony', 'سونى', '1', NULL, '2021-10-20 23:33:25', '2021-10-20 23:33:25'),
(3, 'apple', 'ابل', '1', NULL, '2021-10-20 23:33:25', '2021-10-20 23:33:25'),
(5, 'dell', 'ديل', '1', NULL, '2021-10-20 23:35:25', '2021-10-20 23:35:25'),
(7, 'kemei', 'كيمي', '1', NULL, '2021-10-20 23:35:25', '2021-10-20 23:35:25'),
(9, 'jbl', 'جي بي ال ', '1', NULL, '2021-10-22 09:24:42', '2021-10-22 09:24:42'),
(10, 'puma', 'بوما', '1', NULL, '2021-10-22 09:24:42', '2021-10-22 09:24:42'),
(11, 'casio', 'كاسيو', '1', NULL, '2021-10-22 09:24:42', '2021-10-22 09:24:42'),
(12, 'opoo', 'اوبوو', '1', NULL, '2021-10-24 13:57:39', '2021-10-24 13:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(20) NOT NULL,
  `name_en` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_ar`, `name_en`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'الكترونيات ', 'electronic', '', '1', '2021-10-20 23:25:16', '2021-10-20 23:25:16'),
(2, 'مطبخ', 'kitchen', '', '1', '2021-10-20 23:26:18', '2021-10-20 23:26:18'),
(4, 'ملابس رجالى ', 'men-clothes', '', '1', '2021-10-22 09:28:57', '2021-10-22 09:28:57'),
(5, 'اطفال والعاب', 'toys,childs', '', NULL, '2021-10-22 09:28:57', '2021-10-22 09:28:57'),
(6, 'سوبر ماركت', 'super market', '', '1', '2021-10-22 09:28:57', '2021-10-22 09:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(20) NOT NULL,
  `name_ar` varchar(20) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_en`, `name_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cairo', 'القاهره', '1', '2021-10-23 23:17:45', '2021-10-23 23:17:45'),
(2, 'monofia', 'المنوفيه', '1', '2021-10-23 23:17:45', '2021-10-23 23:17:45'),
(3, 'alex', 'الاسكندرية', '1', '2021-10-23 23:17:45', '2021-10-23 23:17:45'),
(4, 'giza', 'الجيزه', '1', '2021-10-23 23:17:45', '2021-10-23 23:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `copon_products`
--

CREATE TABLE `copon_products` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `discount` varchar(20) NOT NULL,
  `discount_type` varchar(20) NOT NULL,
  `maxUserUsage` int(20) NOT NULL,
  `MaxUserCount` int(20) NOT NULL,
  `miniorderprice` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coupons_users`
--

CREATE TABLE `coupons_users` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tittle_ar` varchar(20) NOT NULL,
  `tittle_en` varchar(20) NOT NULL,
  `desc_en` text NOT NULL,
  `desc_ar` text NOT NULL,
  `discount` int(10) NOT NULL,
  `discount_type` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1') NOT NULL,
  `delever_date` datetime NOT NULL,
  `orders_address` bigint(20) UNSIGNED NOT NULL,
  `order_coupon` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `delever_date`, `orders_address`, `order_coupon`, `created_at`, `updated_at`) VALUES
(2, '1', '2021-10-28 01:22:34', 3, NULL, '2021-10-23 23:23:33', '2021-10-23 23:23:33'),
(3, '1', '2021-10-29 01:22:34', 1, NULL, '2021-10-23 23:23:33', '2021-10-23 23:23:33'),
(4, '1', '2021-10-24 01:22:34', 2, NULL, '2021-10-23 23:23:33', '2021-10-23 23:23:33'),
(5, '1', '2021-10-30 01:23:07', 3, NULL, '2021-10-23 23:23:33', '2021-10-23 23:23:33'),
(6, '1', '2021-10-29 01:23:18', 1, NULL, '2021-10-23 23:23:33', '2021-10-23 23:23:33'),
(7, '1', '2021-10-29 01:36:16', 2, NULL, '2021-10-23 23:36:41', '2021-10-23 23:36:41'),
(8, '1', '2021-10-29 01:36:16', 1, NULL, '2021-10-23 23:36:41', '2021-10-23 23:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(10) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`product_id`, `order_id`, `price`, `quantity`) VALUES
(42, 2, 5222, 2),
(43, 3, 6000, 1),
(47, 6, 2500, 2),
(41, 6, 5000, 7),
(40, 5, 6000, 5),
(42, 7, 1000, 2),
(42, 7, 454, 1),
(42, 8, 2333, 8);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) NOT NULL,
  `name_ar` varchar(50) NOT NULL,
  `price` float(7,2) NOT NULL,
  `image` varchar(1000) DEFAULT 'default.png',
  `desc_ar` text NOT NULL,
  `desc_en` text NOT NULL,
  `quantity` smallint(4) NOT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_en`, `name_ar`, `price`, `image`, `desc_ar`, `desc_en`, `quantity`, `status`, `subcategory_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(9, 'n20', 'نوكيا 20 ', 1000.00, 'nokia20.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\n                                        Eaque, obcaecati. Illum odio ab aut facere nostrum, error \r\n                                        unde dolorem tempora ipsum hic labore quaerat quibusdam asperiores sequi reiciendis ratione repudiandae?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \n                                        Eaque, obcaecati. Illum odio ab aut facere nostrum, error \n                                        unde dolorem tempora ipsum hic labore quaerat quibusdam asperiores sequi reiciendis ratione repudiandae?', 20, '1', 1, 1, '2021-10-18 23:39:17', '2021-10-20 23:39:17'),
(10, 'sonyz3', 'سونى z3', 2500.00, 'sonyz3.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\n                                        Eaque, obcaecati. Illum odio ab aut facere nostrum, error \r\n                                        unde dolorem tempora ipsum hic labore quaerat quibusdam asperiores sequi reiciendis ratione repudiandae?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\n                                        Eaque, obcaecati. Illum odio ab aut facere nostrum, error \r\n                                        unde dolorem tempora ipsum hic labore quaerat quibusdam asperiores sequi reiciendis ratione repudiandae?', 10, '1', 1, 2, '2021-10-20 23:39:17', '2021-10-20 23:39:17'),
(11, 'spr_mashin', 'اله صنع القهوه', 5000.00, 'cofee.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\n                                        Eaque, obcaecati. Illum odio ab aut facere nostrum, error \r\n                                        unde dolorem tempora ipsum hic labore quaerat quibusdam asperiores sequi reiciendis ratione repudiandae?', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\n                                        Eaque, obcaecati. Illum odio ab aut facere nostrum, error \r\n                                        unde dolorem tempora ipsum hic labore quaerat quibusdam asperiores sequi reiciendis ratione repudiandae?', 3, '1', 3, NULL, '2021-10-20 23:39:17', '2021-10-20 23:39:17'),
(40, 'L24e-30', 'L24e-30', 3000.00, 'shasha.jpg', 'شاشة عرض L24e-30 بدقة كاملة الوضوح مقاس 23.8 بوصة رافين بلاكشاشة عرض L24e-30 بدقة كاملة الوضوح مقاس 23.8 بوصة رافين بلاكشاشة عرض L24e-30 بدقة كاملة الوضوح مقاس 23.8 بوصة رافين بلاكشاشة عرض L24e-30 بدقة كاملة الوضوح مقاس 23.8 بوصة رافين بلاك', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\nLorem ipsum dolor sit amet consectetur adipisicing elit. \r\nLorem ipsum dolor sit amet consectetur adipisicing elit. \r\nLorem ipsum dolor sit amet consectetur adipisicing elit. \r\n', 5, '1', 4, 5, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(41, 'laptop G3 15-3500', 'لابتوب G3 15-3500', 6000.00, 'lapdell.jpg', 'لابتوب G3 15-3500 للألعاب - بمعالج i5-10300H وذاكرة رام 8 جيجابايت ومحرك أقراص SSD سعة 512 جيجابايت بمنافذ PCIe وNVMe وبطاقة رسومات GTX 1650 Ti بسعة 4 جيجابايت وشاشة IPS مقاس 15.6 بوصة بدقة كاملة الوضوح (1980x1080) بمعدل تحديث 120 هرتز ولوحة مفاتيح باللغة الإنجليزية بإضاءة خلفية أسود', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\n                                        Eaque, obcaecati. Illum odio ab aut facere nostrum, error \r\n                                        unde dolorem tempora ipsum hic labore quaerat quibusdam asperiores sequi reiciendis ratione repudiandae?', 3, '1', 2, 5, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(42, 'apple airpods', 'سماعات أذن آيربودز برو لاسلكية أبيض', 2000.00, 'air.jpg', 'تصميم يتميز بمشغل مصمم خصوصاً بسعة كبيرة وتشويش منخفض يوفر جهيراً قوياً. وينتج مضخم النطاق الديناميكي عالي الكفاءة صوتاً نقياً وواضحاً بشكل مذهل ويعمل على إطالة عمر البطارية أيضاً. وتعمل ميزة موازنة الصوت المتكيفة تلقائياً على ضبط الموسيقى لتناسب شكل أذنك للحصول على تجربة استماع غنية ومتسقة.\r\nتوفر آيربودز برو ملاءمة أكثر قابلية للتخصيص مع ثلاثة أحجام من أطراف السيليكون المرنة للاختيار بينها. مع وجود مستدق داخلي، فإنها تتوافق مع شكل أذنك، مما يؤمن آيربودز برو في مكانه ويخلق عازلاً استثنائياً لإلغاء الضوضاء بشكل فائق.\r\nقم بالتبديل إلى وضع الشفافية، وسيسمح آيربودز برو للصوت الخارجي بالدخول، مما يتيح لك سماع ما يدور حولك. تمكّن الميكروفونات الموجهة للخارج والداخل آيربودز برو من إلغاء تأثير عزل الصوت لحواف السيليكون بحيث يبدو الوضع طبيعياً كما هو الحال عندما تتحدث مع الأشخاص من حولك.\r\nسماعات الرأس المذهلة المانعة للضوضاء الخفيفة، تعزل آيربودز برو بيئتك حتى تتمكن من التركيز على ما تستمع إليه، تعمل سماعات آيربودز برو بزوجٍ من الميكروفونات، واحد مواجه للخارج وآخر مواجه للداخل من أجل إنشاء خاصية إلغاء ضوضاء فائقة. من خلال التكيف المستمر مع هندسة أذنك وملاءمة أطراف الأذن، يعمل وضع إلغاء الضوضاء النشط على إسكات العالم حولك لإبقائك على اتصالٍ تامٍ بالموسيقى والبودكاست والمكالمات.\r\nتم تصميم آيربودز برو لتوفير ميزة إلغاء الضوضاء النشط للحصول على صوت غامر ووضع الشفافية حتى تتمكن من سماع ما يحيط بك، مع تناسب قابل للتخصيص لراحة طوال اليوم. تماماً مثل آيربودز، تتصل آيربودز برو بطريقة سحرية بجهاز آيفون أو ساعة أبل. وهي جاهزة للاستخدام فور إخراجها من العلبة.', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 10, '1', 1, 3, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(43, 'c2 nokia', 'هاتف C2 ثنائي الشريحة ', 5000.00, 'c2.jpg', 'يحتوي هاتف Nokia C2 في الخلف على كاميرا بدقة 5 ميجابكسل بفتحة عدسة f / 2.2. تتميز بكاميرا أمامية بدقة 5 ميجابكسل لالتقاط صور سيلفي\r\nذاكرة وصول عشوائي قوية مزودة بمجموعة شرائح قوية لإنجاز المهام المتعددة بسلاسة\r\nمزود بشاشة كبيرة الحجم لمشاهدة أفضل\r\nبطارية عالية القدرة تقوم بتشغيل الجهاز لساعات طويلة بشحنة واحدة\r\nمزوّد بمنفذ مايكرو USB 2.0', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 20, '1', 1, 1, '2021-10-20 10:48:36', '2021-10-22 10:48:36'),
(44, 'GS19018H-3', 'ساعة يد كرونوغراف مقاومة للماء بسوار من الاستانلس ', 1000.00, 'sa3a.jpeg', 'يحتوي هاتف Nokia C2 في الخلف على كاميرا بدقة 5 ميجابكسل بفتحة عدسة f / 2.2. تتميز بكاميرا أمامية بدقة 5 ميجابكسل لالتقاط صور سيلفي\r\nذاكرة وصول عشوائي قوية مزودة بمجموعة شرائح قوية لإنجاز المهام المتعددة بسلاسة\r\nمزود بشاشة كبيرة الحجم لمشاهدة أفضل\r\nبطارية عالية القدرة تقوم بتشغيل الجهاز لساعات طويلة بشحنة واحدة\r\nمزوّد بمنفذ مايكرو USB 2.0', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 3, '1', 7, 11, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(45, ' HG1060-S-1', 'نظارة شمسية طراز HG1060-S-1 للرجال', 2000.00, 'nshams.jpg', 'نظارة شمسية للرجال\r\nبجزء أمامي من المعدن بلون أسود وأحمر\r\nأذرع معدنية بلون أسود مع أطراف بلون أحمر\r\nعدسات من البولي كربونات', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 12, '1', 8, 10, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(46, 'safty', 'حزام أمان للخطوات الأولى - ألوان متعددة', 2000.00, 'baby1.png', 'يزيد سلامة الطفل أثناء وجوده في عربة أطفال أو على كرسي مرتفع أو المشي في المشايه\r\nيدعم طفلك أثناء خطواته الأولى ويبقيه في سيطرتك في الأماكن الخطرة أو المزدحمة\r\nمصنوع من مواد عالية الجودة لضمان المتانة\r\nتحتوي على مساحة كبيرة تمكنك من إخفاء أغراضك التي لا غنى عنها\r\nمزودة بجزء خارجي متين يتحمل الاستخدام المكثف', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 6, '1', 9, NULL, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(47, 'أرجوحة سيرينا 2 في 1', 'أرجوحة سيرينا 2 في 1', 1000.00, 'baby2.jpg', 'يزيد سلامة الطفل أثناء وجوده في عربة أطفال أو على كرسي مرتفع أو المشي في المشايه\r\nيدعم طفلك أثناء خطواته الأولى ويبقيه في سيطرتك في الأماكن الخطرة أو المزدحمة\r\nمصنوع من مواد عالية الجودة لضمان المتانة\r\nتحتوي على مساحة كبيرة تمكنك من إخفاء أغراضك التي لا غنى عنها\r\nمزودة بجزء خارجي متين يتحمل الاستخدام المكثف', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 5, '1', 9, NULL, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(48, 'usb 32 gB ', 'فلاشه كينجستون 32 جيجا ', 60.00, 'usbdrive.jpg', '\r\nيزيد سلامة الطفل أثناء وجوده في عربة أطفال أو على كرسي مرتفع أو المشي في المشايه\r\nيدعم طفلك أثناء خطواته الأولى ويبقيه في سيطرتك في الأماكن الخطرة أو المزدحمة\r\nمصنوع من مواد عالية الجودة لضمان المتانة\r\nتحتوي على مساحة كبيرة تمكنك من إخفاء أغراضك التي لا غنى عنها\r\nمزودة بجزء خارجي متين يتحمل الاستخدام المكثف', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 80, '1', 6, 2, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(49, 'opppo', 'اوبو', 2555.00, 'oppoo.jpg', 'هاتف اوبو جميل جدا ياتى برامات كذا وكذا وكذا ', 'oppo phone ram 8 storege 255GB', 6, '1', 1, 12, '2021-10-24 13:57:17', '2021-10-24 13:57:17'),
(50, 'samsong', 'سامسونج', 1202.00, '1635189067.jpg', 'ففففففففففففففففففف', 'فففففففففففففففففففففففففففففففففففف', 5, '1', 2, 2, '2021-10-25 19:11:07', '2021-10-25 19:11:07'),
(51, 'samsong', 'سامسونج', 1202.00, '1635189112.jpg', 'ففففففففففففففففففف', 'فففففففففففففففففففففففففففففففففففف', 5, '1', 2, 2, '2021-10-25 19:11:52', '2021-10-25 19:11:52');

-- --------------------------------------------------------

--
-- Table structure for table `products_offers`
--

CREATE TABLE `products_offers` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `products_orders`
-- (See below for the actual view)
--
CREATE TABLE `products_orders` (
`product_id` bigint(20) unsigned
,`quantite` decimal(42,0)
,`name` varchar(50)
,`price` float(7,2)
,`image` varchar(1000)
);

-- --------------------------------------------------------

--
-- Table structure for table `products_spacs`
--

CREATE TABLE `products_spacs` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `spac_id` bigint(20) UNSIGNED NOT NULL,
  `space_value` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `quantity`
-- (See below for the actual view)
--
CREATE TABLE `quantity` (
`product_id` bigint(20) unsigned
,`col1` bigint(21)
,`qu_q` decimal(42,0)
,`name_en` varchar(50)
,`price` float(7,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(20) NOT NULL,
  `name_en` varchar(20) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `lat` varchar(20) NOT NULL,
  `longg` varchar(20) NOT NULL,
  `cites_regions` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name_ar`, `name_en`, `status`, `created_at`, `updated_at`, `lat`, `longg`, `cites_regions`) VALUES
(1, 'مدينة نصر', 'nassity', '1', '2021-10-23 23:19:37', '2021-10-23 23:19:37', 'dd', 'dd', 1),
(2, 'فيصل', 'fisal', '1', '2021-10-23 23:19:37', '2021-10-23 23:19:37', 'fff', 'ff', 4),
(3, 'هانوفيل', 'hanofill', '1', '2021-10-23 23:19:37', '2021-10-23 23:19:37', 'ff', 'ff', 3),
(4, 'العباسيه', 'abasia', '1', '2021-10-23 23:19:37', '2021-10-23 23:19:37', 'aa', 'aa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comments` text NOT NULL,
  `value` enum('1','2','3','4','5') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`user_id`, `product_id`, `comments`, `value`) VALUES
(24, 44, 'جميل جميل جميل ', '4'),
(24, 47, 'حلو جدا ', '5'),
(24, 48, 'سرعه نقل حلوه ', '4'),
(25, 9, 'حلو حلو حلو ', '5'),
(25, 44, 'شيك جدا', '5'),
(25, 48, 'فلاشه حلوه اوى ', '2'),
(26, 44, 'حلوه جدا ', '1'),
(26, 46, 'منتج جامد انصح بيه جدا ', '5'),
(26, 48, 'لونها حلو ', '4'),
(27, 42, 'كومنت واحد من اول يوزر ', '2'),
(27, 44, 'شيك جدا', '3'),
(28, 9, 'جميل جدا جدا', '4'),
(28, 40, 'حلوه ', '2'),
(29, 45, 'حلو حلو حلو ', '2');

-- --------------------------------------------------------

--
-- Stand-in structure for view `section2`
-- (See below for the actual view)
--
CREATE TABLE `section2` (
`product_id` bigint(20) unsigned
,`product_name` varchar(50)
,`p_image` varchar(1000)
,`p_p` float(7,2)
,`p_desc` text
,`reve` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `spacs`
--

CREATE TABLE `spacs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(20) NOT NULL,
  `name_en` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(20) NOT NULL,
  `name_en` varchar(20) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name_ar`, `name_en`, `image`, `status`, `categorie_id`, `created_at`, `updated_at`) VALUES
(1, 'موبايلات', 'mobiles', NULL, '1', 1, '2021-10-20 23:28:24', '2021-10-20 23:28:24'),
(2, 'لابتوبات', 'laptops', NULL, '1', 1, '2021-10-20 23:28:24', '2021-10-20 23:28:24'),
(3, 'اداوات صنع القهوه', 'make cofee', NULL, '1', 2, '2021-10-20 23:28:24', '2021-10-20 23:28:24'),
(4, 'تلفزيونات', 'tvs', NULL, '1', 1, '2021-10-22 09:35:34', '2021-10-22 09:35:34'),
(5, 'العاب فيديو ', 'vedio games', NULL, '1', 1, '2021-10-22 09:35:34', '2021-10-22 09:35:34'),
(6, 'فلاشات ', 'usb storeg', NULL, '1', 1, '2021-10-22 09:35:34', '2021-10-22 09:35:34'),
(7, 'ساعات', 'clocks', NULL, '1', 4, '2021-10-22 09:35:34', '2021-10-22 09:35:34'),
(8, 'نظارات ', 'glasses', NULL, '1', 4, '2021-10-22 09:35:34', '2021-10-22 09:35:34'),
(9, 'كراسي اطفال ', 'child_ch', NULL, '1', 5, '2021-10-22 09:35:34', '2021-10-22 09:35:34'),
(11, 'الاغذية المعلبه', 'fastfood', NULL, '1', 2, '2021-10-22 09:35:34', '2021-10-22 09:35:34'),
(12, 'المشروبات', 'drinks', NULL, '1', 6, '2021-10-22 09:35:34', '2021-10-22 09:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` enum('f','m') NOT NULL COMMENT 'f->female , m->male',
  `phone` int(12) DEFAULT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `code` varchar(5) NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `image` varchar(100) DEFAULT 'default.png',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `phone`, `email`, `password`, `status`, `code`, `verified_at`, `image`, `created_at`, `updated_at`) VALUES
(24, 'adawe', 'adawe', 'f', 1022361239, 'aaa15107@gmail.com', '8cb2237d0679ca88db64', '1', '49464', '2021-10-19 22:57:04', 'default.png', '2021-10-19 22:56:53', '2021-10-19 22:56:53'),
(25, 'dfd', 'fdfd', 'm', 15245, 'sh3wazaa@yahoo.com', '7c4a8d09ca3762af61e5', '1', '46863', '2021-10-22 18:15:00', 'default.png', '2021-10-22 11:47:39', '2021-10-22 11:47:39'),
(26, 'wafaaa', 'ahmed', 'f', 1245421212, 'ahajha@dkfjjkdf.com', '7c4a8d09ca3762af61e5', '1', '56465', '2021-10-24 14:01:56', 'default.png', '2021-10-23 18:14:15', '2021-10-23 18:14:15'),
(27, 'ayman', 'ahmed', 'm', 4678686, 'ayaman@gmail.com', '8cb2237d0679ca88db64', '1', '54656', '2021-10-24 14:02:06', 'default.png', '2021-10-23 18:14:15', '2021-10-23 18:14:15'),
(28, 'sara', 'gamal', 'f', 4564564, 'sara@gmail.com', '7c4a8d09ca3762af61e5', '1', '12745', '2021-10-24 14:02:14', 'default.png', '2021-10-23 18:14:15', '2021-10-23 18:14:15'),
(29, 'hashem', 'ahmed', 'm', 54154546, 'hashem@gmail.com', '8cb2237d0679ca88db64', '1', '12454', '2021-10-24 14:02:20', 'default.png', '2021-10-23 18:14:15', '2021-10-23 18:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `products_orders`
--
DROP TABLE IF EXISTS `products_orders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `products_orders`  AS   (select `orders_products`.`product_id` AS `product_id`,sum(`orders_products`.`quantity`) AS `quantite`,`products`.`name_en` AS `name`,`products`.`price` AS `price`,`products`.`image` AS `image` from (`products` join `orders_products` on(`orders_products`.`product_id` = `products`.`id`)) group by `orders_products`.`product_id` order by sum(`orders_products`.`quantity`) desc)  ;

-- --------------------------------------------------------

--
-- Structure for view `quantity`
--
DROP TABLE IF EXISTS `quantity`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `quantity`  AS   (select `orders_products`.`product_id` AS `product_id`,count(`orders_products`.`product_id`) AS `col1`,sum(`orders_products`.`quantity`) AS `qu_q`,`products`.`name_en` AS `name_en`,`products`.`price` AS `price` from (`products` join `orders_products` on(`orders_products`.`product_id` = `products`.`id`)) group by `orders_products`.`product_id`)  ;

-- --------------------------------------------------------

--
-- Structure for view `section2`
--
DROP TABLE IF EXISTS `section2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `section2`  AS   (select `products`.`id` AS `product_id`,`products`.`name_en` AS `product_name`,`products`.`image` AS `p_image`,`products`.`price` AS `p_p`,`products`.`desc_en` AS `p_desc`,count(`reviews`.`product_id`) AS `reve` from (`products` left join `reviews` on(`reviews`.`product_id` = `products`.`id`)) group by `reviews`.`product_id` order by count(`reviews`.`product_id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_address_fk1` (`users_address`),
  ADD KEY `origin_address` (`regions_address`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `product_id_card_fk` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `copon_products`
--
ALTER TABLE `copon_products`
  ADD KEY `productid_coupon_fk` (`product_id`),
  ADD KEY `couponid_coupon_fk` (`coupon_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `coupons_users`
--
ALTER TABLE `coupons_users`
  ADD KEY `couponid_coupons_fk` (`coupon_id`),
  ADD KEY `userid_coupons_fk` (`user_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_addres_fk` (`orders_address`),
  ADD KEY `order_coupon_fk` (`order_coupon`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD KEY `productid_op_fk` (`product_id`),
  ADD KEY `orderid_op_fk` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_subcat_fk` (`subcategory_id`),
  ADD KEY `products-brnd-fk` (`brand_id`);

--
-- Indexes for table `products_offers`
--
ALTER TABLE `products_offers`
  ADD PRIMARY KEY (`offer_id`,`product_id`),
  ADD KEY `product_offer_fk1` (`product_id`);

--
-- Indexes for table `products_spacs`
--
ALTER TABLE `products_spacs`
  ADD PRIMARY KEY (`product_id`,`spac_id`),
  ADD KEY `spac-id-fk` (`spac_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_regions` (`cites_regions`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `rev_product_id_fk` (`product_id`);

--
-- Indexes for table `spacs`
--
ALTER TABLE `spacs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catego_subCategories` (`categorie_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `wishlist_productid_fk` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adress`
--
ALTER TABLE `adress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spacs`
--
ALTER TABLE `spacs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `origin_address` FOREIGN KEY (`regions_address`) REFERENCES `regions` (`id`),
  ADD CONSTRAINT `users_address_fk1` FOREIGN KEY (`users_address`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `product_id_card_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `uerer_id_card_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `copon_products`
--
ALTER TABLE `copon_products`
  ADD CONSTRAINT `couponid_coupon_fk` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `productid_coupon_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `coupons_users`
--
ALTER TABLE `coupons_users`
  ADD CONSTRAINT `couponid_coupons_fk` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `userid_coupons_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_addres_fk` FOREIGN KEY (`orders_address`) REFERENCES `adress` (`id`),
  ADD CONSTRAINT `order_coupon_fk` FOREIGN KEY (`order_coupon`) REFERENCES `coupons` (`id`);

--
-- Constraints for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD CONSTRAINT `orderid_op_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `productid_op_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products-brnd-fk` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_subcat_fk` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `products_offers`
--
ALTER TABLE `products_offers`
  ADD CONSTRAINT `product_offer_fk1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_offer_fk2` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`);

--
-- Constraints for table `products_spacs`
--
ALTER TABLE `products_spacs`
  ADD CONSTRAINT `spac-id-fk` FOREIGN KEY (`spac_id`) REFERENCES `spacs` (`id`),
  ADD CONSTRAINT `spac-product-fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `cities_regions` FOREIGN KEY (`cites_regions`) REFERENCES `cities` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `rev_product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `rev_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `catego_subCategories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_productid_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `wishlist_userid_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
