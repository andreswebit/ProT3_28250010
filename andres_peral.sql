-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2024 a las 19:12:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `andres_peral`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id_perfiles` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id_perfiles`, `descripcion`) VALUES
(1, 'admin'),
(2, 'cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `baja` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `baja`) VALUES
(1, 'Juan', 'Perez', 'juanperez', 'perez@gmail.com', '$2y$10$kMp42fN2K/6P7AR//MLvxe.WONaIoeJOplCnvY9hLnOFol3A/H8v6', 1, 'NO'),
(2, 'Maria', 'Rodriguez', 'maria', 'maria@gmail.com', '$2y$10$5lkMzGAmSJQifr3mzQqvOOi90DqvScBpGETAwrJPzan.Kwq0ZKlE.', 1, 'NO'),
(3, 'Pedro ', 'Gomez', 'pedro', 'gomez@gmail.com', '$2y$10$QO0roNg3Ih4J9zLO80MXTe95aZf6/0BwWLNIjYFoiVUwPYjEb3DtO', 2, 'NO'),
(4, 'Roberto', 'Arias', 'rober', 'roberto@gmail.com', '$2y$10$u2pgS3r/deP9fJ3mb.yK.OAh.Fkb.ObF23Ez8SqquYxdHjoxhnbpO', 2, 'NO'),
(5, 'alberto', 'olmedo', 'aolmedo', 'olmedo@gmail.com', '$2y$10$EAkN4r5lR6o8s6fgHIk0v.jve6xSAsXRf9ouuB9LxfgtlPMZfZMkS', 2, 'NO'),
(6, 'alberto', 'olmedo', 'aolmedo101', 'olmedo101@gmail.com', '$2y$10$0mPXaibpLx1zGK4GiQERHeq1i.F1u5iz9wXn0oPKOEATkufzObDzy', 2, 'NO'),
(7, 'alberto', 'olmedo', 'aolmedo102', 'olmedo102@gmail.com', '$2y$10$GH0vRX6ZmYtxV4Dvf0l0OuCi5Sd56tRbPJ1c4/QVSvnH7NKf61qCS', 2, 'NO'),
(8, 'alberto', 'olmedo', 'aolmedo103', 'olmedo103@gmail.com', '$2y$10$/lNJ6TGcii9iw.AxUc6LW.gQ9xGwE9H.GKAVLGFeoS7M2ZL69XFBC', 2, 'NO'),
(9, 'mariano', 'yudica', 'mariano1', 'mariano@gmail.com', '$2y$10$K8DBwACq3Cr1a37I54cI4Ouwr55Oa9RSdkkXQWkAWyyxOQPdNvWNS', 2, 'NO'),
(10, 'Pedro', 'Old', 'pedro', 'pedro@gmail.com', '$2y$10$IDmZlVpPa511lUArFMBP1.na1cmT30kEk2PgIEdQ7BO/IHZ1XmUvG', 2, 'NO'),
(11, 'Juan', 'palote', 'palote', 'palote@gmail.com', '$2y$10$m6UdFD4zTD71gagh3qtvN.AGY.Rh77rsVfwDWxloHGs5M3Zi.2Pd.', 2, 'NO'),
(12, 'mario', 'mario', 'mario1', 'mario@gmail.com', '$2y$10$sT6pTB9amZHft6T08oYjNuoU7Zcbh.Uz8DDKAShaMKrb6LuoNpQHa', 2, 'NO'),
(13, 'pancho', 'villa', 'villa', 'villa@gmail.com', '$2y$10$5BRfBpmzvtfAPxxUa/nZBOa1ma2w5jBAOwUhYI/TXSz6ybIA0Q3Hy', 2, 'NO'),
(14, 'esteban', 'quito', 'quito', 'quito@gmail.com', '$2y$10$VIAdAzQRQZTM6obS76DcguiloIIPPsZciwo7dTeZoQOyB9cwdY2Fm', 2, 'NO'),
(15, 'julio', 'uno', 'unodejulio', 'uno@gmail.com', '$2y$10$YUUf8Xdi37ZieX2x9/GEtOfmYRBLWh7f0O7Z9EOQIRm9adxB.SJOG', 2, 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id_perfiles`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id_perfiles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
