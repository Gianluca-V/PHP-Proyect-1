-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2023 a las 01:54:33
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `school`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumn`
--

CREATE TABLE `alumn` (
  `dni` varchar(9) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `surname` varchar(128) DEFAULT NULL,
  `average` double DEFAULT 0,
  `image` varchar(2048) DEFAULT NULL,
  `course` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumn`
--

INSERT INTO `alumn` (`dni`, `name`, `surname`, `average`, `image`, `course`) VALUES
('37890125', 'Charlotte', 'Perez', 0, 'image.jpg', 1),
('38967892', 'Ethan', 'Reyes', 0, 'image.jpg', 3),
('39012347', 'Ava', 'Ramirez', 0, 'image.jpg', 1),
('41234569', 'Victoria', 'Ramirez', 0, 'image.jpg', 2),
('41567892', 'Alexander', 'Rodriguez', 0, 'image.jpg', 3),
('42345670', 'William', 'Lopez', 0, 'image.jpg', 2),
('42345678', 'John', 'Doe', 0, 'image.jpg', 2),
('43456781', 'Luna', 'Castillo', 0, 'image.jpg', 1),
('43456789', 'Jane', 'Smith', 0, 'image.jpg', 3),
('44567890', 'Michael', 'Johnson', 0, 'image.jpg', 3),
('45398679', 'Samuel', 'Luna', 0, 'image.jpg', 1),
('45456021', 'Mia', 'Garcia', 0, 'image.jpg', 2),
('45678901', 'Emily', 'Brown', 0, 'image.jpg', 3),
('45678903', 'Mila', 'Fernandez', 0, 'image.jpg', 2),
('45778903', 'Sofia', 'Hernandez', 0, 'image.jpg', 3),
('46789012', 'David', 'Miller', 0, 'image.jpg', 2),
('47890123', 'Olivia', 'Anderson', 0, 'image.jpg', 1),
('48901236', 'Daniel', 'Sanchez', 0, 'image.jpg', 2),
('49012345', 'Sophia', 'Taylor', 0, 'image.jpg', 1),
('90123456', 'Daniel', 'Thomas', 0, 'image.jpg', 2),
('90123458', 'Henry', 'Torres', 0, 'image.jpg', 2),
('91234567', 'Isabella', 'Martinez', 0, 'image.jpg', 3),
('96789014', 'Benjamin', 'Gomez', 0, 'image.jpg', 1),
('98901234', 'James', 'Wilson', 0, 'image.jpg', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `division` varchar(3) DEFAULT NULL,
  `speciality` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `course`
--

INSERT INTO `course` (`id`, `year`, `division`, `speciality`) VALUES
(1, 4, '1ra', 'PROG'),
(2, 6, '2da', 'IPP'),
(3, 7, '1ra', 'ADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `subjectId` int(11) DEFAULT NULL,
  `alumnId` varchar(128) DEFAULT NULL,
  `note` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `notes`
--

INSERT INTO `notes` (`id`, `subjectId`, `alumnId`, `note`) VALUES
(70, 1, '37890125', 6),
(71, 2, '37890125', 9),
(72, 3, '37890125', 8),
(73, 4, '37890125', 3),
(77, 1, '39012347', 4),
(78, 2, '39012347', 6),
(79, 3, '39012347', 8),
(80, 4, '39012347', 9),
(84, 1, '43456781', 1),
(85, 2, '43456781', 10),
(86, 3, '43456781', 5),
(87, 4, '43456781', 4),
(91, 1, '45398679', 6),
(92, 2, '45398679', 5),
(93, 3, '45398679', 7),
(94, 4, '45398679', 1),
(98, 1, '47890123', 4),
(99, 2, '47890123', 6),
(100, 3, '47890123', 7),
(101, 4, '47890123', 7),
(105, 1, '49012345', 4),
(106, 2, '49012345', 7),
(107, 3, '49012345', 3),
(108, 4, '49012345', 3),
(112, 1, '96789014', 6),
(113, 2, '96789014', 10),
(114, 3, '96789014', 10),
(115, 4, '96789014', 3),
(119, 5, '41234569', 1),
(120, 6, '41234569', 7),
(121, 7, '41234569', 1),
(122, 8, '41234569', 2),
(126, 5, '42345670', 9),
(127, 6, '42345670', 8),
(128, 7, '42345670', 2),
(129, 8, '42345670', 7),
(133, 5, '42345678', 7),
(134, 6, '42345678', 5),
(135, 7, '42345678', 3),
(136, 8, '42345678', 10),
(140, 5, '45456021', 2),
(141, 6, '45456021', 8),
(142, 7, '45456021', 4),
(143, 8, '45456021', 3),
(147, 5, '45678903', 5),
(148, 6, '45678903', 3),
(149, 7, '45678903', 10),
(150, 8, '45678903', 1),
(154, 5, '46789012', 3),
(155, 6, '46789012', 3),
(156, 7, '46789012', 4),
(157, 8, '46789012', 2),
(161, 5, '48901236', 8),
(162, 6, '48901236', 4),
(163, 7, '48901236', 4),
(164, 8, '48901236', 7),
(168, 5, '90123456', 4),
(169, 6, '90123456', 9),
(170, 7, '90123456', 10),
(171, 8, '90123456', 5),
(175, 5, '90123458', 3),
(176, 6, '90123458', 8),
(177, 7, '90123458', 4),
(178, 8, '90123458', 3),
(182, 9, '38967892', 5),
(183, 10, '38967892', 3),
(184, 11, '38967892', 9),
(185, 12, '38967892', 7),
(189, 9, '41567892', 6),
(190, 10, '41567892', 1),
(191, 11, '41567892', 6),
(192, 12, '41567892', 4),
(196, 9, '43456789', 3),
(197, 10, '43456789', 4),
(198, 11, '43456789', 8),
(199, 12, '43456789', 10),
(203, 9, '44567890', 6),
(204, 10, '44567890', 10),
(205, 11, '44567890', 1),
(206, 12, '44567890', 5),
(210, 9, '45678901', 2),
(211, 10, '45678901', 2),
(212, 11, '45678901', 5),
(213, 12, '45678901', 9),
(217, 9, '45778903', 8),
(218, 10, '45778903', 2),
(219, 11, '45778903', 8),
(220, 12, '45778903', 1),
(224, 9, '91234567', 1),
(225, 10, '91234567', 3),
(226, 11, '91234567', 1),
(227, 12, '91234567', 4),
(231, 9, '98901234', 9),
(232, 10, '98901234', 3),
(233, 11, '98901234', 8),
(234, 12, '98901234', 10),
(238, 1, '37890125', 3),
(239, 2, '37890125', 6),
(240, 3, '37890125', 2),
(241, 4, '37890125', 2),
(245, 1, '39012347', 5),
(246, 2, '39012347', 8),
(247, 3, '39012347', 2),
(248, 4, '39012347', 8),
(252, 1, '43456781', 1),
(253, 2, '43456781', 4),
(254, 3, '43456781', 3),
(255, 4, '43456781', 4),
(259, 1, '45398679', 1),
(260, 2, '45398679', 4),
(261, 3, '45398679', 4),
(262, 4, '45398679', 7),
(266, 1, '47890123', 4),
(267, 2, '47890123', 9),
(268, 3, '47890123', 4),
(269, 4, '47890123', 1),
(273, 1, '49012345', 2),
(274, 2, '49012345', 8),
(275, 3, '49012345', 3),
(276, 4, '49012345', 1),
(280, 1, '96789014', 6),
(281, 2, '96789014', 8),
(282, 3, '96789014', 9),
(283, 4, '96789014', 10),
(287, 5, '41234569', 3),
(288, 6, '41234569', 3),
(289, 7, '41234569', 8),
(290, 8, '41234569', 7),
(294, 5, '42345670', 4),
(295, 6, '42345670', 9),
(296, 7, '42345670', 10),
(297, 8, '42345670', 4),
(301, 5, '42345678', 10),
(302, 6, '42345678', 7),
(303, 7, '42345678', 3),
(304, 8, '42345678', 4),
(308, 5, '45456021', 2),
(309, 6, '45456021', 5),
(310, 7, '45456021', 9),
(311, 8, '45456021', 10),
(315, 5, '45678903', 3),
(316, 6, '45678903', 2),
(317, 7, '45678903', 2),
(318, 8, '45678903', 4),
(322, 5, '46789012', 3),
(323, 6, '46789012', 1),
(324, 7, '46789012', 6),
(325, 8, '46789012', 7),
(329, 5, '48901236', 8),
(330, 6, '48901236', 6),
(331, 7, '48901236', 5),
(332, 8, '48901236', 8),
(336, 5, '90123456', 5),
(337, 6, '90123456', 2),
(338, 7, '90123456', 2),
(339, 8, '90123456', 6),
(343, 5, '90123458', 3),
(344, 6, '90123458', 4),
(345, 7, '90123458', 4),
(346, 8, '90123458', 6),
(350, 9, '38967892', 6),
(351, 10, '38967892', 2),
(352, 11, '38967892', 3),
(353, 12, '38967892', 8),
(357, 9, '41567892', 2),
(358, 10, '41567892', 4),
(359, 11, '41567892', 4),
(360, 12, '41567892', 8),
(364, 9, '43456789', 5),
(365, 10, '43456789', 2),
(366, 11, '43456789', 5),
(367, 12, '43456789', 10),
(371, 9, '44567890', 4),
(372, 10, '44567890', 7),
(373, 11, '44567890', 5),
(374, 12, '44567890', 2),
(378, 9, '45678901', 7),
(379, 10, '45678901', 6),
(380, 11, '45678901', 1),
(381, 12, '45678901', 5),
(385, 9, '45778903', 2),
(386, 10, '45778903', 5),
(387, 11, '45778903', 10),
(388, 12, '45778903', 4),
(392, 9, '91234567', 7),
(393, 10, '91234567', 3),
(394, 11, '91234567', 5),
(395, 12, '91234567', 6),
(399, 9, '98901234', 2),
(400, 10, '98901234', 4),
(401, 11, '98901234', 2),
(402, 12, '98901234', 9),
(406, 1, '37890125', 1),
(407, 2, '37890125', 5),
(408, 3, '37890125', 8),
(409, 4, '37890125', 8),
(413, 1, '39012347', 3),
(414, 2, '39012347', 1),
(415, 3, '39012347', 7),
(416, 4, '39012347', 10),
(420, 1, '43456781', 9),
(421, 2, '43456781', 3),
(422, 3, '43456781', 6),
(423, 4, '43456781', 4),
(427, 1, '45398679', 2),
(428, 2, '45398679', 4),
(429, 3, '45398679', 6),
(430, 4, '45398679', 7),
(434, 1, '47890123', 8),
(435, 2, '47890123', 6),
(436, 3, '47890123', 5),
(437, 4, '47890123', 8),
(441, 1, '49012345', 3),
(442, 2, '49012345', 3),
(443, 3, '49012345', 3),
(444, 4, '49012345', 8),
(448, 1, '96789014', 7),
(449, 2, '96789014', 4),
(450, 3, '96789014', 6),
(451, 4, '96789014', 8),
(455, 5, '41234569', 10),
(456, 6, '41234569', 9),
(457, 7, '41234569', 2),
(458, 8, '41234569', 4),
(462, 5, '42345670', 2),
(463, 6, '42345670', 7),
(464, 7, '42345670', 10),
(465, 8, '42345670', 10),
(469, 5, '42345678', 8),
(470, 6, '42345678', 10),
(471, 7, '42345678', 5),
(472, 8, '42345678', 6),
(476, 5, '45456021', 5),
(477, 6, '45456021', 4),
(478, 7, '45456021', 6),
(479, 8, '45456021', 9),
(483, 5, '45678903', 6),
(484, 6, '45678903', 3),
(485, 7, '45678903', 5),
(486, 8, '45678903', 4),
(490, 5, '46789012', 8),
(491, 6, '46789012', 4),
(492, 7, '46789012', 8),
(493, 8, '46789012', 8),
(497, 5, '48901236', 6),
(498, 6, '48901236', 3),
(499, 7, '48901236', 8),
(500, 8, '48901236', 1),
(504, 5, '90123456', 1),
(505, 6, '90123456', 2),
(506, 7, '90123456', 7),
(507, 8, '90123456', 7),
(511, 5, '90123458', 2),
(512, 6, '90123458', 9),
(513, 7, '90123458', 8),
(514, 8, '90123458', 5),
(518, 9, '38967892', 10),
(519, 10, '38967892', 3),
(520, 11, '38967892', 6),
(521, 12, '38967892', 10),
(525, 9, '41567892', 4),
(526, 10, '41567892', 6),
(527, 11, '41567892', 8),
(528, 12, '41567892', 2),
(532, 9, '43456789', 7),
(533, 10, '43456789', 6),
(534, 11, '43456789', 10),
(535, 12, '43456789', 3),
(539, 9, '44567890', 4),
(540, 10, '44567890', 2),
(541, 11, '44567890', 6),
(542, 12, '44567890', 2),
(546, 9, '45678901', 3),
(547, 10, '45678901', 8),
(548, 11, '45678901', 1),
(549, 12, '45678901', 8),
(553, 9, '45778903', 10),
(554, 10, '45778903', 4),
(555, 11, '45778903', 9),
(556, 12, '45778903', 4),
(560, 9, '91234567', 2),
(561, 10, '91234567', 8),
(562, 11, '91234567', 3),
(563, 12, '91234567', 2),
(567, 9, '98901234', 1),
(568, 10, '98901234', 6),
(569, 11, '98901234', 9),
(570, 12, '98901234', 7);

--
-- Disparadores `notes`
--
DELIMITER $$
CREATE TRIGGER `update_average_trigger_alumn` AFTER UPDATE ON `notes` FOR EACH ROW BEGIN
    -- Update the average for the alumn when a note is updated
    UPDATE alumn
    SET average = (
        SELECT AVG(note)
        FROM notes
        WHERE alumnId = NEW.alumnId
    )
    WHERE dni = NEW.alumnId;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_average_trigger_notes` AFTER INSERT ON `notes` FOR EACH ROW BEGIN
    -- Update the average for the alumn when a new note is inserted
    UPDATE alumn
    SET average = (
        SELECT AVG(note)
        FROM notes
        WHERE alumnId = NEW.alumnId
    )
    WHERE dni = NEW.alumnId;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `course` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`id`, `name`, `course`) VALUES
(1, 'Mathematics', 1),
(2, 'English', 1),
(3, 'Programming', 1),
(4, 'Physics', 1),
(5, 'Mathematics', 2),
(6, 'English', 2),
(7, 'Programming', 2),
(8, 'Physics', 2),
(9, 'Mathematics', 3),
(10, 'English', 3),
(11, 'Programming', 3),
(12, 'Physics', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `course` (`course`);

--
-- Indices de la tabla `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjectId` (`subjectId`),
  ADD KEY `alumnId` (`alumnId`);

--
-- Indices de la tabla `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course` (`course`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumn`
--
ALTER TABLE `alumn`
  ADD CONSTRAINT `alumn_ibfk_1` FOREIGN KEY (`course`) REFERENCES `course` (`id`);

--
-- Filtros para la tabla `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `notes_ibfk_2` FOREIGN KEY (`alumnId`) REFERENCES `alumn` (`dni`);

--
-- Filtros para la tabla `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`course`) REFERENCES `course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
