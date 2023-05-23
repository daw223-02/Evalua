DROP DATABASE IF EXISTS evalua2;
CREATE DATABASE IF NOT EXISTS evalua2;
USE evalua2;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2023 a las 19:13:56
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evalua2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Nombre` varchar(60) NOT NULL,
  `Apellidos` varchar(60) DEFAULT 'NULL',
  `Nombre_Familiar1` varchar(60) NOT NULL,
  `Apellidos_Familiar1` varchar(60) DEFAULT 'NULL',
  `Nombre_Familiar2` varchar(60) DEFAULT 'NULL',
  `Apellidos_Familiar2` varchar(60) DEFAULT 'NULL',
  `Direccion` varchar(60) DEFAULT 'NULL',
  `Email` varchar(60) DEFAULT 'NULL',
  `Telefono1` varchar(10) NOT NULL,
  `Telefono2` varchar(10) DEFAULT 'NULL',
  `Observaciones` varchar(500) DEFAULT 'NULL',
  `Curso` varchar(30) NOT NULL,
  `id` int(10) NOT NULL,
  `id_Profesor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Nombre`, `Apellidos`, `Nombre_Familiar1`, `Apellidos_Familiar1`, `Nombre_Familiar2`, `Apellidos_Familiar2`, `Direccion`, `Email`, `Telefono1`, `Telefono2`, `Observaciones`, `Curso`, `id`, `id_Profesor`) VALUES
('Raul', 'Bragado Sanz', 'Pedro', 'NULL', 'NULL', 'NULL', 'C/Eusebio gonzalez Nº13 2ºB', 'pedro@gmail.com', '489512634', 'NULL', 'NULL', '2ºA', 1, 1),
('Adrian', 'Cano Martin', 'Juan Carlos', 'NULL', 'NULL', 'NULL', 'C/Misericordia Nº13 2ºB', 'Juancar@gmail.com', '485125698', 'NULL', 'NULL', '2ºA', 2, 1),
('Miguel', 'Cañibano Centeno', 'Marisol', 'NULL', 'NULL', 'NULL', 'C/Misericordia Nº5 4ºD', 'Marisol@gmail.com', '458154784', 'NULL', 'NULL', '2ºA', 3, 1),
('Balbino', 'Martinez Rodriguez', 'Balbino', 'NULL', 'NULL', 'NULL', 'C/Gregorio Marañon Nº15 Atico B', 'Balbino@gmail.com', '471256895', 'NULL', 'NULL', '2ºB', 4, 1),
('Alfonso', 'Miguel de la torre', 'Navarro', 'NULL', 'NULL', 'NULL', 'C/Guadalajara Nº13 2ºB', 'Erminio@gmail.com', '256481543', 'NULL', 'NULL', '2ºB', 5, 1),
('Alvaro', 'Manzano', 'Sergio', 'NULL', 'NULL', 'NULL', 'C/Acero Nº6 2ºB', 'Ministro@gmail.com', '897456213', 'NULL', 'NULL', '2ºB', 6, 1),
('Hernesto', 'Gomez Gutierrez', 'Paco', 'Gomez', '', '', 'C/ Vidal Nº4', 'paquito@gmail.com', '478451258', '', '', '2ºA', 9, 1),
('Alonso', 'Furioso', '', '', '', '', '', '', '', '', '', '3ºB', 10, 3),
('Ernesto', 'Mejide', '', '', '', '', '', '', '', '', '', '3ºB', 11, 3),
('David', 'Reglero Santaolaya', 'Carlos', 'Reglero', 'Carmen', 'Santaolaya', 'C/ Central Nº13', 'reglero@gmail.com', '548762103', '', '', '1ºA', 13, 4),
('Javier', 'Linares Herrero', 'Melchor', 'Linares', 'Mercedes', 'Herrero', 'C/ Julián Diaz Nº3 4ºB', 'linares@gmail.com', '584623185', '', 'TDH', '1ºA', 14, 4),
('Lydia', 'Tejedor García', 'Carlos', 'Tejedor', 'Sonia', 'García', 'C/ Júcar Nº12', 'LydiaTejedor@gmail.com', '251369845', '472156325', '', '1ºA', 15, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `Nombre` varchar(60) NOT NULL,
  `Nombre_alumnos` varchar(3000) NOT NULL,
  `Nombre_curso` varchar(30) NOT NULL,
  `id_Profesor` int(10) DEFAULT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`Nombre`, `Nombre_alumnos`, `Nombre_curso`, `id_Profesor`, `id`) VALUES
('Matematicas', '', '', 1, 1),
('Lengua', '', '', 1, 2),
('Ciencias Sociales', '', '', 1, 3),
('Ingles', '', '', 1, 4),
('Art', '', '', 1, 5),
('Lengua', 'Raul Bragado Sanz,Adrian Cano Martin,Miguel Cañibano Centeno,Hernesto Gomez Gutierrez', '2ºA', 1, 9),
('Matematicas', 'Raul Bragado Sanz,Adrian Cano Martin,Miguel Cañibano Centeno,Hernesto Gomez Gutierrez', '2ºA', 1, 15),
('Mates2', 'Raul Bragado Sanz,Adrian Cano Martin,Miguel Cañibano Centeno,Hernesto Gomez Gutierrez', '2ºA', 1, 16),
('Lengua2', 'Adrian Cano Martin,Miguel Cañibano Centeno,Raul Bragado Sanz', '2ºA', 1, 17),
('Quimica Avanzada', 'Alonso Furioso ,Ernesto Mejide ', '3ºB', 3, 18),
('Matemáticas', 'David Reglero Santaolaya,Javier Linares Herrero,Lydia Tejedor García', '1ºA', 4, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `Nombre` varchar(60) NOT NULL DEFAULT '''''''Calificaciones''''''',
  `Tabla` varchar(6000) NOT NULL,
  `Asignatura` varchar(60) NOT NULL,
  `Curso` varchar(30) NOT NULL,
  `id_Profesor` int(5) DEFAULT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`Nombre`, `Tabla`, `Asignatura`, `Curso`, `id_Profesor`, `id`) VALUES
('PruebaLengua', '?!?Excelente?!?Regular?!?Mal?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa?!?aaaaaaaaaaaaaaaaaaaa', 'Lengua', '2ºA', 1, 6),
('Prueba_Sin_Espacios', '?!?Excelente?!?Regular?!?Mal?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeeeeee', 'Lengua', '2ºA', 1, 8),
('SinEspacio', '?!?Excelente?!?Regular?!?Mal?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee?!?eeeeeeeeeeeeeeee', 'Lengua', '2ºA', 1, 10),
('Con_Espacios', '?!?Excelente?!?Regular?!?Mal?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrr', 'Lengua', '2ºA', 1, 12),
('Nuriafernandeztoribio', '?!?Excelente?!?Notable?!?Regular?!?Mal?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt?!?ttttttttttttttttttttt', 'Lengua', '2ºA', 1, 13),
('Avanzadilla', '?!?Excelente?!?Regular?!?Mal?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr', 'Quimica Avanzada', '3ºB', 3, 14),
('AvanzadillaDocker', '?!?Excelente?!?Regular?!?Mal?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr?!?rrrrrrrrrrrrrrrrrrrrrrr', 'Quimica Avanzada', '3ºB', 3, 18),
('Comportamiento', '?!?Excelente?!?Regular?!?Mal?!?Ayuda a sus compañeros?!?Siempre?!?A veces?!?Nunca?!?Habla en clase?!?Solo cuando se le permite?!?Interrumpe alguna vez?!?Siempre está hablando a destiempo?!?Mantiene su zona limpia?!?Es muy limpio y ordenado?!?Con frecuencia se encuentra suciedad a su alrededor?!?Nuca limpia su zona', 'Matemáticas', '1ºA', 4, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `Nombre` varchar(30) NOT NULL,
  `id` int(10) NOT NULL,
  `id_Profesor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`Nombre`, `id`, `id_Profesor`) VALUES
