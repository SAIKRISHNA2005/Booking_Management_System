-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 01:36 PM
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
-- Database: `booking_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `booking_datetime` varchar(255) DEFAULT NULL,
  `status` smallint(6) NOT NULL COMMENT '1 - Booked, 2 - Booking Cancelled, 3 - Booking Fulfilled',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `booking_datetime`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '22', '2024-02-29', 3, 22, '2024-03-03 09:50:06', '2024-03-03 09:50:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_03_080219_create_bookings_table', 1),
(6, '2024_03_03_080305_create_webpage_table', 1),
(7, '2024_03_03_084627_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `user_type` smallint(6) DEFAULT NULL COMMENT '1 - admin, 2 - users',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone_no`, `user_type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'BMS Admin', 'abcd1234@gmail.com', NULL, '9863427890', 1, '$2y$12$rRO6mYt61vKCKaNIBZ3Gneo/4U5Dwho0Alvl2VuZSV0HE5FZQV9KG', NULL, '2024-03-03 07:50:27', '2024-03-03 07:50:27'),
(2, 'deva', 'deva1071@gmail.com', NULL, '8635274890', 2, '$2y$12$hltTCkiTeRX/1jU3GKuiM.u6/OoAvapawQ.U24yb0AqOlDTsCnM36', NULL, '2024-03-03 09:17:38', '2024-03-04 06:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `webpage`
--

CREATE TABLE `webpage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `html` text DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webpage`
--

INSERT INTO `webpage` (`id`, `name`, `slug`, `html`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'about-us', '<section class=\"container m-4\" id=\"about-us\">\r\n            <h6 class=\"display-5 text-center\">About Us</h6>\r\n            <div class=\"row\">\r\n                <div class=\"col-md-5\">\r\n                    <div class=\"container\">\r\n                        <img src=\"https://dummyimage.com/600x400/000/fff\" class=\"d-block w-100\" alt=\"About us\">\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-7\">\r\n                    <p class=\"text-black-50\">\r\n                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque modi ratione iure magnam reprehenderit quidem eum non vel voluptatibus dolorum quasi aut nobis quo placeat incidunt consequatur doloremque, aliquid at?\r\n                    </p>\r\n                    <p>\r\n                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus veritatis voluptatibus sint excepturi qui veniam possimus minus, vitae, porro aliquam voluptas voluptates, harum reiciendis molestias dolore quasi beatae unde quae? Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla voluptas fuga animi, aperiam iure sed cum dicta reprehenderit maiores porro adipisci reiciendis dolores fugit nostrum quidem dolorem vel. Similique, veritatis! Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae tempore eaque voluptatem eveniet repudiandae doloremque debitis asperiores id maxime rerum cupiditate quibusdam, commodi, maiores facere quo amet ut ea mollitia. Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolores suscipit eligendi, aspernatur numquam tenetur enim inventore reprehenderit voluptas placeat hic magnam accusantium. Atque iure a in eveniet quas cupiditate excepturi?\r\n                    </p>\r\n                </div>\r\n            </div>\r\n            <div class=\"row\">\r\n                <h6 class=\"display-6 text-center\">What Makes us Unique</h6>\r\n                <div class=\"col-md-4\">\r\n                    <div class=\"container text-center\">\r\n                        <span class=\"bi bi-person color-teal icon-lg\"></span>\r\n                        <p>Custom Tailored user Options</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-4\">\r\n                    <div class=\"container text-center\">\r\n                        <span class=\"bi bi-shield-shaded color-teal icon-lg\"></span>\r\n                        <p>Privary First Approach</p>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-4\">\r\n                    <div class=\"container text-center\">\r\n                        <span class=\"bi bi-list color-teal icon-lg\"></span>\r\n                        <p>Multiple Variations</p>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>', 1, 1, 1, '2024-03-04 05:13:01', '2024-03-04 05:13:01'),
(2, 'Team', 'team', '<section id=\"team\" class=\"container m-4\">\r\n            <h6 class=\"display-5 text-center\">Our Innovative Team</h6>\r\n            <div class=\"container\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-md-4 d-flex align-items-center justify-content-center\">\r\n                        <div class=\"card\" style=\"width: 300px;\">\r\n                            <img class=\"card-img-top\" src=\"https://dummyimage.com/300x300/000/fff&text=Sample+Image\">\r\n                            <div class=\"card-body text-center\">\r\n                                <h4 class=\"card-title\">Team Member 1</h4>\r\n                                <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>\r\n                                <i class=\"bi bi-facebook icon-sm m-2\"></i>\r\n                                <i class=\"bi bi-instagram icon-sm m-2\"></i>\r\n                                <i class=\"bi bi-linkedin icon-sm m-2\"></i>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"col-md-4 d-flex align-items-center justify-content-center\">\r\n                        <div class=\"card\" style=\"width: 300px;\">\r\n                            <img class=\"card-img-top\" src=\"https://dummyimage.com/300x300/000/fff&text=Sample+Image\">\r\n                            <div class=\"card-body text-center\">\r\n                                <h4 class=\"card-title\">Team Member 1</h4>\r\n                                <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>\r\n                                <i class=\"bi bi-facebook icon-sm m-2\"></i>\r\n                                <i class=\"bi bi-instagram icon-sm m-2\"></i>\r\n                                <i class=\"bi bi-linkedin icon-sm m-2\"></i>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"col-md-4 d-flex align-items-center justify-content-center\">\r\n                        <div class=\"card\" style=\"width: 300px;\">\r\n                            <img class=\"card-img-top\" src=\"https://dummyimage.com/300x300/000/fff&text=Sample+Image\">\r\n                            <div class=\"card-body text-center\">\r\n                                <h4 class=\"card-title\">Team Member 1</h4>\r\n                                <p class=\"card-text\">Lorem ipsum dolor sit amet consectetur adipisicing elit. </p>\r\n                                <i class=\"bi bi-facebook icon-sm m-2\"></i>\r\n                                <i class=\"bi bi-instagram icon-sm m-2\"></i>\r\n                                <i class=\"bi bi-linkedin icon-sm m-2\"></i>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>', 1, 2, 2, '2024-03-04 07:04:55', '2024-03-04 07:04:55'),
(3, 'Contact Us', 'contact-us', '<section id=\"contact\" class=\"container m-4\">\r\n            <h6 class=\"display-5 text-center \">Contact Us</h6>\r\n            <div class=\"row\">\r\n                <div class=\"col-md-6\">\r\n                    <div class=\"container p-3\">\r\n                        <p class=\"text-muted text-center fs-3\">Here\'s our Contact Info</p>\r\n                        <div class=\"text-black-s text-center fs-4\">Our Email</div>\r\n                        <div class=\"text-black-50 text-center fs-5\">support@example.com</div>\r\n                        <div class=\"text-black-s text-center fs-4\">Our Phone No.</div>\r\n                        <div class=\"text-black-50 text-center fs-5\">+91 85658 98563</div>\r\n                        <div class=\"text-black-s text-center fs-4\">Our Address</div>\r\n                        <div class=\"text-black-50 text-center fs-5\">HSR Layout, Bangalore <br> Karnatake 560 XXX</div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col-md-6\">\r\n                    <div class=\"container\">\r\n                        <p class=\"text-muted text-center fs-3\">You can also Write to Us</p>\r\n                        <div class=\"container p-3\">\r\n                            <div class=\"card shadow\">\r\n                                <div class=\"card-body\">\r\n                                    <form>\r\n                                        <div class=\"form-group\">\r\n                                            <label for=\"name\" class=\"form-label\">Enter Your Name</label>\r\n                                            <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\">\r\n                                        </div>\r\n                                        <div class=\"form-group\">\r\n                                            <label for=\"emailid\" class=\"form-label\">Enter Your Email</label>\r\n                                            <input type=\"email\" class=\"form-control\" name=\"email\" id=\"emailid\">\r\n                                        </div>\r\n                                        <div class=\"form-group\">\r\n                                            <label for=\"subject\" class=\"form-label\">Enter the subject</label>\r\n                                            <input type=\"text\" class=\"form-control\" name=\"subject\" id=\"subject\">\r\n                                        </div>\r\n                                        <div class=\"form-group\">\r\n                                            <label for=\"message\" class=\"form-label\">Enter Your Message</label>\r\n                                            <textarea class=\"form-control\" name=\"message\" id=\"message\"></textarea>\r\n                                        </div>\r\n                                        <div class=\"form-group text-center\">                                               \r\n                                            <input type=\"submit\" class=\"btn btn-outline-dark\" value=\"Send Message\">\r\n                                        </div>\r\n                                    </form>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </section>', 1, 2, 2, '2024-03-04 07:05:44', '2024-03-04 07:05:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webpage`
--
ALTER TABLE `webpage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webpage`
--
ALTER TABLE `webpage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
