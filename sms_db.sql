-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2024 a las 17:45:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sms_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'daniel', '$2y$10$H7obJEdmLzqqcPy7wQWhsOLUvrgzC8f1Y1or2Gxaza5z1PT0tvLy6', 'Daniel', 'González');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `class`
--

INSERT INTO `class` (`class_id`, `grade`, `section`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade` varchar(31) NOT NULL,
  `grade_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grades`
--

INSERT INTO `grades` (`grade_id`, `grade`, `grade_code`) VALUES
(1, '1', 'SMR'),
(2, '2', 'SMR'),
(3, '1', 'ASIR'),
(4, '2', 'ASIR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`message_id`, `sender_full_name`, `sender_email`, `message`, `date_time`) VALUES
(1, 'Juan Pérez', 'jupe@gmail.com', 'I have a question about database.', '2024-02-28 23:39:15'),
(2, 'Laura García', 'lauga@gmail.com', 'I have a question about programming.', '2024-02-21 20:30:00'),
(3, 'Paco Ruiz', 'pacoru@gmail.com', 'I have a question about networks.', '2024-02-25 16:43:06'),
(4, 'Rodolfo López', 'rodolfodev@gmail.com', 'I have a question about development in docker.', '2024-02-29 16:14:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrar_office`
--

CREATE TABLE `registrar_office` (
  `r_user_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(31) NOT NULL,
  `lname` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrar_office`
--

INSERT INTO `registrar_office` (`r_user_id`, `username`, `password`, `fname`, `lname`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(1, 'javas', '$2y$10$t0SCfeXNcyiO9hdzNTKKB.j2xlE2yt8Hm2.0AWJR5kSE469JIkHKG', 'Javier', 'Rivas', 'Vélez-Málaga, Málaga', 843583890, '1992-10-04', '1232832409', 'Senior', 'Male', 'javas@gmail.com', '2017-10-23 01:03:25'),
(2, 'daniga', '$2y$10$t0SCfeXNcyiO9hdzNTKKB.j2xlE2yt8Hm2.0AWJR5kSE469JIkHKG', 'Daniel', 'González', 'Málaga', 12345, '1999-06-03', '123456123', 'Developer', 'Male', 'daniga@gmail.com', '2022-11-12 23:06:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `section`
--

INSERT INTO `section` (`section_id`, `section`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semester` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `slogan` varchar(300) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `setting`
--

INSERT INTO `setting` (`id`, `current_year`, `current_semester`, `school_name`, `slogan`, `about`) VALUES
(1, 2024, 'II', 'DevArt Academy', 'Cultivating talents, creating art.', 'At DevArt Academy, we are proud to offer a space where students can explore their creativity and develop their artistic skills.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `fname`, `lname`, `grade`, `section`, `address`, `gender`, `email_address`, `date_of_birth`, `date_of_joined`, `parent_fname`, `parent_lname`, `parent_phone_number`) VALUES
(1, 'juanpe', '$2y$10$xmtROY8efWeORYiuQDE3SO.eZwscao20QNuLky1Qlr88zDzNNq4gm', 'Juan', 'Pérez', 1, 1, 'Torre del mar, Málaga', 'Male', 'jupe@gmail.com', '2002-09-12', '2023-09-15 13:30:00', 'Antonio', 'Pérez', '093939192'),
(3, 'lauga', '$2y$10$xmtROY8efWeORYiuQDE3SO.eZwscao20QNuLky1Qlr88zDzNNq4gm', 'Laura', 'García', 3, 3, 'Vélez-Málaga, Málaga', 'Female', 'lauga@gmail.com', '2003-12-03', '2023-09-15 14:30:00', 'Pepe', 'García', '797979797'),
(4, 'pacoru', '$2y$10$xmtROY8efWeORYiuQDE3SO.eZwscao20QNuLky1Qlr88zDzNNq4gm', 'Paco', 'Ruiz', 2, 2, 'Almayate, Málaga', 'Male', 'pacoru@gmail.com', '2002-06-13', '2023-09-15 14:00:00', 'Jose', 'Ruiz', '094356865'),
(5, 'mariago', '$2y$10$xmtROY8efWeORYiuQDE3SO.eZwscao20QNuLky1Qlr88zDzNNq4gm', 'María', 'González', 4, 4, 'Algarrobo, Málaga', 'Female', 'mariago@gmail.com', '1990-02-15', '2023-02-12 18:11:26', 'Antonio', 'Do', '0943568654'),
(6, 'jesuche', '$2y$10$xmtROY8efWeORYiuQDE3SO.eZwscao20QNuLky1Qlr88zDzNNq4gm', 'Jesús', 'Sánchez', 4, 4, 'Vélez-Málaga, Málaga', 'Male', 'jesuchez@gmail.com', '1980-02-12', '2024-02-28 20:04:34', 'Jose', 'Ruiz', '123123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_score`
--

CREATE TABLE `student_score` (
  `id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `results` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `student_score`
--

INSERT INTO `student_score` (`id`, `semester`, `year`, `student_id`, `teacher_id`, `subject_id`, `results`) VALUES
(1, 'II', 2024, 1, 1, 1, '10 5 7 9'),
(2, 'II', 2024, 3, 1, 4, '5 8 4 5'),
(3, 'II', 2024, 4, 1, 5, '10 8 5 5'),
(4, 'II', 2024, 5, 1, 7, '10 9 9 9 '),
(5, 'II', 2024, 5, 1, 1, '5 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(31) NOT NULL,
  `subject_code` varchar(31) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`, `subject_code`, `grade`) VALUES
(1, 'DevOps', 'dvo', 4),
(2, 'SGBD', 'gbd', 3),
(3, 'Frontend', 'frd', 2),
(4, 'Python', 'ptn', 4),
(5, 'Network', 'net', 1),
(7, 'Bash', 'bsh', 3),
(8, 'Java', 'jva', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `class` varchar(31) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL,
  `subjects` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `password`, `class`, `fname`, `lname`, `subjects`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(1, 'jcaselli', '$2y$10$IcE8mFCQAwnLH8amlEGO/.7BGfV5krmS7/ihLttYmSArowLGjS.rm', '34', 'Javier', 'Caselli', '128', 'Málaga, Spain', 123456789, '1985-05-05', '994573995', 'DBA', 'Male', 'jcaselli@gmail.com', '2022-09-09 05:23:45'),
(2, 'sruiz', '$2y$10$rSi7FZEh7CxA.ezm.2aPZeVr47OHg4IKYY36zltltxYVDkGzr.WlO', '12', 'Sergio', 'Ruiz', '457', 'Málaga, Spain', 1929, '1987-07-07', '994573967', 'SysAdmin', 'Male', 'sruiz@gmail.com', '2024-02-29 13:27:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indices de la tabla `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indices de la tabla `registrar_office`
--
ALTER TABLE `registrar_office`
  ADD PRIMARY KEY (`r_user_id`);

--
-- Indices de la tabla `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indices de la tabla `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `student_score`
--
ALTER TABLE `student_score`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indices de la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `registrar_office`
--
ALTER TABLE `registrar_office`
  MODIFY `r_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `student_score`
--
ALTER TABLE `student_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
