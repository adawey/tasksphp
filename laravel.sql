-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 06:52 AM
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
-- Database: `laravel`
--

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
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(41, 'laptop G3 15-3500', 'لابتوب G3 15-3500', 6000.00, 'lapdell.jpg', 'لابتوب G3 15-3500 للألعاب - بمعالج i5-10300H وذاكرة رام 8 جيجابايت ومحرك أقراص SSD سعة 512 جيجابايت بمنافذ PCIe وNVMe وبطاقة رسومات GTX 1650 Ti بسعة 4 جيجابايت وشاشة IPS مقاس 15.6 بوصة بدقة كاملة الوضوح (1980x1080) بمعدل تحديث 120 هرتز ولوحة مفاتيح باللغة الإنجليزية بإضاءة خلفية أسود', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. \r\n                                        Eaque, obcaecati. Illum odio ab aut facere nostrum, error \r\n                                        unde dolorem tempora ipsum hic labore quaerat quibusdam asperiores sequi reiciendis ratione repudiandae?', 3, '1', 2, 5, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(42, 'apple airpods', 'سماعات أذن آيربودز برو لاسلكية أبيض', 2000.00, 'air.jpg', 'تصميم يتميز بمشغل مصمم خصوصاً بسعة كبيرة وتشويش منخفض يوفر جهيراً قوياً. وينتج مضخم النطاق الديناميكي عالي الكفاءة صوتاً نقياً وواضحاً بشكل مذهل ويعمل على إطالة عمر البطارية أيضاً. وتعمل ميزة موازنة الصوت المتكيفة تلقائياً على ضبط الموسيقى لتناسب شكل أذنك للحصول على تجربة استماع غنية ومتسقة.\r\nتوفر آيربودز برو ملاءمة أكثر قابلية للتخصيص مع ثلاثة أحجام من أطراف السيليكون المرنة للاختيار بينها. مع وجود مستدق داخلي، فإنها تتوافق مع شكل أذنك، مما يؤمن آيربودز برو في مكانه ويخلق عازلاً استثنائياً لإلغاء الضوضاء بشكل فائق.\r\nقم بالتبديل إلى وضع الشفافية، وسيسمح آيربودز برو للصوت الخارجي بالدخول، مما يتيح لك سماع ما يدور حولك. تمكّن الميكروفونات الموجهة للخارج والداخل آيربودز برو من إلغاء تأثير عزل الصوت لحواف السيليكون بحيث يبدو الوضع طبيعياً كما هو الحال عندما تتحدث مع الأشخاص من حولك.\r\nسماعات الرأس المذهلة المانعة للضوضاء الخفيفة، تعزل آيربودز برو بيئتك حتى تتمكن من التركيز على ما تستمع إليه، تعمل سماعات آيربودز برو بزوجٍ من الميكروفونات، واحد مواجه للخارج وآخر مواجه للداخل من أجل إنشاء خاصية إلغاء ضوضاء فائقة. من خلال التكيف المستمر مع هندسة أذنك وملاءمة أطراف الأذن، يعمل وضع إلغاء الضوضاء النشط على إسكات العالم حولك لإبقائك على اتصالٍ تامٍ بالموسيقى والبودكاست والمكالمات.\r\nتم تصميم آيربودز برو لتوفير ميزة إلغاء الضوضاء النشط للحصول على صوت غامر ووضع الشفافية حتى تتمكن من سماع ما يحيط بك، مع تناسب قابل للتخصيص لراحة طوال اليوم. تماماً مثل آيربودز، تتصل آيربودز برو بطريقة سحرية بجهاز آيفون أو ساعة أبل. وهي جاهزة للاستخدام فور إخراجها من العلبة.', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 10, '1', 1, 3, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(43, 'c2 nokia', 'هاتف C2 ثنائي الشريحة ', 5000.00, 'c2.jpg', 'يحتوي هاتف Nokia C2 في الخلف على كاميرا بدقة 5 ميجابكسل بفتحة عدسة f / 2.2. تتميز بكاميرا أمامية بدقة 5 ميجابكسل لالتقاط صور سيلفي\r\nذاكرة وصول عشوائي قوية مزودة بمجموعة شرائح قوية لإنجاز المهام المتعددة بسلاسة\r\nمزود بشاشة كبيرة الحجم لمشاهدة أفضل\r\nبطارية عالية القدرة تقوم بتشغيل الجهاز لساعات طويلة بشحنة واحدة\r\nمزوّد بمنفذ مايكرو USB 2.0', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 20, '1', 1, 1, '2021-10-20 10:48:36', '2021-10-22 10:48:36'),
(44, 'GS19018H-3', 'ساعة يد كرونوغراف مقاومة للماء بسوار من الاستانلس ', 1000.00, 'sa3a.jpeg', 'يحتوي هاتف Nokia C2 في الخلف على كاميرا بدقة 5 ميجابكسل بفتحة عدسة f / 2.2. تتميز بكاميرا أمامية بدقة 5 ميجابكسل لالتقاط صور سيلفي\r\nذاكرة وصول عشوائي قوية مزودة بمجموعة شرائح قوية لإنجاز المهام المتعددة بسلاسة\r\nمزود بشاشة كبيرة الحجم لمشاهدة أفضل\r\nبطارية عالية القدرة تقوم بتشغيل الجهاز لساعات طويلة بشحنة واحدة\r\nمزوّد بمنفذ مايكرو USB 2.0', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 3, '1', 7, 11, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(45, ' HG1060-S-1', 'نظارة شمسية طراز HG1060-S-1 للرجال', 2000.00, 'nshams.jpg', 'نظارة شمسية للرجال\r\nبجزء أمامي من المعدن بلون أسود وأحمر\r\nأذرع معدنية بلون أسود مع أطراف بلون أحمر\r\nعدسات من البولي كربونات', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 12, '1', 8, 10, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(46, 'safty', 'حزام أمان للخطوات الأولى - ألوان متعددة', 2000.00, 'baby1.png', 'يزيد سلامة الطفل أثناء وجوده في عربة أطفال أو على كرسي مرتفع أو المشي في المشايه\r\nيدعم طفلك أثناء خطواته الأولى ويبقيه في سيطرتك في الأماكن الخطرة أو المزدحمة\r\nمصنوع من مواد عالية الجودة لضمان المتانة\r\nتحتوي على مساحة كبيرة تمكنك من إخفاء أغراضك التي لا غنى عنها\r\nمزودة بجزء خارجي متين يتحمل الاستخدام المكثف', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 6, '1', 9, NULL, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(47, 'أرجوحة سيرينا 2 في 1', 'أرجوحة سيرينا 2 في 1', 1000.00, 'baby2.jpg', 'يزيد سلامة الطفل أثناء وجوده في عربة أطفال أو على كرسي مرتفع أو المشي في المشايه\r\nيدعم طفلك أثناء خطواته الأولى ويبقيه في سيطرتك في الأماكن الخطرة أو المزدحمة\r\nمصنوع من مواد عالية الجودة لضمان المتانة\r\nتحتوي على مساحة كبيرة تمكنك من إخفاء أغراضك التي لا غنى عنها\r\nمزودة بجزء خارجي متين يتحمل الاستخدام المكثف', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 5, '1', 9, NULL, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(48, 'usb 32 gB ', 'فلاشه كينجستون 32 جيجا ', 60.00, 'usbdrive.jpg', '\r\nيزيد سلامة الطفل أثناء وجوده في عربة أطفال أو على كرسي مرتفع أو المشي في المشايه\r\nيدعم طفلك أثناء خطواته الأولى ويبقيه في سيطرتك في الأماكن الخطرة أو المزدحمة\r\nمصنوع من مواد عالية الجودة لضمان المتانة\r\nتحتوي على مساحة كبيرة تمكنك من إخفاء أغراضك التي لا غنى عنها\r\nمزودة بجزء خارجي متين يتحمل الاستخدام المكثف', 'Magic like you’ve never heard AirPods Pro have been designed to deliver Active Noise Cancellation for immersive sound, Transparency mode so you can hear your surroundings and a customisable fit for all-day comfort. Just like AirPods, AirPods Pro connect like magic to your iPhone or Apple Watch. And they’re ready to use straight out of the case. Active Noise Cancellation Incredibly light, noise-cancelling headphones, AirPods Pro block out your environment so you can focus on what you՚re listening to. AirPods Pro use two microphones, an outward-facing microphone and an inward-facing microphone, to create superior noise cancellation. By continuously adapting to the geometry of your ear and the fit of the ear tips, Active Noise Cancellation silences the world to keep you fully tuned in to your music, podcasts and calls. Transparency mode Switch to Transparency mode and AirPods Pro let the outside sound in, allowing you to hear and connect to your surroundings. Outward- and inward-facing microphones enable AirPods Pro to undo the sound-isolating effect of the silicone tips so things sound and feel natural, like when you’re talking to people around you. All-new design AirPods Pro offer a more customisable fit with three sizes of flexible silicone tips to choose from. With an internal taper, they conform to the shape of your ear, securing your AirPods Pro in place and creating an exceptional seal for superior noise cancellation Amazing audio quality A custom-built high-excursion, low-distortion driver delivers powerful bass. A super-efficient high dynamic range amplifier produces pure, incredibly clear sound while also extending battery life. And Adaptive EQ automatically tunes music to suit the shape of your ear for a rich, consistent listening experience. Even more magical The Apple-designed H1 chip delivers incredibly low audio latency. A force sensor on the stem makes it easy to control music and calls, and switch between Active Noise Cancellation and Transparency mode. Announce Messages with Siri gives you the option to have Siri read your messages through your AirPods. And with Audio Sharing, you and a friend can share the same audio stream on two sets of AirPods — so you can play a game, watch a film or listen to a song together. Highlights Designed by Apple Active Noise Cancellation More customizable fit and seal Transparency mode Amazing sound quality with Adaptive EQ Sweat and water resistant (IPX4)⊃2; Automatically on, automatically connected Easy setup for all your Apple devices⊃3; Quick charging in the case Case can be charged either wirelessly using a Qi-certified charger or with the Lightning connector Tech Specs Audio Technology Active Noise Cancellation Transparency mode Adaptive EQ Vent system for pressure equalization Custom high-excursion Apple driver Custom high dynamic range amplifier Sensors Dual beamforming microphones Inward-facing microphone Dual optical sensors Motion-detecting accelerometer Speech-detecting accelerometer Force sensor Chip H1-based System in Package Controls Press the force sensor once to play, pause, or answer a phone call Press twice to skip forward Press three times to skip back Press and hold to switch between Active Noise Cancellation and Transparency mode Say “Hey Siri” to do things like play a song, make a call, or get directions Charging Case Works with Qi-certified chargers or the Lightning connector Battery AirPods Pro Up to 4.5 hours of listening time with a single charge (up to 5 hours with Active Noise Cancellation and Transparency off)⁵ Up to 3.5 hours of talk time with a single charge⁶ AirPods Pro with Wireless Charging Case More than 24 hours of listening time⁷ More than 18 hours of talk time⁸ 5 minutes in the case provides around 1 hour of listening time⁹ or around 1 hour of talk time⊃1;⁰ Connectivity Bluetooth 5.0 Accessibility Accessibility features help people with disabilities get the most out of their new AirPods Pro. Features include: Live Listen audio⊃1;⊃1;', 80, '1', 6, 2, '2021-10-22 10:48:36', '2021-10-22 10:48:36'),
(49, 'opppo', 'اوبو', 2555.00, 'oppoo.jpg', 'هاتف اوبو جميل جدا ياتى برامات كذا وكذا وكذا ', 'oppo phone ram 8 storege 255GB', 6, '1', 1, 12, '2021-10-24 13:57:17', '2021-10-24 13:57:17'),
(53, 'adawe', 'sdsd', 4545.00, '1635375683.jpg', 'tytuy', 'sdfdf', 5, '1', 2, 2, '2021-10-27 23:01:23', '2021-10-27 23:01:23'),
(55, 'rtrt', 'rtrt', 4565.00, '1635383319.jpg', 'rtrey', 'tryrtyt', 56, '1', 5, NULL, '2021-10-28 01:08:39', '2021-10-28 01:08:39'),
(56, 'rrrt', 'sdsdgh', 45454.00, '1635460303.jpg', 'tytuygfdgfdg', 'sdfdffdgfdg', 6, '1', 3, 3, '2021-10-28 22:31:43', '2021-10-28 22:31:43');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` mediumint(5) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_subcat_fk` (`subcategory_id`),
  ADD KEY `products-brnd-fk` (`brand_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products-brnd-fk` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_subcat_fk` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `catego_subCategories` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
