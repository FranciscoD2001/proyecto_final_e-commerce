-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2021 a las 08:14:10
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblaudifonos`
--

CREATE TABLE `tblaudifonos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblaudifonos`
--

INSERT INTO `tblaudifonos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Logitech Audífonos Gamer G733', '1739.00', 'Características-\r\nInterfaz del dispositivo: USB-\r\nFrecuencia de auricular: 20 - 20000 Hz-\r\nTecnología de conectividad: Inalámbrico-\r\nColor del producto: Lila', 'https://www.cyberpuerta.mx/img/product/M/CP-LOGITECH-981-000889-1.jpg'),
(2, 'Logitech Audífonos Gamer G Pro', '1609.00', 'Características\r\nInterfaz del dispositivo: 3.5 mm (1/8 \'\')\r\nFrecuencia de auricular: 20 - 20000 Hz\r\nTecnología de conectividad: Alámbrico\r\nLongitud de cable: 2 m\r\nColor del producto: Negro', 'https://www.cyberpuerta.mx/img/product/M/CP-LOGITECH-981-000811-1.jpg'),
(3, 'Corsair Audífonos Gamer', '1789.00', 'Características-\r\nFrecuencia de auricular: 20 - 20000 Hz-\r\nTecnología de conectividad: Inalámbrico-\r\nColor del producto: Negro, Crema de color', 'https://www.cyberpuerta.mx/img/product/M/CP-CORSAIR-CA-9011210-NA-1.jpg'),
(4, 'HyperX Audífonos Gamer Cloud', '1699.00', 'Características-\r\nInterfaz del dispositivo: USB-\r\nFrecuencia de auricular: 20 - 20000 Hz-\r\nTecnología de conectividad: Inalámbrico y alámbrico-\r\nColor del producto: Blanco', 'https://www.cyberpuerta.mx/img/product/M/CP-HYPERX-HHSS1C-KB-WTG-1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblmonitores`
--

CREATE TABLE `tblmonitores` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblmonitores`
--

INSERT INTO `tblmonitores` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Monitor Gamer ASUS TUF', '4629.00', 'Características-\r\nDiagonal de la pantalla: 59,9 cm (23.6\'\')\r\nTipo HD: Full HD-\r\nResolución: 1920 x 1080 Pixeles-\r\nNVIDIA G-Sync: no-\r\nAMD FreeSync: si-\r\nTiempo de respuesta: 1 ms-\r\nVelocidad de actualización: 144 Hz-Cantidad de puertos HDMI: 2-\r\nAltavoces incorporados: si', 'https://www.cyberpuerta.mx/img/product/M/CP-ASUS-90LM0570-B01170-1.jpg'),
(2, 'Monitor Gamer Yeyian', '4999.99', 'Características-\r\nDiagonal de la pantalla: 59,9 cm (23.6 \'\')-\r\nTipo HD: Full HD-\r\nResolución: 1920 x 1080 Pixeles-\r\nNVIDIA G-Sync: no-\r\nAMD FreeSync: si-\r\nTiempo de respuesta: 1 ms-\r\nVelocidad de actualización: 165 Hz-\r\nCantidad de puertos HDMI: 1-\r\nAltavoces incorporados: si-\r\nColor del producto: Negro', 'https://www.cyberpuerta.mx/img/product/M/CP-YEYIAN-YMC-70803-580844.jpg'),
(3, 'Monitor Gamer BenQ', '3279.00', 'Características-\r\nDiagonal de la pantalla: 61 cm (24 \'\')-\r\nTipo HD: Full HD-\r\nResolución: 1920 x 1080 Pixeles-\r\nNVIDIA G-Sync: no-\r\nAMD FreeSync: no-\r\nTiempo de respuesta: 1 ms-\r\nVelocidad de actualización: 75 Hz-\r\nCantidad de puertos HDMI: 1-\r\nAltavoces incorporados: no-\r\nColor del producto: Negro', 'https://www.cyberpuerta.mx/img/product/M/CP-BENQ-9HLHXLBQBL-1.jpg'),
(4, 'Monitor Gamer LG', '6499.00', 'Características-\r\nDiagonal de la pantalla: 68,6 cm (27 \'\')-\r\nTipo HD: 4K Ultra HD-\r\nResolución: 3840 x 2160 Pixeles-\r\nAMD FreeSync: si-\r\nTiempo de respuesta: 5 ms-\r\nVelocidad de actualización: 60 Hz-\r\nCantidad de puertos HDMI: 2-\r\nAltavoces incorporados: no-\r\nColor del producto: Plata', 'https://www.cyberpuerta.mx/img/product/M/CP-LG-27UL500-W-1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpcs`
--

CREATE TABLE `tblpcs` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblpcs`
--

INSERT INTO `tblpcs` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'SSD XPG Spectrix S40G', '850.00', 'Características-\r\nCapacidad: 512 GB-\r\nInterface: PCI Express 3.0-\r\nVelocidad de lectura: 3500 MB/s-\r\nVelocidad de escritura: 3000 MB/s', 'https://www.cyberpuerta.mx/img/product/M/CP-XPG-AS40G-512GT-C-1.jpg'),
(2, 'SSD XPG Spectrix S40G', '2680.00', 'Características-\r\nCapacidad: 1000 GB-\r\nInterface: PCI Express 3.0-\r\nVelocidad de lectura: 3500 MB/s-\r\nVelocidad de escritura: 3000 MB/s', 'https://www.cyberpuerta.mx/img/product/M/CP-XPG-AS40G-512GT-C-1.jpg'),
(3, 'Kit Memoria RAM Corsair', '2499.99', 'Características-\r\nTipo de memoria interna: DDR4-\r\nMemoria interna: 16 GB-\r\nDiseño de memoria: 2 x 8 GB-\r\nVelocidad de memoria del reloj: 3200 MHz-\r\nLatencia CAS: 16', 'https://www.cyberpuerta.mx/img/product/M/CP-CORSAIR-CMW16GX4M2C3200C16-1.jpg'),
(4, 'Memoria RAM Kingston FURY Beast', '919.00', 'Características-\r\nTipo de memoria interna: DDR4-\r\nMemoria interna: 8 GB-\r\nDiseño de memoria: 1 x 8 GB-\r\nVelocidad de memoria del reloj: 3600 MHz-\r\nLatencia CAS: 17', 'https://www.cyberpuerta.mx/img/product/M/CP-KINGSTON-KF432C16BBA8-1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Memoria RAM Kingston FURY Beast                           \r\n', '919.00', 'Características-\r\nTipo de memoria interna: DDR4-\r\nMemoria interna: 8 GB-\r\nDiseño de memoria: 1 x 8 GB-\r\nVelocidad de memoria del reloj: 3600 MHz-\r\nLatencia CAS: 17', 'https://www.cyberpuerta.mx/img/product/M/CP-KINGSTON-KF436C17BBA8-1.jpg'),
(2, 'Kit Memoria RAM Corsair \r\n', '2499.99', 'Características-\r\nTipo de memoria interna: DDR4-\r\nMemoria interna: 16 GB-\r\nDiseño de memoria: 2 x 8 GB-\r\nVelocidad de memoria del reloj: 3600 MHz-\r\nLatencia CAS: 18', 'https://www.cyberpuerta.mx/img/product/M/CP-CORSAIR-CMW16GX4M2C3600C18-1.jpg'),
(3, 'SSD XPG Spectrix S40G\r\n\r\n', '850.00', 'Características-\r\nCapacidad: 512 GB-\r\nInterface: PCI Express 3.0-\r\nVelocidad de lectura: 3500 MB/s-\r\nVelocidad de escritura: 3000 MB/s', 'https://www.cyberpuerta.mx/img/product/M/CP-XPG-AS40G-512GT-C-1.jpg'),
(4, 'SSD XPG Spectrix S40G\r\n\r\n', '2680.00', 'Características-\r\nCapacidad: 1000 GB-\r\nInterface: PCI Express 3.0-\r\nVelocidad de lectura: 3500 MB/s-\r\nVelocidad de escritura: 3000 MB/s', 'https://www.cyberpuerta.mx/img/product/M/CP-XPG-AS40G-1TT-C-1.jpg'),
(5, 'Logitech Audífonos Gamer G733', '1739.00', 'Características-\r\nInterfaz del dispositivo: USB-\r\nFrecuencia de auricular: 20 - 20000 Hz-\r\nTecnología de conectividad: Inalámbrico-\r\nColor del producto: Lila', 'https://www.cyberpuerta.mx/img/product/XL/CP-LOGITECH-981-000889-1.jpg'),
(6, 'Logitech Audífonos Gamer G Pro', '1609.00', 'Características-\r\nInterfaz del dispositivo: 3.5 mm (1/8 \'\')-\r\nFrecuencia de auricular: 20 - 20000 Hz-\r\nTecnología de conectividad: Alámbrico-\r\nLongitud de cable: 2 m-\r\nColor del producto: Negro', 'https://www.cyberpuerta.mx/img/product/M/CP-LOGITECH-981-000811-1.jpg'),
(7, 'HyperX Audífonos Gamer Cloud ', '1699.00', 'Características-\r\nInterfaz del dispositivo: USB-\r\nFrecuencia de auricular: 20 - 20000 Hz-\r\nTecnología de conectividad: Inalámbrico y alámbrico-\r\nColor del producto: Blanco', 'https://www.cyberpuerta.mx/img/product/M/CP-HYPERX-HHSS1C-KB-WTG-1.jpg'),
(8, 'Corsair Audífonos Gamer', '1789.00', 'Características-\r\nFrecuencia de auricular: 20 - 20000 Hz-\r\nTecnología de conectividad: Inalámbrico\r\nColor del producto: Negro, Crema de color', 'https://www.cyberpuerta.mx/img/product/M/CP-CORSAIR-CA-9011210-NA-1.jpg'),
(9, 'Monitor Gamer BenQ', '3279.00', 'Características-\r\nDiagonal de la pantalla: 61 cm (24 \'\')-\r\nTipo HD: Full HD-\r\nResolución: 1920 x 1080 Pixeles-\r\nNVIDIA G-Sync: no-\r\nAMD FreeSync: no-\r\nTiempo de respuesta: 1 ms-\r\nVelocidad de actualización: 75 Hz-\r\nCantidad de puertos HDMI: 1-\r\nAltavoces incorporados: no-\r\nColor del producto: Negro', 'https://www.cyberpuerta.mx/img/product/M/CP-BENQ-9HLHXLBQBL-1.jpg'),
(10, 'Monitor Gamer Yeyian', '4999.99', 'Características-\r\nDiagonal de la pantalla: 59,9 cm (23.6 \'\')-\r\nTipo HD: Full HD-\r\nResolución: 1920 x 1080 Pixeles-\r\nNVIDIA G-Sync: no-\r\nAMD FreeSync: si-\r\nTiempo de respuesta: 1 ms-\r\nVelocidad de actualización: 165 Hz-\r\nCantidad de puertos HDMI: 1-\r\nAltavoces incorporados: si-\r\nColor del producto: Negro', 'https://www.cyberpuerta.mx/img/product/M/CP-YEYIAN-YMC-70803-580844.jpg'),
(11, 'Monitor Gamer LG', '6499.00', 'Características-\r\nDiagonal de la pantalla: 68,6 cm (27 \'\')-\r\nTipo HD: 4K Ultra HD-\r\nResolución: 3840 x 2160 Pixeles-\r\nAMD FreeSync: si-\r\nTiempo de respuesta: 5 ms-\r\nVelocidad de actualización: 60 Hz-\r\nCantidad de puertos HDMI: 2-\r\nAltavoces incorporados: no-\r\nColor del producto: Plata', 'https://www.cyberpuerta.mx/img/product/M/CP-LG-27UL500-W-1.jpg'),
(12, 'Monitor Gamer ASUS TUF', '4629.00', 'Características-\r\nDiagonal de la pantalla: 59,9 cm (23.6 \'\')-\r\nTipo HD: Full HD-\r\nResolución: 1920 x 1080 Pixeles-\r\nNVIDIA G-Sync: no-\r\nAMD FreeSync: si-\r\nTiempo de respuesta: 1 ms-\r\nVelocidad de actualización: 144 Hz-\r\nCantidad de puertos HDMI: 2-\r\nAltavoces incorporados: si', 'https://www.cyberpuerta.mx/img/product/M/CP-ASUS-90LM0570-B01170-1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT 'nombre',
  `email` varchar(255) NOT NULL DEFAULT 'email',
  `password` varchar(255) NOT NULL DEFAULT 'password'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(4, 'jdominguez_19', 'jesus_enrique_500@hotmail.com', '202cb962ac59075b964b07152d234b70'),
(7, 'fdiaz_19', 'fj.dp21@gmail.com', '4d186321c1a7f0f354b297e8914ab240');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tblaudifonos`
--
ALTER TABLE `tblaudifonos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblmonitores`
--
ALTER TABLE `tblmonitores`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblpcs`
--
ALTER TABLE `tblpcs`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tblaudifonos`
--
ALTER TABLE `tblaudifonos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tblmonitores`
--
ALTER TABLE `tblmonitores`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tblpcs`
--
ALTER TABLE `tblpcs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