('2ºA', 1, 1),
('2ºB', 2, 1),
('3ºB', 3, 3),
('1ºA', 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `Nombre_Alumnos` varchar(60) NOT NULL,
  `Nota` int(4) NOT NULL,
  `Nombre_Calificacion` varchar(60) NOT NULL,
  `Asignatura` varchar(60) NOT NULL,
  `Curso` varchar(30) NOT NULL,
  `id_Profesor` int(5) NOT NULL,
  `ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`Nombre_Alumnos`, `Nota`, `Nombre_Calificacion`, `Asignatura`, `Curso`, `id_Profesor`, `ID`) VALUES
('Adrian Cano Martin', 10, 'PruebaLengua', 'Lengua', '2ºA', 1, 2),
('Hernesto Gomez Gutie', 2, 'PruebaLengua', 'Lengua', '2ºA', 1, 3),
('Miguel Cañibano Cent', 6, 'PruebaLengua', 'Lengua', '2ºA', 1, 4),
('Raul Bragado Sanz', 6, 'PruebaLengua', 'Lengua', '2ºA', 1, 5),
('Adrian Cano Martin', 10, 'Prueba_Sin_Espacios', 'Lengua', '2ºA', 1, 6),
('Hernesto Gomez Gutie', 4, 'Prueba_Sin_Espacios', 'Lengua', '2ºA', 1, 7),
('Miguel Cañibano Cent', 6, 'Prueba_Sin_Espacios', 'Lengua', '2ºA', 1, 8),
('Raul Bragado Sanz', 0, 'Prueba_Sin_Espacios', 'Lengua', '2ºA', 1, 9),
('Adrian Cano Martin', 0, 'Con_Espacios', 'Lengua', '2ºA', 1, 13),
('Hernesto Gomez Gutie', 10, 'Con_Espacios', 'Lengua', '2ºA', 1, 14),
('Miguel Cañibano Cent', 0, 'Con_Espacios', 'Lengua', '2ºA', 1, 15),
('Raul Bragado Sanz', 0, 'Con_Espacios', 'Lengua', '2ºA', 1, 16),
('Adrian Cano Martin', 7, 'Nuriafernandeztoribio', 'Lengua', '2ºA', 1, 17),
('Hernesto Gomez Gutie', 0, 'Nuriafernandeztoribio', 'Lengua', '2ºA', 1, 18),
('Miguel Cañibano Cent', 0, 'Nuriafernandeztoribio', 'Lengua', '2ºA', 1, 19),
('Raul Bragado Sanz', 0, 'Nuriafernandeztoribio', 'Lengua', '2ºA', 1, 20),
('Alonso Furioso ', 10, 'Avanzadilla', 'Quimica Avanzada', '3ºB', 3, 21),
('Ernesto Mejide ', 2, 'Avanzadilla', 'Quimica Avanzada', '3ºB', 3, 22),
('Alonso Furioso ', 10, 'AvanzadillaDocker', 'Quimica Avanzada', '3ºB', 3, 23),
('Ernesto Mejide ', 0, 'AvanzadillaDocker', 'Quimica Avanzada', '3ºB', 3, 24),
('David Reglero Santao', 5, 'Comportamiento', 'Matemáticas', '1ºA', 4, 25),
('Javier Linares Herre', 9, 'Comportamiento', 'Matemáticas', '1ºA', 4, 26),
('Lydia Tejedor García', 7, 'Comportamiento', 'Matemáticas', '1ºA', 4, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `Nombre` varchar(60) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Clave` varchar(1000) NOT NULL,
  `Telefono` varchar(10) DEFAULT '999999999',
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`Nombre`, `Email`, `Clave`, `Telefono`, `id`) VALUES
('pepe', 'pepe@gmail.com', 'pepe', '458762315', 1),
('mar', 'mar@gmail.com', 'mar', '478516243', 2),
('Balbi', 'balbin@gmail.com', 'balbin', '475812635', 3),
('Nuria', 'Nuria@gmail.com', 'Evalua1234', '547852136', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubricas_generales`
--

CREATE TABLE `rubricas_generales` (
  `id` int(10) NOT NULL,
  `Nombre` varchar(60) DEFAULT 'nombre_rubrica',
  `Contenido` varchar(6000) NOT NULL,
  `id_Profesor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Profesor` (`id_Profesor`);

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Profesor` (`id_Profesor`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Profesor` (`id_Profesor`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Profesor` (`id_Profesor`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rubricas_generales`
--
ALTER TABLE `rubricas_generales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Profesor` (`id_Profesor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `rubricas_generales`
--
ALTER TABLE `rubricas_generales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_Profesor`) REFERENCES `profesores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD CONSTRAINT `asignaturas_ibfk_1` FOREIGN KEY (`id_Profesor`) REFERENCES `profesores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_Profesor`) REFERENCES `profesores` (`id`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`id_Profesor`) REFERENCES `profesores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rubricas_generales`
--
ALTER TABLE `rubricas_generales`
  ADD CONSTRAINT `rubricas_generales_ibfk_1` FOREIGN KEY (`id_Profesor`) REFERENCES `profesores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE USER 'balbino'@'%' IDENTIFIED BY 'pass1234';
GRANT ALL PRIVILEGES ON *.* TO 'balbino'@'%';

-- Habilitar conexiones remotas
UPDATE mysql.user SET Host='%' WHERE User='balbino';
FLUSH PRIVILEGES;

ALTER USER 'balbino' IDENTIFIED WITH mysql_native_password BY 'pass1234';
