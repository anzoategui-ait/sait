-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2022 a las 22:14:37
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sait`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `actividad_id` int(11) NOT NULL,
  `actividad_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `actividad_descripcion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `actividad_imagen` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `indicador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `actividad`
--

TRUNCATE TABLE `actividad`;
--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`actividad_id`, `actividad_nombre`, `actividad_descripcion`, `actividad_imagen`, `categoria_id`, `indicador_id`) VALUES
(1, 'Examen de Laboratorio', 'Examen de laboratorio no especializado', '1645049322 examenlaboratorio.jpg', 1, 4),
(2, 'Bolsa de Alimento', 'Entrega de bolsas de alimentos', '1645093852 bolsasdecomida.jpg', 1, 2),
(3, 'Solicitud de Medicamentos', 'Solicitud de medicamentos', '1645093884 solicitudmedicamentos.jpg', 1, 3),
(4, 'Canastilla', 'Solcitud de canastillas', '1645049497 canastilla2022.jpg', 1, 2),
(5, 'Electrodomesticos', 'Entrega de electrodomesticos', '1645049620 electrodomesticos.jpg', 1, 4),
(6, 'Electronicos', 'Entrega de Equipos Electronicos', '1645049672 electronicos.jpg', 1, 4),
(7, 'Audiencia con el gobernador', 'Se realiza la audiencia con el gobernador', '1648654547 ag01.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activo_usuario`
--

CREATE TABLE `activo_usuario` (
  `activo_usuario_id` int(11) NOT NULL,
  `activo_codigo` int(11) NOT NULL,
  `usuario_cedula` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `activo_usuario_concepto` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `activo_usuario_tipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `activo_usuario_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `activo_usuario`
--

TRUNCATE TABLE `activo_usuario`;
--
-- Volcado de datos para la tabla `activo_usuario`
--

INSERT INTO `activo_usuario` (`activo_usuario_id`, `activo_codigo`, `usuario_cedula`, `activo_usuario_concepto`, `activo_usuario_tipo`, `activo_usuario_fecha`) VALUES
(1, 21332433, '23989776', 'haciendo la primera prueba de vincular un activo a un usuario', '1', '2022-05-21'),
(2, 21332433, '23989776', 'probando relacion y validacion', '2', '2022-05-21'),
(10, 23322332, '21332112321', 'probando', '2', '2022-05-24'),
(11, 23322332, '21332112321', 'haciendo prueba', '1', '2022-05-24'),
(12, 23322332, '21332112321', 'haciendo prueba cuando ya un equipo esta vinculado', '2', '2022-05-24'),
(14, 23322332, '21332112321', 'probando vincular el mismo eqipo', '1', '2022-05-24'),
(15, 23322332, '21332112321', 'probando desvincular', '2', '2022-05-24'),
(16, 23322332, '21332112321', 'probando', '1', '2022-05-24'),
(17, 23322332, '213332123', 'probando', '2', '2022-05-24'),
(18, 23322332, '23324324', 'probando que vincule cuando ya hay otro vinculado', '2', '2022-05-24'),
(19, 23322332, '21332112321', 'agregar una nueva relacion que desvincule', '2', '2022-05-24'),
(20, 23322332, '23324324', 'proband', '1', '2022-05-24'),
(21, 23322332, '21332112321', 'desvinculando usuario', '2', '2022-05-24'),
(22, 6786, '23989776', 'probando vinculacion', '1', '2022-05-24'),
(23, 21332434, '213332123', 'probando otra vinculacion en el sistema', '1', '2022-05-24'),
(24, 342342, '31232133123', 'probando otra desvinculacion', '2', '2022-05-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activo_usuario_status`
--

CREATE TABLE `activo_usuario_status` (
  `activo_usuario_status_id` int(11) NOT NULL,
  `usuario_cedula` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_codigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `activo_usuario_status`
--

TRUNCATE TABLE `activo_usuario_status`;
--
-- Volcado de datos para la tabla `activo_usuario_status`
--

INSERT INTO `activo_usuario_status` (`activo_usuario_status_id`, `usuario_cedula`, `producto_codigo`, `estado`) VALUES
(4, '23324324', '23322332', '1'),
(5, '21332112321', '23322332', '2'),
(6, '23989776', '6786', '1'),
(7, '213332123', '21332434', '1'),
(8, '31232133123', '342342', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anexo`
--

CREATE TABLE `anexo` (
  `anexo_id` int(11) NOT NULL,
  `anexo_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `anexo_archivo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `paso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `anexo`
--

TRUNCATE TABLE `anexo`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `asignacion_id` int(11) NOT NULL,
  `solicitud_actividad` int(11) NOT NULL,
  `asignado_a` int(11) NOT NULL,
  `asignado_por` int(11) NOT NULL,
  `asignacion_fecha` datetime NOT NULL,
  `asignacion_observacion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `asignacion`
--

TRUNCATE TABLE `asignacion`;
--
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`asignacion_id`, `solicitud_actividad`, `asignado_a`, `asignado_por`, `asignacion_fecha`, `asignacion_observacion`) VALUES
(1, 1, 10075, 1, '2022-03-30 11:51:11', 'a la brevedad posible'),
(2, 9, 10075, 1, '2022-04-26 11:13:36', 'primera actividad de una sola solicitud'),
(3, 8, 10077, 1, '2019-04-26 17:35:32', 'probando otra actividad de una sola solicitud'),
(4, 16, 10079, 10080, '2020-05-16 14:18:05', 'prueba de instalacion de impresoras'),
(5, 20, 10079, 1, '2020-05-16 15:01:59', 'primera de dos actividades a realizar'),
(6, 19, 10079, 1, '2021-05-16 15:05:28', 'segunda actividad que proviene de la misma solicitud'),
(7, 3, 10075, 1, '2021-05-16 12:05:39', 'realizar'),
(8, 2, 10075, 1, '2022-01-11 14:05:49', 'realziar'),
(9, 11, 10079, 1, '2022-03-11 13:06:03', 'rpobando'),
(10, 22, 10079, 10080, '2022-02-13 14:10:35', 'realizar la conprobacion y reinstalacion del internet'),
(11, 24, 10075, 1, '2022-05-29 09:56:55', 'REALIZANDO EL PROCESO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `bitacora_id` int(11) NOT NULL,
  `bitacora_fecha` datetime NOT NULL,
  `bitacora_accion` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `bitacora`
--

TRUNCATE TABLE `bitacora`;
--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`bitacora_id`, `bitacora_fecha`, `bitacora_accion`, `usuario_id`) VALUES
(1, '2022-03-29 06:30:36', 'Inicio de Sesion', 1),
(2, '2022-03-29 06:32:13', 'Inicio de Sesion', 1),
(3, '2022-03-30 11:29:02', 'Inicio de Sesion', 1),
(4, '2022-03-30 11:34:19', 'Creacion de nuevo indicador: Solicitudes Tramitadas', 1),
(5, '2022-03-30 11:35:47', 'Creacion de nueva actividad: Audiencia con el gobernador', 1),
(6, '2022-03-30 11:35:57', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(7, '2022-03-30 11:37:55', 'Creacion de nuevo sector: Sector El Espejo', 1),
(8, '2022-03-30 11:37:59', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(9, '2022-03-30 11:39:39', 'Creacion de nueva direccion: Despacho del Gobernador', 1),
(10, '2022-03-30 11:39:45', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(11, '2022-03-30 11:41:34', 'Actualizo la siguiente solicitud: Quiero hablar con el gobernador', 1),
(12, '2022-03-30 11:42:01', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(13, '2022-03-30 11:42:16', 'Visualizo el listado de solicitud', 1),
(14, '2022-03-30 11:43:20', 'Creacion de un nuevo paso: pso uno consultar con jefe de despacho disponibilidad del gobernador', 1),
(15, '2022-03-30 11:43:41', 'Creacion de un nuevo paso: llamar o noificar al ciudadano', 1),
(16, '2022-03-30 11:44:22', 'Creacion de un nuevo paso: direccionar solicitud', 1),
(17, '2022-03-30 11:44:25', 'Visualizo el listado de solicitud', 1),
(18, '2022-03-30 11:48:31', 'Inicio de Sesion', 10075),
(19, '2022-03-30 11:48:58', 'Inicio de Sesion', 10075),
(20, '2022-03-30 11:50:16', 'Visualizo el listado de asignaciones', 10075),
(21, '2022-03-30 11:50:21', 'Visualizo el listado de asignaciones', 10075),
(22, '2022-03-30 11:50:24', 'Visualizo el listado de asignaciones', 10075),
(23, '2022-03-30 11:50:44', 'Inicio de Sesion', 1),
(24, '2022-03-30 11:50:48', 'Visualizo el listado de solicitud', 1),
(25, '2022-03-30 11:51:12', 'Creacion de nueva asignacion: a la brevedad posible', 1),
(26, '2022-03-30 11:51:12', 'Visualizo el listado de solicitud', 1),
(27, '2022-03-30 11:51:26', 'Visualizo el listado de asignaciones', 1),
(28, '2022-03-30 11:51:42', 'Visualizo el listado de asignaciones', 1),
(29, '2022-03-30 11:51:49', 'Visualizo el listado de solicitud', 1),
(30, '2022-03-30 11:51:55', 'Visualizo el listado de solicitud', 1),
(31, '2022-03-30 11:52:18', 'Inicio de Sesion', 10075),
(32, '2022-03-30 11:53:45', 'Visualizo el listado de asignaciones', 10075),
(33, '2022-03-30 11:54:39', 'Creacion de nuevo paso procesado: se realizo la actividad, y se planifico para el dia miercoles proximo', 10075),
(34, '2022-03-30 11:54:59', 'Creacion de nuevo paso procesado: no se logro comunicacion y se envio correo electronico', 10075),
(35, '2022-03-30 11:55:51', 'Creacion de nuevo paso procesado: se llevo se lo datos con el encargado', 10075),
(36, '2022-03-30 11:59:56', 'Asignacion finalizada: 1', 10075),
(37, '2022-03-30 12:00:54', 'Inicio de Sesion', 1),
(38, '2022-03-30 12:05:34', 'Visualizo el listado de actividades', 1),
(39, '2022-03-30 12:05:40', 'Visualizo el listado de actividades', 1),
(40, '2022-03-30 12:06:01', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(41, '2022-03-30 12:06:02', 'Visualizo el listado de solicitud', 1),
(42, '2022-03-30 12:08:59', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(43, '2022-03-30 12:09:02', 'Visualizo el listado de solicitud', 1),
(44, '2022-04-01 11:37:03', 'Inicio de Sesion', 1),
(45, '2022-04-01 11:40:21', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(46, '2022-04-01 11:43:37', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(47, '2022-04-25 16:51:08', 'Inicio de Sesion', 1),
(48, '2022-04-26 16:13:40', 'Inicio de Sesion', 1),
(49, '2022-04-26 16:24:11', 'Visualizo el listado de asignaciones', 1),
(50, '2022-04-26 17:00:37', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(51, '2022-04-26 17:00:41', 'Visualizo el listado de solicitud', 1),
(52, '2022-04-26 17:01:35', 'Creacion de nueva solicitud: probando dos actividades en una sola solicitud', 1),
(53, '2022-04-26 17:01:40', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(54, '2022-04-26 17:02:01', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(55, '2022-04-26 17:02:57', 'Creacion de un nuevo paso: realizar entrega', 1),
(56, '2022-04-26 17:03:17', 'Creacion de nueva solicitud: probando dos solicitudes', 1),
(57, '2022-04-26 17:03:22', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(58, '2022-04-26 17:04:42', 'Visualizo el listado de solicitud', 1),
(59, '2022-04-26 17:05:49', 'Creacion de nuevo sector: paseo de la cruz y el mar', 1),
(60, '2022-04-26 17:09:08', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(61, '2022-04-26 17:09:41', 'Visualizo el listado de solicitud', 1),
(62, '2022-04-26 17:10:01', 'Actualizo la siguiente solicitud: probando dos solicitudes', 1),
(63, '2022-04-26 17:10:06', 'Visualizo el listado de solicitud', 1),
(64, '2022-04-26 17:10:18', 'Visualizo el listado de asignaciones', 1),
(65, '2022-04-26 17:10:23', 'Visualizo el listado de solicitud', 1),
(66, '2022-04-26 17:12:00', 'Visualizo el listado de asignaciones', 1),
(67, '2022-04-26 17:12:09', 'Visualizo el listado de asignaciones', 1),
(68, '2022-04-26 17:12:11', 'Visualizo el listado de solicitud', 1),
(69, '2022-04-26 17:12:13', 'Visualizo el listado de asignaciones', 1),
(70, '2022-04-26 17:12:19', 'Visualizo el listado de solicitud', 1),
(71, '2022-04-26 17:13:36', 'Creacion de nueva asignacion: primera actividad de una sola solicitud', 1),
(72, '2022-04-26 17:13:36', 'Visualizo el listado de solicitud', 1),
(73, '2022-04-26 17:13:42', 'Visualizo el listado de asignaciones', 1),
(74, '2022-04-26 17:15:28', 'Visualizo el listado de asignaciones', 1),
(75, '2022-04-26 17:15:41', 'Visualizo el listado de asignaciones', 1),
(76, '2022-04-26 17:15:48', 'Visualizo el listado de solicitud', 1),
(77, '2022-04-26 17:34:31', 'Visualizo el listado de asignaciones', 1),
(78, '2022-04-26 17:34:41', 'Visualizo el listado de asignaciones', 1),
(79, '2022-04-26 17:34:43', 'Visualizo el listado de asignaciones', 1),
(80, '2022-04-26 17:34:57', 'Visualizo el listado de asignaciones', 1),
(81, '2022-04-26 17:34:59', 'Visualizo el listado de solicitud', 1),
(82, '2022-04-26 17:35:32', 'Creacion de nueva asignacion: probando otra actividad de una sola solicitud', 1),
(83, '2022-04-26 17:35:33', 'Visualizo el listado de solicitud', 1),
(84, '2022-05-09 12:06:44', 'Inicio de Sesion', 1),
(85, '2022-05-09 14:25:57', 'Inicio de Sesion', 1),
(86, '2022-05-10 05:10:19', 'Inicio de Sesion', 1),
(87, '2022-05-10 05:11:59', 'Visualizo el listado de direcciones', 1),
(88, '2022-05-10 05:13:25', 'Inicio de Sesion', 1),
(89, '2022-05-10 06:33:59', 'Visualizo el listado de solicitud', 1),
(90, '2022-05-10 06:34:18', 'Visualizo el listado de asignaciones', 1),
(91, '2022-05-11 05:32:55', 'Inicio de Sesion', 1),
(92, '2022-05-11 05:41:02', 'Visualizo el listado de solicitud', 1),
(93, '2022-05-11 05:41:14', 'Visualizo el listado de solicitud', 1),
(94, '2022-05-16 12:43:21', 'Inicio de Sesion', 1),
(95, '2022-05-16 12:55:00', 'Visualizo el listado de solicitud', 1),
(96, '2022-05-16 12:55:07', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(97, '2022-05-16 12:55:13', 'Visualizo el listado de solicitud', 1),
(98, '2022-05-16 13:02:08', 'Inicio de Sesion', 10078),
(99, '2022-05-16 13:02:22', 'Visualizo el listado de solicitud', 10078),
(100, '2022-05-16 13:02:55', 'Creacion de nueva solicitud: Instalacion de impresora', 10078),
(101, '2022-05-16 13:04:16', 'Visualizo el listado de solicitud', 10078),
(102, '2022-05-16 13:04:36', 'Hizo la siguiente busqueda: instalacion en el listado de solicitud', 10078),
(103, '2022-05-16 13:04:38', 'Visualizo el listado de solicitud', 10078),
(104, '2022-05-16 13:04:46', 'Visualizo el listado de solicitud', 10078),
(105, '2022-05-16 13:05:21', 'Inicio de Sesion', 10079),
(106, '2022-05-16 13:06:11', 'Inicio de Sesion', 10080),
(107, '2022-05-16 13:06:27', 'Visualizo el listado de solicitud', 10080),
(108, '2022-05-16 13:06:57', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(109, '2022-05-16 13:07:18', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(110, '2022-05-16 13:07:47', 'Visualizo el listado de solicitud', 10080),
(111, '2022-05-16 13:07:59', 'Visualizo el listado de asignaciones', 10080),
(112, '2022-05-16 13:08:27', 'Visualizo el listado de solicitud', 10080),
(113, '2022-05-16 13:09:12', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(114, '2022-05-16 13:10:12', 'Visualizo el listado de asignaciones', 1),
(115, '2022-05-16 13:10:21', 'Visualizo el listado de solicitud', 1),
(116, '2022-05-16 13:11:27', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(117, '2022-05-16 13:11:44', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(118, '2022-05-16 13:12:20', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(119, '2022-05-16 13:13:14', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(120, '2022-05-16 13:14:17', 'Creacion de nuevo sector: Bergantin', 1),
(121, '2022-05-16 13:14:22', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(122, '2022-05-16 13:15:01', 'Creacion de nueva direccion: Dimisoc', 1),
(123, '2022-05-16 13:15:04', 'Visualizo el listado de direcciones', 1),
(124, '2022-05-16 13:15:10', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(125, '2022-05-16 13:15:42', 'Actualizo la siguiente solicitud: quiero a trabajar con amado', 1),
(126, '2022-05-16 13:15:51', 'Visualizo el listado de asignaciones', 1),
(127, '2022-05-16 13:16:02', 'Visualizo el listado de solicitud', 1),
(128, '2022-05-16 13:16:12', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(129, '2022-05-16 13:16:30', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(130, '2022-05-16 13:16:31', 'Visualizo el listado de solicitud', 1),
(131, '2022-05-16 13:16:43', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(132, '2022-05-16 13:18:17', 'Visualizo el listado de cargos', 1),
(133, '2022-05-16 13:18:32', 'Creacion de nuevo cargo: analista', 1),
(134, '2022-05-16 13:18:46', 'Creacion de nuevo cargo: jefe logistica', 1),
(135, '2022-05-16 13:18:49', 'Visualizo el listado de cargos', 1),
(136, '2022-05-16 13:19:08', 'Visualizo el listado de asignaciones', 1),
(137, '2022-05-16 13:20:07', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(138, '2022-05-16 13:21:04', 'Inicio de Sesion', 10078),
(139, '2022-05-16 13:21:32', 'Creacion de nueva solicitud: Prueba Segunda Solicitud', 10078),
(140, '2022-05-16 13:28:11', 'Creacion de nueva solicitud: probando el mensaje que queda grabado en la tabla solicitud', 10078),
(141, '2022-05-16 13:34:49', 'Creacion de nueva solicitud: tercera prueba de solicitud de una actividad', 10078),
(142, '2022-05-16 13:36:24', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(143, '2022-05-16 13:36:34', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(144, '2022-05-16 13:36:43', 'Visualizo el listado de asignaciones', 1),
(145, '2022-05-16 13:36:48', 'Visualizo el listado de solicitud', 1),
(146, '2022-05-16 13:37:01', 'Hizo la siguiente busqueda: sin asignar en el listado de solicitud', 1),
(147, '2022-05-16 13:37:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(148, '2022-05-16 13:38:25', 'Creacion de nueva solicitud: Probando nueva solicitud dsde el usuario administrador', 1),
(149, '2022-05-16 13:38:29', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(150, '2022-05-16 13:38:50', 'Visualizo el listado de solicitud', 1),
(151, '2022-05-16 13:39:25', 'Visualizo el listado de asignaciones', 1),
(152, '2022-05-16 13:39:34', 'Visualizo el listado de asignaciones', 1),
(153, '2022-05-16 13:40:27', 'Visualizo el listado de solicitud', 1),
(154, '2022-05-16 13:45:30', 'Visualizo el listado de solicitud', 1),
(155, '2022-05-16 13:45:49', 'Visualizo el listado de solicitud', 1),
(156, '2022-05-16 13:47:39', 'Visualizo el listado de solicitud', 1),
(157, '2022-05-16 13:47:55', 'Visualizo el listado de solicitud', 1),
(158, '2022-05-16 13:47:59', 'Visualizo el listado de asignaciones', 1),
(159, '2022-05-16 13:48:07', 'Visualizo el listado de solicitud', 1),
(160, '2022-05-16 13:50:01', 'Visualizo el listado de solicitud', 1),
(161, '2022-05-16 13:50:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(162, '2022-05-16 13:50:33', 'Visualizo el listado de asignaciones', 1),
(163, '2022-05-16 13:50:35', 'Visualizo el listado de solicitud', 1),
(164, '2022-05-16 13:50:42', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(165, '2022-05-16 13:51:03', 'Actualizo la siguiente solicitud: Instalacion de impresora', 1),
(166, '2022-05-16 13:51:06', 'Visualizo el listado de solicitud', 1),
(167, '2022-05-16 13:51:13', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(168, '2022-05-16 13:51:18', 'Visualizo el listado de solicitud', 1),
(169, '2022-05-16 13:51:40', 'Visualizo el listado de asignaciones', 1),
(170, '2022-05-16 13:51:46', 'Visualizo el listado de solicitud', 1),
(171, '2022-05-16 13:52:28', 'Inicio de Sesion', 10080),
(172, '2022-05-16 13:52:42', 'Visualizo el listado de solicitud', 10080),
(173, '2022-05-16 13:54:15', 'Visualizo el listado de solicitud', 10080),
(174, '2022-05-16 13:54:26', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(175, '2022-05-16 13:54:49', 'Visualizo el listado de asignaciones', 10080),
(176, '2022-05-16 13:54:52', 'Visualizo el listado de asignaciones', 10080),
(177, '2022-05-16 13:54:54', 'Visualizo el listado de solicitud', 10080),
(178, '2022-05-16 13:55:17', 'Visualizo el listado de solicitud', 10080),
(179, '2022-05-16 13:55:19', 'Visualizo el listado de asignaciones', 10080),
(180, '2022-05-16 13:55:21', 'Visualizo el listado de solicitud', 10080),
(181, '2022-05-16 13:55:47', 'Inicio de Sesion', 10078),
(182, '2022-05-16 13:55:50', 'Visualizo el listado de solicitud', 10078),
(183, '2022-05-16 13:59:50', 'Visualizo el listado de solicitud', 10078),
(184, '2022-05-16 14:00:03', 'Visualizo el listado de solicitud', 10078),
(185, '2022-05-16 14:00:10', 'Visualizo el listado de solicitud', 10078),
(186, '2022-05-16 14:00:20', 'Visualizo el listado de solicitud', 10078),
(187, '2022-05-16 14:16:57', 'Visualizo el listado de solicitud', 10078),
(188, '2022-05-16 14:17:41', 'Inicio de Sesion', 10080),
(189, '2022-05-16 14:17:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(190, '2022-05-16 14:17:49', 'Visualizo el listado de solicitud', 10080),
(191, '2022-05-16 14:18:05', 'Creacion de nueva asignacion: prueba de instalacion de impresoras', 10080),
(192, '2022-05-16 14:18:06', 'Visualizo el listado de solicitud', 10080),
(193, '2022-05-16 14:18:11', 'Visualizo el listado de asignaciones', 10080),
(194, '2022-05-16 14:22:33', 'Visualizo el listado de asignaciones', 10080),
(195, '2022-05-16 14:22:35', 'Visualizo el listado de solicitud', 10080),
(196, '2022-05-16 14:22:37', 'Visualizo el listado de asignaciones', 10080),
(197, '2022-05-16 14:22:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(198, '2022-05-16 14:22:44', 'Visualizo el listado de solicitud', 10080),
(199, '2022-05-16 14:23:39', 'Visualizo el listado de solicitud', 10080),
(200, '2022-05-16 14:23:54', 'Inicio de Sesion', 10079),
(201, '2022-05-16 14:24:01', 'Visualizo el listado de asignaciones', 10079),
(202, '2022-05-16 14:24:05', 'Visualizo el listado de anexo de asignaciones', 10079),
(203, '2022-05-16 14:24:11', 'Visualizo el listado de asignaciones', 10079),
(204, '2022-05-16 14:24:13', 'Visualizo el listado de anexo de asignaciones', 10079),
(205, '2022-05-16 14:24:30', 'Visualizo el listado de anexo de asignaciones', 10079),
(206, '2022-05-16 14:24:33', 'Visualizo el listado de asignaciones', 10079),
(207, '2022-05-16 14:24:35', 'Visualizo el listado de asignaciones', 10079),
(208, '2022-05-16 14:25:23', 'Creacion de un nuevo paso: Entregar', 1),
(209, '2022-05-16 14:31:43', 'Visualizo el listado de asignaciones', 10079),
(210, '2022-05-16 14:32:06', 'Creacion de nuevo paso procesado: realizando la entrega de la instalación de la impresora', 10079),
(211, '2022-05-16 14:33:03', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(212, '2022-05-16 14:33:08', 'Visualizo el listado de solicitud', 1),
(213, '2022-05-16 14:33:30', 'Visualizo el listado de solicitud', 1),
(214, '2022-05-16 14:35:37', 'Visualizo el listado de asignaciones', 1),
(215, '2022-05-16 14:35:42', 'Visualizo el listado de anexo de asignaciones', 1),
(216, '2022-05-16 14:35:45', 'Visualizo el listado de asignaciones', 1),
(217, '2022-05-16 14:36:33', 'Asignacion finalizada: 16', 10079),
(218, '2022-05-16 14:37:09', 'Visualizo el listado de asignaciones', 10079),
(219, '2022-05-16 14:37:13', 'Visualizo el listado de anexo de asignaciones', 10079),
(220, '2022-05-16 14:47:34', 'Visualizo el listado de anexo de asignaciones', 10079),
(221, '2022-05-16 14:47:56', 'Visualizo el listado de anexo de asignaciones', 10079),
(222, '2022-05-16 14:48:04', 'Visualizo el listado de asignaciones', 1),
(223, '2022-05-16 14:48:13', 'Visualizo el listado de anexos', 1),
(224, '2022-05-16 14:48:23', 'Visualizo el listado de anexos', 1),
(225, '2022-05-16 14:48:30', 'Visualizo el listado de anexos', 1),
(226, '2022-05-16 14:48:42', 'Visualizo el listado de anexo de asignaciones', 1),
(227, '2022-05-16 14:49:08', 'Visualizo el listado de asignaciones', 1),
(228, '2022-05-16 14:50:26', 'Visualizo el listado de asignaciones', 1),
(229, '2022-05-16 14:50:34', 'Visualizo el listado de solicitud', 1),
(230, '2022-05-16 14:51:02', 'Visualizo el listado de asignaciones', 1),
(231, '2022-05-16 14:51:12', 'Visualizo el listado de solicitud', 1),
(232, '2022-05-16 14:51:24', 'Visualizo el listado de asignaciones', 1),
(233, '2022-05-16 14:52:32', 'Creacion de nueva solicitud: Probando dos actividades en una misma solicitud', 1),
(234, '2022-05-16 14:56:04', 'Visualizo el listado de asignaciones', 1),
(235, '2022-05-16 14:56:06', 'Visualizo el listado de solicitud', 1),
(236, '2022-05-16 14:56:13', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(237, '2022-05-16 14:56:25', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(238, '2022-05-16 14:58:30', 'Visualizo el listado de asignaciones', 1),
(239, '2022-05-16 14:58:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(240, '2022-05-16 14:59:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(241, '2022-05-16 15:00:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(242, '2022-05-16 15:00:20', 'Visualizo el listado de solicitud', 1),
(243, '2022-05-16 15:00:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(244, '2022-05-16 15:00:58', 'Actualizo la siguiente solicitud: Probando dos actividades en una misma solicitud', 1),
(245, '2022-05-16 15:01:04', 'Visualizo el listado de solicitud', 1),
(246, '2022-05-16 15:01:33', 'Visualizo el listado de solicitud', 1),
(247, '2022-05-16 15:01:59', 'Creacion de nueva asignacion: primera de dos actividades a realizar', 1),
(248, '2022-05-16 15:01:59', 'Visualizo el listado de solicitud', 1),
(249, '2022-05-16 15:02:06', 'Visualizo el listado de solicitud', 1),
(250, '2022-05-16 15:02:33', 'Visualizo el listado de solicitud', 1),
(251, '2022-05-16 15:02:38', 'Visualizo el listado de asignaciones', 10079),
(252, '2022-05-16 15:02:54', 'Creacion de nuevo paso procesado: primera actividad finalizada', 10079),
(253, '2022-05-16 15:04:21', 'Asignacion finalizada: 20', 10079),
(254, '2022-05-16 15:04:54', 'Visualizo el listado de asignaciones', 1),
(255, '2022-05-16 15:05:04', 'Visualizo el listado de solicitud', 1),
(256, '2022-05-16 15:05:29', 'Creacion de nueva asignacion: segunda actividad que proviene de la misma solicitud', 1),
(257, '2022-05-16 15:05:29', 'Visualizo el listado de solicitud', 1),
(258, '2022-05-16 15:05:39', 'Creacion de nueva asignacion: realizar', 1),
(259, '2022-05-16 15:05:39', 'Visualizo el listado de solicitud', 1),
(260, '2022-05-16 15:05:49', 'Creacion de nueva asignacion: realziar', 1),
(261, '2022-05-16 15:05:49', 'Visualizo el listado de solicitud', 1),
(262, '2022-05-16 15:06:03', 'Creacion de nueva asignacion: rpobando', 1),
(263, '2022-05-16 15:06:03', 'Visualizo el listado de solicitud', 1),
(264, '2022-05-16 15:06:05', 'Visualizo el listado de asignaciones', 1),
(265, '2022-05-16 15:07:03', 'Visualizo el listado de asignaciones', 1),
(266, '2022-05-16 15:07:30', 'Visualizo el listado de asignaciones', 10079),
(267, '2022-05-16 15:07:50', 'Creacion de nuevo paso procesado: primer paso', 10079),
(268, '2022-05-16 15:07:56', 'Creacion de nuevo paso procesado: segundo paso', 10079),
(269, '2022-05-16 15:08:02', 'Creacion de nuevo paso procesado: tercer paso', 10079),
(270, '2022-05-16 15:08:08', 'Asignacion finalizada: 19', 10079),
(271, '2022-05-16 15:08:13', 'Visualizo el listado de asignaciones', 10079),
(272, '2022-05-16 15:08:36', 'Visualizo el listado de asignaciones', 10079),
(273, '2022-05-16 15:10:24', 'Visualizo el listado de asignaciones', 1),
(274, '2022-05-16 15:10:55', 'Visualizo el listado de asignaciones', 1),
(275, '2022-05-16 15:32:17', 'Visualizo el listado de solicitud', 1),
(276, '2022-05-16 15:32:37', 'Visualizo el listado de solicitud', 1),
(277, '2022-05-16 15:33:03', 'Visualizo el listado de asignaciones', 1),
(278, '2022-05-16 15:33:10', 'Visualizo el listado de solicitud', 1),
(279, '2022-05-16 15:33:14', 'Visualizo el listado de asignaciones', 1),
(280, '2022-05-16 15:33:47', 'Visualizo el listado de asignaciones', 1),
(281, '2022-05-16 15:55:49', 'Visualizo el listado de asignaciones', 10079),
(282, '2022-05-16 15:56:38', 'Creacion de un nuevo paso: entregar examen', 1),
(283, '2022-05-16 15:56:57', 'Creacion de nuevo paso procesado: Realizar la entrega de los examenes', 10079),
(284, '2022-05-16 16:17:05', 'Inicio de Sesion', 10079),
(285, '2022-05-16 16:17:10', 'Visualizo el listado de asignaciones', 10079),
(286, '2022-05-16 16:18:32', 'Vincular Equipo: codigo equipo - 21332433. actividad - 11', 10079),
(287, '2022-05-16 16:27:36', 'Vincular Equipo: codigo equipo - 3342. actividad - 11', 10079),
(288, '2022-05-16 16:29:49', 'Vincular Equipo: codigo equipo - 2344. actividad - 11', 0),
(289, '2022-05-16 16:45:38', 'Inicio de Sesion', 10079),
(290, '2022-05-16 16:45:42', 'Visualizo el listado de asignaciones', 10079),
(291, '2022-05-16 16:46:40', 'Vincular Equipo: codigo equipo - 3244321. actividad - 11', 10079),
(292, '2022-05-16 16:47:06', 'Asignacion finalizada: 11', 10079),
(293, '2022-05-16 16:47:18', 'Visualizo el listado de asignaciones', 10079),
(294, '2022-05-16 17:08:02', 'Inicio de Sesion', 10078),
(295, '2022-05-16 17:08:27', 'Creacion de nueva solicitud: arreglo de mi laptop no conecta a internet', 10078),
(296, '2022-05-16 17:08:31', 'Visualizo el listado de solicitud', 10078),
(297, '2022-05-16 17:08:41', 'Visualizo el listado de solicitud', 10078),
(298, '2022-05-16 17:08:57', 'Visualizo el listado de solicitud', 10078),
(299, '2022-05-16 17:09:08', 'Inicio de Sesion', 10080),
(300, '2022-05-16 17:09:14', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(301, '2022-05-16 17:09:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(302, '2022-05-16 17:09:53', 'Visualizo el listado de solicitud', 10080),
(303, '2022-05-16 17:09:58', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(304, '2022-05-16 17:10:11', 'Actualizo la siguiente solicitud: arreglo de mi laptop no conecta a internet', 10080),
(305, '2022-05-16 17:10:15', 'Visualizo el listado de solicitud', 10080),
(306, '2022-05-16 17:10:35', 'Creacion de nueva asignacion: realizar la conprobacion y reinstalacion del internet', 10080),
(307, '2022-05-16 17:10:35', 'Visualizo el listado de solicitud', 10080),
(308, '2022-05-16 17:10:38', 'Visualizo el listado de asignaciones', 10080),
(309, '2022-05-16 17:10:58', 'Visualizo el listado de solicitud', 10080),
(310, '2022-05-16 17:11:01', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(311, '2022-05-16 17:11:11', 'Visualizo el listado de solicitud', 10080),
(312, '2022-05-16 17:11:23', 'Hizo la siguiente busqueda: internet en el listado de solicitud', 10080),
(313, '2022-05-16 17:11:42', 'Hizo la siguiente busqueda: internet en el listado de solicitud', 10080),
(314, '2022-05-16 17:11:54', 'Inicio de Sesion', 10079),
(315, '2022-05-16 17:11:58', 'Visualizo el listado de asignaciones', 10079),
(316, '2022-05-16 17:12:00', 'Visualizo el listado de asignaciones', 10079),
(317, '2022-05-16 17:12:11', 'Creacion de nuevo paso procesado: caasscsacas', 10079),
(318, '2022-05-16 17:12:15', 'Creacion de nuevo paso procesado: cascasc', 10079),
(319, '2022-05-16 17:12:19', 'Creacion de nuevo paso procesado: asccsa', 10079),
(320, '2022-05-16 17:12:48', 'Vincular Equipo: codigo equipo - 7777. actividad - 22', 10079),
(321, '2022-05-16 17:13:19', 'Asignacion finalizada: 22', 10079),
(322, '2022-05-16 17:13:38', 'Visualizo el listado de asignaciones', 10079),
(323, '2022-05-16 17:13:54', 'Inicio de Sesion', 10078),
(324, '2022-05-16 17:13:59', 'Visualizo el listado de solicitud', 10078),
(325, '2022-05-16 17:15:11', 'Visualizo el listado de solicitud', 10078),
(326, '2022-05-16 17:15:45', 'Inicio de Sesion', 1),
(327, '2022-05-16 17:15:51', 'Visualizo el listado de asignaciones', 1),
(328, '2022-05-16 17:16:31', 'Visualizo el listado de asignaciones', 1),
(329, '2022-05-17 10:55:52', 'Inicio de Sesion', 1),
(330, '2022-05-18 08:53:45', 'Inicio de Sesion', 1),
(331, '2022-05-20 13:46:47', 'Inicio de Sesion', 1),
(332, '2022-05-21 08:21:41', 'Inicio de Sesion', 1),
(333, '2022-05-21 09:53:47', 'Inicio de Sesion', 1),
(334, '2022-05-23 08:33:53', 'Inicio de Sesion', 1),
(335, '2022-05-23 08:37:56', 'Visualizo el listado de actividades', 1),
(336, '2022-05-23 08:47:55', 'Visualizo el listado de actividades', 1),
(337, '2022-05-23 08:52:18', 'Visualizo el listado de actividades', 1),
(338, '2022-05-23 14:24:50', 'Inicio de Sesion', 1),
(339, '2022-05-23 17:15:42', 'Inicio de Sesion', 1),
(340, '2022-05-23 17:20:08', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(341, '2022-05-23 17:20:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(342, '2022-05-23 17:20:29', 'Visualizo el listado de solicitud', 1),
(343, '2022-05-23 17:20:34', 'Visualizo el listado de solicitud', 1),
(344, '2022-05-23 17:20:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(345, '2022-05-23 17:20:59', 'Visualizo el listado de asignaciones', 1),
(346, '2022-05-23 17:23:46', 'Visualizo el listado de asignaciones', 1),
(347, '2022-05-23 17:23:48', 'Visualizo el listado de asignaciones', 1),
(348, '2022-05-23 17:23:59', 'Visualizo el listado de asignaciones', 1),
(349, '2022-05-24 15:30:15', 'Inicio de Sesion', 1),
(350, '2022-05-25 09:17:31', 'Inicio de Sesion', 1),
(351, '2022-05-25 09:18:07', 'Visualizo el listado de solicitud', 1),
(352, '2022-05-25 09:18:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(353, '2022-05-25 09:18:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(354, '2022-05-25 09:18:39', 'Visualizo el listado de solicitud', 1),
(355, '2022-05-25 09:18:42', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(356, '2022-05-25 09:18:44', 'Visualizo el listado de solicitud', 1),
(357, '2022-05-25 09:19:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(358, '2022-05-25 09:19:01', 'Visualizo el listado de solicitud', 1),
(359, '2022-05-25 09:19:13', 'Visualizo el listado de asignaciones', 1),
(360, '2022-05-25 09:21:46', 'Visualizo el listado de asignaciones', 1),
(361, '2022-05-25 13:17:36', 'Inicio de Sesion', 1),
(362, '2022-05-25 13:47:43', 'Visualizo el listado de asignaciones', 1),
(363, '2022-05-25 13:47:47', 'Visualizo el listado de asignaciones', 1),
(364, '2022-05-25 13:47:48', 'Visualizo el listado de asignaciones', 1),
(365, '2022-05-25 13:47:50', 'Visualizo el listado de asignaciones', 1),
(366, '2022-05-25 13:48:00', 'Visualizo el listado de asignaciones', 1),
(367, '2022-05-25 13:48:02', 'Visualizo el listado de asignaciones', 1),
(368, '2022-05-25 13:48:04', 'Visualizo el listado de asignaciones', 1),
(369, '2022-05-25 13:48:07', 'Visualizo el listado de asignaciones', 1),
(370, '2022-05-25 13:48:09', 'Visualizo el listado de asignaciones', 1),
(371, '2022-05-25 13:48:11', 'Visualizo el listado de solicitud', 1),
(372, '2022-05-25 13:48:12', 'Visualizo el listado de asignaciones', 1),
(373, '2022-05-25 13:48:18', 'Visualizo el listado de solicitud', 1),
(374, '2022-05-25 13:48:21', 'Visualizo el listado de asignaciones', 1),
(375, '2022-05-25 13:48:28', 'Visualizo el listado de solicitud', 1),
(376, '2022-05-25 13:48:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(377, '2022-05-25 13:48:37', 'Visualizo el listado de asignaciones', 1),
(378, '2022-05-25 13:54:11', 'Visualizo el listado de asignaciones', 1),
(379, '2022-05-25 13:55:46', 'Visualizo el listado de asignaciones', 1),
(380, '2022-05-25 13:57:57', 'Visualizo el listado de asignaciones', 1),
(381, '2022-05-25 13:59:11', 'Visualizo el listado de asignaciones', 1),
(382, '2022-05-25 14:36:19', 'Visualizo el listado de asignaciones', 1),
(383, '2022-05-25 14:38:33', 'Visualizo el listado de asignaciones', 1),
(384, '2022-05-25 14:39:36', 'Visualizo el listado de asignaciones', 1),
(385, '2022-05-27 10:23:34', 'Inicio de Sesion', 1),
(386, '2022-05-27 10:24:17', 'Visualizo el listado de asignaciones', 1),
(387, '2022-05-29 09:25:35', 'Inicio de Sesion', 1),
(388, '2022-05-29 09:56:00', 'Creacion de nueva solicitud: FORMATEO DE EQUIPO, DIA DOMINGO', 1),
(389, '2022-05-29 09:56:06', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(390, '2022-05-29 09:56:24', 'Actualizo la siguiente solicitud: FORMATEO DE EQUIPO, DIA DOMINGO', 1),
(391, '2022-05-29 09:56:36', 'Visualizo el listado de solicitud', 1),
(392, '2022-05-29 09:56:56', 'Creacion de nueva asignacion: REALIZANDO EL PROCESO', 1),
(393, '2022-05-29 09:56:56', 'Visualizo el listado de solicitud', 1),
(394, '2022-05-29 09:56:57', 'Visualizo el listado de asignaciones', 1),
(395, '2022-05-29 09:57:02', 'Visualizo el listado de solicitud', 1),
(396, '2022-05-29 09:57:14', 'Visualizo el listado de solicitud', 1),
(397, '2022-05-29 09:57:33', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(398, '2022-05-29 09:57:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(399, '2022-05-29 09:57:58', 'Visualizo el listado de solicitud', 1),
(400, '2022-05-29 09:58:14', 'Visualizo el listado de solicitud', 1),
(401, '2022-05-29 09:58:28', 'Visualizo el listado de solicitud', 1),
(402, '2022-05-29 09:58:30', 'Visualizo el listado de asignaciones', 1),
(403, '2022-05-29 09:58:44', 'Visualizo el listado de asignaciones', 1),
(404, '2022-05-29 09:58:55', 'Visualizo el listado de asignaciones', 1),
(405, '2022-05-29 09:59:51', 'Visualizo el listado de asignaciones', 1),
(406, '2022-05-29 10:00:01', 'Visualizo el listado de solicitud', 1),
(407, '2022-05-29 10:00:08', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(408, '2022-05-29 10:00:19', 'Visualizo el listado de solicitud', 1),
(409, '2022-05-29 10:00:28', 'Visualizo el listado de solicitud', 1),
(410, '2022-05-29 10:00:31', 'Visualizo el listado de solicitud', 1),
(411, '2022-05-29 10:01:52', 'Visualizo el listado de solicitud', 1),
(412, '2022-05-29 10:01:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(413, '2022-05-29 10:02:09', 'Visualizo el listado de solicitud', 1),
(414, '2022-05-29 10:02:14', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(415, '2022-05-29 10:03:33', 'Visualizo el listado de solicitud', 1),
(416, '2022-05-29 10:04:01', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(417, '2022-05-29 10:04:07', 'Visualizo el listado de solicitud', 1),
(418, '2022-05-29 10:23:35', 'Inicio de Sesion', 10075),
(419, '2022-05-29 10:23:43', 'Visualizo el listado de asignaciones', 10075),
(420, '2022-05-29 10:25:14', 'Visualizo el listado de asignaciones', 10075),
(421, '2022-05-29 10:25:27', 'Visualizo el listado de asignaciones', 10075),
(422, '2022-05-29 10:25:32', 'Visualizo el listado de asignaciones', 10075),
(423, '2022-05-29 10:25:59', 'Creacion de nuevo paso procesado: realizando la fase final', 10075),
(424, '2022-05-29 10:26:41', 'Vincular Equipo: codigo equipo - 7777. actividad - 24', 10075),
(425, '2022-05-29 10:26:47', 'Asignacion finalizada: 24', 10075),
(426, '2022-05-29 10:28:01', 'Inicio de Sesion', 10078),
(427, '2022-05-29 10:28:11', 'Visualizo el listado de solicitud', 10078),
(428, '2022-05-29 10:28:46', 'Visualizo el listado de solicitud', 10078),
(429, '2022-05-29 10:29:18', 'Visualizo el listado de solicitud', 10078),
(430, '2022-05-29 10:29:46', 'Inicio de Sesion', 10078),
(431, '2022-05-29 10:29:58', 'Inicio de Sesion', 10075),
(432, '2022-05-29 10:30:24', 'Visualizo el listado de asignaciones', 10075),
(433, '2022-05-29 10:30:35', 'Visualizo el listado de asignaciones', 10075),
(434, '2022-05-29 10:30:39', 'Visualizo el listado de asignaciones', 10075),
(435, '2022-05-29 10:30:40', 'Visualizo el listado de asignaciones', 10075),
(436, '2022-05-29 10:31:08', 'Inicio de Sesion', 10078),
(437, '2022-05-29 10:31:53', 'Visualizo el listado de solicitud', 10078),
(438, '2022-05-29 10:32:24', 'Visualizo el listado de solicitud', 10078),
(439, '2022-05-29 10:36:21', 'Visualizo el listado de solicitud', 10078),
(440, '2022-05-29 10:38:06', 'Visualizo el listado de solicitud', 10078),
(441, '2022-05-29 10:38:21', 'Visualizo el listado de solicitud', 10078),
(442, '2022-05-29 10:39:35', 'Visualizo el listado de solicitud', 10078),
(443, '2022-05-29 10:40:37', 'Visualizo el listado de solicitud', 10078),
(444, '2022-05-29 10:42:39', 'Visualizo el listado de solicitud', 10078),
(445, '2022-05-29 10:42:53', 'Visualizo el listado de solicitud', 10078),
(446, '2022-05-29 10:43:09', 'Visualizo el listado de solicitud', 10078),
(447, '2022-05-29 10:43:29', 'Visualizo el listado de solicitud', 10078),
(448, '2022-05-29 10:46:00', 'Visualizo el listado de solicitud', 1),
(449, '2022-05-29 10:55:53', 'Visualizo el listado de solicitud', 10078),
(450, '2022-05-29 10:56:09', 'Visualizo el listado de solicitud', 10078),
(451, '2022-05-29 10:56:15', 'Visualizo el listado de solicitud', 10078),
(452, '2022-05-29 12:24:29', 'Visualizo el listado de solicitud', 10078),
(453, '2022-05-29 12:24:37', 'Visualizo el listado de solicitud', 10078),
(454, '2022-05-29 12:44:22', 'Visualizo el listado de solicitud', 10078),
(455, '2022-05-29 12:47:05', 'Inicio de Sesion', 10075),
(456, '2022-05-29 12:47:09', 'Visualizo el listado de asignaciones', 10075),
(457, '2022-05-29 12:49:45', 'Visualizo el listado de asignaciones', 10075),
(458, '2022-05-29 12:49:58', 'Creacion de nuevo paso procesado: procesando actividad', 10075),
(459, '2022-05-29 12:50:06', 'Vincular Equipo: codigo equipo - 7777. actividad - 2', 10075),
(460, '2022-05-29 12:50:10', 'Asignacion finalizada: 2', 10075),
(461, '2022-05-29 12:50:15', 'Visualizo el listado de asignaciones', 10075),
(462, '2022-05-29 12:50:25', 'Visualizo el listado de asignaciones', 10075),
(463, '2022-05-29 12:50:29', 'Visualizo el listado de anexo de asignaciones', 10075),
(464, '2022-05-29 12:50:32', 'Visualizo el listado de asignaciones', 10075),
(465, '2022-05-29 12:54:34', 'Inicio de Sesion', 10078),
(466, '2022-05-29 12:54:39', 'Visualizo el listado de solicitud', 10078),
(467, '2022-05-29 12:59:30', 'Visualizo el listado de solicitud', 10078),
(468, '2022-05-29 12:59:43', 'Visualizo el listado de solicitud', 1),
(469, '2022-05-29 12:59:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(470, '2022-05-29 12:59:50', 'Visualizo el listado de solicitud', 1),
(471, '2022-05-29 13:00:04', 'Hizo la siguiente busqueda: finalizado en el listado de solicitud', 1),
(472, '2022-05-29 13:00:22', 'Hizo la siguiente busqueda: finalizado en el listado de solicitud', 1),
(473, '2022-05-29 13:32:38', 'Visualizo el listado de sectors', 1),
(474, '2022-05-29 13:33:46', 'Visualizo el listado de sectors', 1),
(475, '2022-05-29 13:37:38', 'Visualizo el listado de solicitud', 1),
(476, '2022-05-29 13:38:30', 'Visualizo el listado de solicitud', 1),
(477, '2022-05-29 14:59:14', 'Visualizo el listado de solicitud', 10078),
(478, '2022-05-29 14:59:26', 'Visualizo el listado de solicitud', 1),
(479, '2022-05-29 15:02:01', 'Visualizo el listado de solicitud', 1),
(480, '2022-05-29 15:05:13', 'Visualizo el listado de solicitud', 1),
(481, '2022-05-29 15:20:50', 'Visualizo el listado de solicitud', 1),
(482, '2022-05-29 15:21:44', 'Visualizo el listado de solicitud', 1),
(483, '2022-05-29 15:49:55', 'Visualizo el listado de solicitud', 1),
(484, '2022-05-29 15:50:03', 'Elimino el siguiente evaluacion: JHGHJGHJ', 1),
(485, '2022-05-29 15:50:22', 'Visualizo el listado de solicitud', 1),
(486, '2022-05-29 15:50:27', 'Elimino el siguiente evaluacion: probando la finalizacion de una actividad, el tiempo de repuesta y la solucion fueron lo mejor', 1),
(487, '2022-05-29 15:50:30', 'Visualizo el listado de solicitud', 1),
(488, '2022-05-29 15:50:52', 'Elimino el siguiente evaluacion: probando registro', 1),
(489, '2022-05-29 15:50:55', 'Visualizo el listado de solicitud', 1),
(490, '2022-05-29 16:07:05', 'Visualizo el listado de solicitud', 10078),
(491, '2022-05-29 16:07:21', 'Visualizo el listado de solicitud', 10078),
(492, '2022-05-29 16:07:49', 'Visualizo el listado de solicitud', 1),
(493, '2022-05-29 16:14:21', 'Visualizo el listado de solicitud', 1),
(494, '2022-05-29 16:15:34', 'Hizo la siguiente busqueda: esteban en el listado de solicitud', 1),
(495, '2022-05-29 16:16:37', 'Hizo la siguiente busqueda: esteban en el listado de solicitud', 1),
(496, '2022-05-29 16:16:49', 'Hizo la siguiente busqueda: equipo en el listado de solicitud', 1),
(497, '2022-05-29 16:16:56', 'Visualizo el listado de solicitud', 1),
(498, '2022-05-29 16:17:01', 'Hizo la siguiente busqueda: equipo en el listado de solicitud', 1),
(499, '2022-05-29 16:17:07', 'Hizo la siguiente busqueda: prueba en el listado de solicitud', 1),
(500, '2022-05-29 16:17:14', 'Hizo la siguiente busqueda: 2 en el listado de solicitud', 1),
(501, '2022-05-29 16:17:32', 'Hizo la siguiente busqueda: 3 en el listado de solicitud', 1),
(502, '2022-05-29 16:17:41', 'Hizo la siguiente busqueda: 4 en el listado de solicitud', 1),
(503, '2022-05-29 16:17:48', 'Hizo la siguiente busqueda: 2 en el listado de solicitud', 1),
(504, '2022-05-29 16:17:56', 'Hizo la siguiente busqueda: 1 en el listado de solicitud', 1),
(505, '2022-05-29 16:18:05', 'Visualizo el listado de solicitud', 1),
(506, '2022-05-30 09:01:56', 'Visualizo el listado de solicitud', 10078),
(507, '2022-05-30 09:01:57', 'Visualizo el listado de solicitud', 10078);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `cargo_id` int(11) NOT NULL,
  `cargo_nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `direccion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `cargo`
--

TRUNCATE TABLE `cargo`;
--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`cargo_id`, `cargo_nombre`, `direccion_id`) VALUES
(1, 'analista', 2),
(2, 'jefe logistica', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_descripcion` varchar(300) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `categoria`
--

TRUNCATE TABLE `categoria`;
--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_descripcion`) VALUES
(1, 'Social', 'social');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `configuracion_id` int(11) NOT NULL,
  `configuracion_descripcion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `configuracion_valor` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `configuracion`
--

TRUNCATE TABLE `configuracion`;
--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`configuracion_id`, `configuracion_descripcion`, `configuracion_valor`) VALUES
(1, 'encuesta seleccionada', '6'),
(4, 'mes grafica', '07'),
(5, 'extension_permitida', 'jpg, JPG, png, PNG, jpeg, JPEG'),
(6, 'size_permitido', '1024000'),
(8, 'extension_pago', 'pdf, PDF'),
(9, 'torneo_seleccionado', '1'),
(10, 'top_jugador_equipo', '14'),
(12, 'total_solicitud_diaria', '300'),
(13, 'total_solicitud_diaria_ciudadano', '3'),
(14, 'total_home_mostrar', '21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion`
--

CREATE TABLE `direccion` (
  `direccion_id` int(11) NOT NULL,
  `direccion_nombre` varchar(300) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion_imagen` varchar(150) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `gabinete_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Truncar tablas antes de insertar `direccion`
--

TRUNCATE TABLE `direccion`;
--
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`direccion_id`, `direccion_nombre`, `direccion_imagen`, `gabinete_id`) VALUES
(1, 'Despacho del Gobernador', 'default.jpg', 2),
(2, 'Dimisoc', 'default.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_actividad`
--

CREATE TABLE `equipo_actividad` (
  `equipo_actividad_id` int(11) NOT NULL,
  `sol_act_id` int(11) NOT NULL,
  `producto_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `equipo_actividad`
--

TRUNCATE TABLE `equipo_actividad`;
--
-- Volcado de datos para la tabla `equipo_actividad`
--

INSERT INTO `equipo_actividad` (`equipo_actividad_id`, `sol_act_id`, `producto_codigo`) VALUES
(1, 11, 21332433),
(2, 11, 3342),
(3, 11, 2344),
(4, 11, 4234),
(5, 11, 6786),
(6, 11, 34555211),
(7, 11, 342342),
(8, 11, 67765678),
(9, 11, 23322332),
(10, 11, 3244321),
(11, 22, 7777),
(12, 24, 7777),
(13, 2, 7777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `solicitud_id` int(11) NOT NULL,
  `feedback_descripcion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `feedback_tiempo_respuesta` int(11) NOT NULL,
  `feedback_tipo_solucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `feedback`
--

TRUNCATE TABLE `feedback`;
--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `usuario_id`, `solicitud_id`, `feedback_descripcion`, `feedback_tiempo_respuesta`, `feedback_tipo_solucion`) VALUES
(2, 10078, 12, 'porbando', 2, 4),
(5, 10078, 5, 'prueba nueva evaluacion', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gabinete`
--

CREATE TABLE `gabinete` (
  `gabinete_id` int(11) NOT NULL,
  `gabinete_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `gabinete`
--

TRUNCATE TABLE `gabinete`;
--
-- Volcado de datos para la tabla `gabinete`
--

INSERT INTO `gabinete` (`gabinete_id`, `gabinete_nombre`) VALUES
(1, 'Gestion Social'),
(2, 'Gestion Interna'),
(3, 'Seguridad Ciudadana'),
(4, 'Organizacion Ciudadana y Comunal'),
(5, 'Servicios Publicos'),
(6, 'Economico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grafica_solicitud`
--

CREATE TABLE `grafica_solicitud` (
  `grafica_solicitud_id` int(11) NOT NULL,
  `grafica_solicitud_year` int(11) NOT NULL,
  `grafica_solicitud_mes_id` int(11) NOT NULL,
  `grafica_solicitud_solicitadas` int(11) NOT NULL,
  `grafica_solicitud_finalizadas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `grafica_solicitud`
--

TRUNCATE TABLE `grafica_solicitud`;
--
-- Volcado de datos para la tabla `grafica_solicitud`
--

INSERT INTO `grafica_solicitud` (`grafica_solicitud_id`, `grafica_solicitud_year`, `grafica_solicitud_mes_id`, `grafica_solicitud_solicitadas`, `grafica_solicitud_finalizadas`) VALUES
(1, 2022, 1, 0, 0),
(2, 2022, 2, 0, 0),
(3, 2022, 3, 3, 1),
(4, 2022, 4, 2, 0),
(5, 2022, 5, 6, 7),
(6, 2022, 6, 0, 0),
(7, 2022, 7, 0, 0),
(8, 2022, 8, 0, 0),
(9, 2022, 9, 0, 0),
(10, 2022, 10, 0, 0),
(11, 2022, 11, 0, 0),
(12, 2022, 12, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_actividad`
--

CREATE TABLE `home_actividad` (
  `home_actividad_id` int(11) NOT NULL,
  `home_actividad_year` int(11) NOT NULL,
  `home_actividad_cantidad` int(11) NOT NULL,
  `home_actividad_porcentaje` decimal(25,2) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `actividad_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `home_actividad`
--

TRUNCATE TABLE `home_actividad`;
--
-- Volcado de datos para la tabla `home_actividad`
--

INSERT INTO `home_actividad` (`home_actividad_id`, `home_actividad_year`, `home_actividad_cantidad`, `home_actividad_porcentaje`, `actividad_id`, `actividad_nombre`) VALUES
(1, 2022, 1, '11.11', 1, 'Examen de Laboratorio'),
(2, 2022, 4, '79.22', 2, 'Bolsa de Alimento'),
(3, 2022, 0, '0.00', 3, 'Solicitud de Medicamentos'),
(4, 2022, 2, '47.62', 4, 'Canastilla'),
(5, 2022, 0, '0.00', 5, 'Electrodomesticos'),
(6, 2022, 1, '7.69', 6, 'Electronicos'),
(7, 2022, 3, '113.39', 7, 'Audiencia con el gobernador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_direccion`
--

CREATE TABLE `home_direccion` (
  `home_direccion_id` int(11) NOT NULL,
  `home_direccion_year` int(11) NOT NULL,
  `home_direccion_cantidad` int(11) NOT NULL,
  `home_direccion_porcentaje` decimal(25,2) NOT NULL,
  `direccion_id` int(11) NOT NULL,
  `direccion_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `home_direccion`
--

TRUNCATE TABLE `home_direccion`;
--
-- Volcado de datos para la tabla `home_direccion`
--

INSERT INTO `home_direccion` (`home_direccion_id`, `home_direccion_year`, `home_direccion_cantidad`, `home_direccion_porcentaje`, `direccion_id`, `direccion_nombre`) VALUES
(1, 2022, 7, '226.42', 1, 'Despacho del Gobernador'),
(2, 2022, 4, '32.61', 2, 'Dimisoc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_gabinete`
--

CREATE TABLE `home_gabinete` (
  `home_gabinete_id` int(11) NOT NULL,
  `home_gabinete_year` int(11) NOT NULL,
  `home_gabinete_cantidad` int(11) NOT NULL,
  `home_gabinete_porcentaje` decimal(25,2) NOT NULL,
  `gabinete_id` int(11) NOT NULL,
  `gabinete_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `home_gabinete`
--

TRUNCATE TABLE `home_gabinete`;
--
-- Volcado de datos para la tabla `home_gabinete`
--

INSERT INTO `home_gabinete` (`home_gabinete_id`, `home_gabinete_year`, `home_gabinete_cantidad`, `home_gabinete_porcentaje`, `gabinete_id`, `gabinete_nombre`) VALUES
(1, 2022, 4, '32.61', 1, 'Gestion Social'),
(2, 2022, 7, '226.42', 2, 'Gestion Interna'),
(3, 2022, 0, '0.00', 3, 'Seguridad Ciudadana'),
(4, 2022, 0, '0.00', 4, 'Organizacion Ciudadana y Comunal'),
(5, 2022, 0, '0.00', 5, 'Servicios Publicos'),
(6, 2022, 0, '0.00', 6, 'Economico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_indicador`
--

CREATE TABLE `home_indicador` (
  `home_indicador_id` int(11) NOT NULL,
  `home_indicador_year` int(11) NOT NULL,
  `home_indicador_cantidad` int(11) NOT NULL,
  `home_indicador_porcentaje` decimal(25,2) NOT NULL,
  `indicador_id` int(11) NOT NULL,
  `indicador_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `home_indicador`
--

TRUNCATE TABLE `home_indicador`;
--
-- Volcado de datos para la tabla `home_indicador`
--

INSERT INTO `home_indicador` (`home_indicador_id`, `home_indicador_year`, `home_indicador_cantidad`, `home_indicador_porcentaje`, `indicador_id`, `indicador_nombre`) VALUES
(1, 2022, 3, '113.39', 1, 'Solicitudes Tramitadas'),
(2, 2022, 6, '126.84', 2, ''),
(3, 2022, 2, '18.80', 4, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_operador`
--

CREATE TABLE `home_operador` (
  `home_operador_id` int(11) NOT NULL,
  `home_operador_year` int(11) NOT NULL,
  `home_operador_cantidad_anual` int(11) NOT NULL,
  `home_operador_porcentaje_anual` decimal(25,2) NOT NULL,
  `home_operador_cantidad_mensual` int(11) NOT NULL,
  `home_operador_porcentaje_mensual` decimal(25,2) NOT NULL,
  `home_operador_cantidad_diario` int(11) NOT NULL,
  `home_operador_porcentaje_diario` decimal(25,2) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `usuario_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_imagen` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `home_operador_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `home_operador`
--

TRUNCATE TABLE `home_operador`;
--
-- Volcado de datos para la tabla `home_operador`
--

INSERT INTO `home_operador` (`home_operador_id`, `home_operador_year`, `home_operador_cantidad_anual`, `home_operador_porcentaje_anual`, `home_operador_cantidad_mensual`, `home_operador_porcentaje_mensual`, `home_operador_cantidad_diario`, `home_operador_porcentaje_diario`, `usuario_id`, `usuario_nombre`, `usuario_imagen`, `home_operador_fecha`) VALUES
(1, 2022, 3, '126.79', 2, '26.79', 2, '26.79', 10075, 'Pedro, Perez', '1648655167 avatar-mujer-2.jpg', '2022-05-29'),
(2, 2022, 5, '145.00', 5, '145.00', 5, '145.00', 10079, 'usuario, operador', '1652720391 ag03.jpg', '2022-05-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `imagen_id` int(11) NOT NULL,
  `asignacion_id` int(11) NOT NULL,
  `imagen_nombre` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `imagen`
--

TRUNCATE TABLE `imagen`;
--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`imagen_id`, `asignacion_id`, `imagen_nombre`) VALUES
(1, 2, '1643148998 fondpagina ait.jpeg'),
(2, 2, '1643149794 1634240444 default.jpg'),
(3, 2, '1643149844 1634240444 default.jpg'),
(4, 2, '1643152357 1634240444 default.jpg'),
(5, 2, '1643152975 1631110723_Avatar_Jose.png'),
(6, 2, '1643153017 1634241476 Koala.jpg'),
(7, 6, '1643386939 impresora.png'),
(8, 7, '1643388747 impresora.png'),
(9, 11, '1643467242 impresora.png'),
(10, 12, '1643963366 001.jpg'),
(11, 12, '1643963373 002.jpg'),
(12, 12, '1643963381 003.jpg'),
(13, 12, '1643963395 004.jpg'),
(14, 9, '1643967415 004.jpg'),
(15, 9, '1643967426 003.jpg'),
(16, 13, '1643967828 002.jpg'),
(17, 13, '1643967835 004.jpg'),
(18, 15, '1644269948 1636399407 default.jpg'),
(19, 16, '1644270986 1632243264 Penguins.jpg'),
(20, 17, '1644340132 1632243264 Penguins.jpg'),
(21, 256, '1645543338 1645093884 solicitudmedicamentos.jpg'),
(22, 6681, '1646177938 canastilla.jpg'),
(23, 6690, '1646772887 LOGO-ANZOTEGUI-TE-ENAMORA.png'),
(24, 1, '1648655810 IMG-20220214-WA0028.jpg'),
(25, 1, '1648655819 IMG-20220216-WA0013.jpg'),
(26, 1, '1648655852 IMG-20220215-WA0006.jpg'),
(27, 4, '1652725944 ag03.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicador`
--

CREATE TABLE `indicador` (
  `indicador_id` int(11) NOT NULL,
  `indicador_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `indicador`
--

TRUNCATE TABLE `indicador`;
--
-- Volcado de datos para la tabla `indicador`
--

INSERT INTO `indicador` (`indicador_id`, `indicador_nombre`) VALUES
(1, 'Solicitudes Tramitadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kategoria`
--

CREATE TABLE `kategoria` (
  `kategoria_id` int(7) NOT NULL,
  `kategoria_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `kategoria_ubicacion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `kategoria`
--

TRUNCATE TABLE `kategoria`;
--
-- Volcado de datos para la tabla `kategoria`
--

INSERT INTO `kategoria` (`kategoria_id`, `kategoria_nombre`, `kategoria_ubicacion`) VALUES
(2, 'Impresoras', ''),
(7, 'Computacion', ''),
(9, 'informaticos', 'sede gobernacion'),
(10, 'telematicos', 'direccion ait'),
(11, 'informaticos y eletrocnicos', 'tecnologia piso tres'),
(12, 'softaware', 'edif sede');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mapa`
--

CREATE TABLE `mapa` (
  `mapa_id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `municipio_nombre` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `mapa_cantidad` int(11) NOT NULL,
  `mapa_porcentaje` decimal(25,2) NOT NULL,
  `mapa_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `mapa`
--

TRUNCATE TABLE `mapa`;
--
-- Volcado de datos para la tabla `mapa`
--

INSERT INTO `mapa` (`mapa_id`, `municipio_id`, `municipio_nombre`, `mapa_cantidad`, `mapa_porcentaje`, `mapa_year`) VALUES
(1, 1, 'Anaco', 0, '0.00', 2022),
(2, 2, 'Aragua', 0, '0.00', 2022),
(3, 3, 'Sotillo', 2, '11.76', 2022),
(4, 4, 'Bolivar', 9, '52.94', 2022),
(5, 5, 'Bruzual', 0, '0.00', 2022),
(6, 6, 'Cajigal', 0, '0.00', 2022),
(7, 7, 'Carvajal', 0, '0.00', 2022),
(8, 8, 'Urbaneja', 0, '0.00', 2022),
(9, 9, 'Freites', 0, '0.00', 2022),
(10, 10, 'Guanipa', 0, '0.00', 2022),
(11, 11, 'Guanta', 0, '0.00', 2022),
(12, 12, 'Independencia', 0, '0.00', 2022),
(13, 13, 'Libertad', 0, '0.00', 2022),
(14, 14, 'Mcgregor', 0, '0.00', 2022),
(15, 15, 'Miranda', 0, '0.00', 2022),
(16, 16, 'Monagas', 0, '0.00', 2022),
(17, 17, 'Penalver', 0, '0.00', 2022),
(18, 18, 'Piritu', 0, '0.00', 2022),
(19, 19, 'Capistrano', 0, '0.00', 2022),
(20, 20, 'Santa_Ana', 0, '0.00', 2022),
(21, 21, 'Simon_Rodriguez', 0, '0.00', 2022);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `multimedia_id` int(11) NOT NULL,
  `multimedia_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `multimedia_archivo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `multimedia_extension` varchar(20) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `multimedia`
--

TRUNCATE TABLE `multimedia`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `municipio_id` int(11) NOT NULL,
  `municipio_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `municipio`
--

TRUNCATE TABLE `municipio`;
--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`municipio_id`, `municipio_nombre`) VALUES
(1, 'Anaco'),
(2, 'Aragua'),
(3, 'Sotillo'),
(4, 'Bolivar'),
(5, 'Bruzual'),
(6, 'Cajigal'),
(7, 'Carvajal'),
(8, 'Urbaneja'),
(9, 'Freites'),
(10, 'Guanipa'),
(11, 'Guanta'),
(12, 'Independencia'),
(13, 'Libertad'),
(14, 'McGregor'),
(15, 'Miranda'),
(16, 'Monagas'),
(17, 'Peñalver'),
(18, 'Piritu'),
(19, 'San Juan de Capistrano'),
(20, 'Santa Ana'),
(21, 'Simon Rodriguez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parroquia`
--

CREATE TABLE `parroquia` (
  `parroquia_id` int(11) NOT NULL,
  `parroquia_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `municipio_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `parroquia`
--

TRUNCATE TABLE `parroquia`;
--
-- Volcado de datos para la tabla `parroquia`
--

INSERT INTO `parroquia` (`parroquia_id`, `parroquia_nombre`, `municipio_id`) VALUES
(1, 'Anaco', 1),
(2, 'San Juaquin', 1),
(3, 'Buena Vista', 1),
(4, 'Cachipo', 2),
(5, 'Aragua de Barcelona', 2),
(6, 'Lecheria', 8),
(7, 'El Morro', 8),
(8, 'Puerto Piritu', 17),
(9, 'San Miguel', 17),
(10, 'Sucre', 17),
(11, 'Valle de Guanape', 7),
(12, 'Santa Barbara', 7),
(13, 'Atapirire', 15),
(14, 'Boca del Pao', 15),
(15, 'El Pao', 15),
(16, 'Pariaguan', 15),
(17, 'San Jose de Guanipa', 10),
(18, 'Guanta', 11),
(19, 'Chorreron', 11),
(20, 'Mamo', 12),
(21, 'Soledad', 12),
(22, 'Mapire', 16),
(23, 'Piar', 16),
(24, 'Santa Clara', 16),
(25, 'San Diego de Cabrutica', 16),
(26, 'Uverito', 16),
(27, 'Zuata', 16),
(28, 'Puerto La Cruz', 3),
(29, 'Pozuelos', 3),
(30, 'Onoto', 6),
(31, 'San Pablo', 6),
(32, 'San Mateo', 13),
(33, 'El Carito', 13),
(34, 'Santa Inés', 13),
(35, 'Clarines', 5),
(36, 'Guanape', 5),
(37, 'Sabana de Uchire', 5),
(38, 'Cantaura', 9),
(39, 'Libertador', 9),
(40, 'Santa Rosa', 9),
(41, 'Urica', 9),
(42, 'Píritu', 18),
(43, 'San Francisco', 18),
(44, 'Boca de Uchire', 19),
(45, 'Boca de Chávez', 19),
(46, 'Pueblo Nuevo', 20),
(47, 'Santa Ana', 20),
(48, 'Bergantín', 4),
(49, 'Caigua', 4),
(50, 'El Carmen', 4),
(51, 'El Pilar', 4),
(52, 'Naricual', 4),
(53, 'San Cristóbal', 4),
(54, 'Edmundo Barrios', 21),
(55, 'Miguel Otero Silva', 21),
(56, 'El Chaparro', 14),
(57, 'Tomás Alfaro Calatrava', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paso`
--

CREATE TABLE `paso` (
  `paso_id` int(11) NOT NULL,
  `paso_nombre` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `paso_duracion` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `paso`
--

TRUNCATE TABLE `paso`;
--
-- Volcado de datos para la tabla `paso`
--

INSERT INTO `paso` (`paso_id`, `paso_nombre`, `paso_duracion`, `actividad_id`) VALUES
(1, 'pso uno consultar con jefe de despacho disponibilidad del gobernador', 10, 7),
(2, 'llamar o noificar al ciudadano', 15, 7),
(3, 'direccionar solicitud', 12, 7),
(4, 'realizar entrega', 20, 2),
(5, 'Entregar', 10, 6),
(6, 'entregar examen', 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pdf`
--

CREATE TABLE `pdf` (
  `pdf_id` int(11) NOT NULL,
  `asignacion_id` int(11) NOT NULL,
  `pdf_archivo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `pdf`
--

TRUNCATE TABLE `pdf`;
--
-- Volcado de datos para la tabla `pdf`
--

INSERT INTO `pdf` (`pdf_id`, `asignacion_id`, `pdf_archivo`) VALUES
(1, 1, '1648655772 EQUIPOS GOB 16-03-2022.pdf'),
(2, 1, '1648655788 francisco.pdf'),
(3, 4, '1652725975 EL PORTAFOLIO DE EVIDENCIAS (1).pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesar`
--

CREATE TABLE `procesar` (
  `procesar_id` int(11) NOT NULL,
  `asignacion_id` int(11) NOT NULL,
  `paso_id` int(11) NOT NULL,
  `procesar_observacion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `procesar`
--

TRUNCATE TABLE `procesar`;
--
-- Volcado de datos para la tabla `procesar`
--

INSERT INTO `procesar` (`procesar_id`, `asignacion_id`, `paso_id`, `procesar_observacion`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 1, 1, 'se realizo la actividad, y se planifico para el dia miercoles proximo', '2022-03-30 11:53:53', '2022-03-30 11:54:38'),
(2, 1, 2, 'no se logro comunicacion y se envio correo electronico', '2022-03-30 11:54:39', '2022-03-30 11:54:58'),
(3, 1, 3, 'se llevo se lo datos con el encargado', '2022-03-30 11:55:00', '2022-03-30 11:55:51'),
(4, 4, 5, 'realizando la entrega de la instalación de la impresora', '2022-05-16 14:31:45', '2022-05-16 14:32:06'),
(5, 5, 4, 'primera actividad finalizada', '2022-05-16 15:02:41', '2022-05-16 15:02:54'),
(6, 6, 1, 'primer paso', '2022-05-16 15:07:42', '2022-05-16 15:07:50'),
(7, 6, 2, 'segundo paso', '2022-05-16 15:07:51', '2022-05-16 15:07:56'),
(8, 6, 3, 'tercer paso', '2022-05-16 15:07:57', '2022-05-16 15:08:02'),
(9, 9, 6, 'Realizar la entrega de los examenes', '2022-05-16 15:56:42', '2022-05-16 15:56:57'),
(10, 10, 1, 'caasscsacas', '2022-05-16 17:12:02', '2022-05-16 17:12:11'),
(11, 10, 2, 'cascasc', '2022-05-16 17:12:12', '2022-05-16 17:12:15'),
(12, 10, 3, 'asccsa', '2022-05-16 17:12:16', '2022-05-16 17:12:19'),
(13, 11, 4, 'realizando la fase final', '2022-05-29 10:25:45', '2022-05-29 10:25:59'),
(14, 8, 4, 'procesando actividad', '2022-05-29 12:49:49', '2022-05-29 12:49:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_nombre` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_unidad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_precio` decimal(30,2) NOT NULL,
  `producto_stock` decimal(30,2) NOT NULL,
  `producto_foto` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `kategoria_id` int(7) NOT NULL,
  `usuario_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `producto`
--

TRUNCATE TABLE `producto`;
--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_unidad`, `producto_precio`, `producto_stock`, `producto_foto`, `kategoria_id`, `usuario_id`) VALUES
(1, '21332432', 'Telefono Movil', 'unidad', '12.00', '313.76', '', 2, 1),
(2, '21332433', 'Laptop', '', '5.73', '162.43', '', 2, 1),
(3, '21332434', 'Impresoras', '', '178.96', '307.00', '', 2, 1),
(19, '3342', 'economia', 'und', '34.00', '43.00', 'economia_74.png', 7, 1),
(20, '2344', 'comida', '', '23.44', '763.00', 'comida_7.jpg', 2, 1),
(21, '4234', 'electrodomestico', '', '234.00', '43.00', 'electrodomestico_5.jpg', 7, 1),
(23, '34555211', 'canastilla de comida', 'canasta', '23.00', '680.00', 'canastilla_67.jpg', 2, 1),
(24, '6786', 'impresora', '', '480.00', '524.78', 'impresora_67.png', 2, 1),
(27, '23322332', 'Mouse', 'unidad', '67.00', '553.00', '', 2, 1),
(28, '67765678', 'Almohadilla Sintetica', 'unidad', '42.00', '22.00', 'Almohadilla_28.jpg', 2, 1),
(29, '342342', 'control remoto', 'unidad', '34.00', '125.00', '', 7, 3),
(30, '3244321', 'Baterias', 'unidad', '122.00', '0.00', '', 7, 1),
(31, '665545', 'Cargador de Laptop', 'unidad', '232.00', '0.00', '', 2, 1),
(32, '2243243', 'producto en decimal', 'unidad', '23.32', '245.93', '', 7, 1),
(33, '2344235523', 'Tasa de cafe', 'und', '23.00', '1233.00', 'Tasa_de_cafe_80.jpg', 11, 1),
(34, '123223211', 'Forro de laptop', 'und', '23.00', '34.50', 'Forro_de_laptop_70.jpg', 9, 1),
(35, '7777', 'Laptop vit', 'und', '234.00', '1.00', 'Laptop_vit_89.jpg', 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sector`
--

CREATE TABLE `sector` (
  `sector_id` int(11) NOT NULL,
  `sector_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `parroquia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `sector`
--

TRUNCATE TABLE `sector`;
--
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`sector_id`, `sector_nombre`, `parroquia_id`) VALUES
(1, 'Sector El Espejo', 50),
(2, 'paseo de la cruz y el mar', 28),
(3, 'Bergantin', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `solicitud_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `solicitud_inicio` datetime NOT NULL,
  `solicitud_estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `solicitud_descripcion` varchar(500) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `solicitud`
--

TRUNCATE TABLE `solicitud`;
--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`solicitud_id`, `usuario_id`, `solicitud_inicio`, `solicitud_estado`, `solicitud_descripcion`) VALUES
(1, 10074, '2022-03-30 11:31:52', 'evaluar', 'Quiero hablar con el gobernador'),
(2, 10076, '2022-04-01 11:39:21', 'procesando', 'quiero a trabajar con amado'),
(3, 10075, '2022-04-26 17:01:35', 'sin procesar', 'probando dos actividades en una sola solicitud'),
(4, 10077, '2022-04-26 17:03:17', 'procesando', 'probando dos solicitudes'),
(5, 10078, '2022-05-16 13:02:54', 'finalizado', 'Instalacion de impresora'),
(6, 10078, '2022-05-16 13:21:31', 'sin procesar', 'Prueba Segunda Solicitud'),
(7, 10078, '2022-05-16 13:28:11', 'sin procesar', 'probando el mensaje que queda grabado en la tabla solicitud'),
(8, 10078, '2022-05-16 13:34:48', 'sin procesar', 'tercera prueba de solicitud de una actividad'),
(9, 10078, '2022-05-16 13:38:25', 'sin procesar', 'Probando nueva solicitud dsde el usuario administrador'),
(10, 10079, '2022-05-16 14:52:31', 'procesando', 'Probando dos actividades en una misma solicitud'),
(11, 10078, '2022-05-16 17:08:27', 'procesando', 'arreglo de mi laptop no conecta a internet'),
(12, 10078, '2022-05-29 09:56:00', 'finalizado', 'FORMATEO DE EQUIPO, DIA DOMINGO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_actividad`
--

CREATE TABLE `solicitud_actividad` (
  `sol_act_id` int(11) NOT NULL,
  `solicitud_id` int(11) NOT NULL,
  `actividad_id` int(11) NOT NULL,
  `solicitud_estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `solicitud_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `solicitud_actividad`
--

TRUNCATE TABLE `solicitud_actividad`;
--
-- Volcado de datos para la tabla `solicitud_actividad`
--

INSERT INTO `solicitud_actividad` (`sol_act_id`, `solicitud_id`, `actividad_id`, `solicitud_estado`, `solicitud_fin`) VALUES
(1, 1, 7, 'finalizado', '2022-03-30 11:59:55'),
(2, 1, 2, 'finalizado', '2022-05-29 12:50:09'),
(3, 1, 4, 'asignado', '0000-00-00 00:00:00'),
(4, 3, 2, 'sin asignar', '0000-00-00 00:00:00'),
(5, 3, 4, 'sin asignar', '0000-00-00 00:00:00'),
(8, 4, 2, 'asignado', '0000-00-00 00:00:00'),
(9, 4, 4, 'asignado', '0000-00-00 00:00:00'),
(11, 2, 1, 'finalizado', '2022-05-16 16:47:06'),
(12, 6, 7, 'sin asignar', '0000-00-00 00:00:00'),
(13, 7, 2, 'sin asignar', '0000-00-00 00:00:00'),
(14, 8, 4, 'sin asginar', '0000-00-00 00:00:00'),
(15, 9, 6, 'sin asginar', '0000-00-00 00:00:00'),
(16, 5, 6, 'finalizado', '2022-05-16 14:36:33'),
(19, 10, 7, 'finalizado', '2022-05-17 15:08:08'),
(20, 10, 2, 'finalizado', '2022-05-19 15:04:21'),
(22, 11, 7, 'finalizado', '2022-05-16 17:13:18'),
(24, 12, 2, 'finalizado', '2022-05-29 10:26:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_direccion`
--

CREATE TABLE `solicitud_direccion` (
  `solicitud_direccion_id` int(11) NOT NULL,
  `solicitud_id` int(11) NOT NULL,
  `direccion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `solicitud_direccion`
--

TRUNCATE TABLE `solicitud_direccion`;
--
-- Volcado de datos para la tabla `solicitud_direccion`
--

INSERT INTO `solicitud_direccion` (`solicitud_direccion_id`, `solicitud_id`, `direccion_id`) VALUES
(1, 1, 1),
(2, 4, 1),
(3, 2, 2),
(4, 5, 2),
(5, 10, 2),
(6, 11, 1),
(7, 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_gabinete`
--

CREATE TABLE `solicitud_gabinete` (
  `solicitud_gabinete_id` int(11) NOT NULL,
  `solicitud_id` int(11) NOT NULL,
  `gabinete_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `solicitud_gabinete`
--

TRUNCATE TABLE `solicitud_gabinete`;
--
-- Volcado de datos para la tabla `solicitud_gabinete`
--

INSERT INTO `solicitud_gabinete` (`solicitud_gabinete_id`, `solicitud_id`, `gabinete_id`) VALUES
(1, 1, 2),
(2, 4, 2),
(3, 2, 1),
(4, 5, 1),
(5, 10, 1),
(6, 11, 2),
(7, 12, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `usuario_dni` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_telefono` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_direccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_email` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_usuario` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_clave` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_estado` varchar(17) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_privilegio` int(2) NOT NULL,
  `usuario_imagen` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_tipo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `usuario`
--

TRUNCATE TABLE `usuario`;
--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_dni`, `usuario_nombre`, `usuario_apellido`, `usuario_telefono`, `usuario_direccion`, `usuario_email`, `usuario_usuario`, `usuario_clave`, `usuario_estado`, `usuario_privilegio`, `usuario_imagen`, `usuario_tipo`) VALUES
(1, '16069854', 'Julian Amado', 'Caicaguare Caicaguan', '04248630834', 'Barcelona, Estado Anzoategui', 'caicaguarec@gmail.com', 'administrador', 'QmRqMEJ1UkhIQzAzbEFOVHNZaTVJUT09', 'Activa', 1, 'avatar.jpg', 1),
(10074, '23989776', 'Juan Perez', '', '04248907765', 'Barrio el espejo', 'perez@gmail.com', 'ciudadano23989776', 'Rm5SSjEvVW5sWmVNZ1huOFVpNVE1czdzdUhrU1FnVmhabDB4QXRnTVJvUT0=', 'Deshabilitada', 3, 'default.jpg', 4),
(10075, '21332112321', 'Pedro', 'Perez', '', '', 'pedro@gmil.com', 'pedro', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 3, '1648655167 avatar-mujer-2.jpg', 3),
(10076, '213332123', 'Carlos Rodriguez', 'Rodriguez', '041439842232', 'bergantin', 'herrera@gmail.com', 'ciudadano213332123', 'Rm5SSjEvVW5sWmVNZ1huOFVpNVE1czdzdUhrU1FnVmhabDB4QXRnTVJvUT0=', 'Deshabilitada', 3, 'default.jpg', 4),
(10077, '23324324', 'Jose luis', 'Herrera', '3209002323232', 'Barcelona', 'herrera@gmail.como', 'jose877', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 3, '1648827761 avatar-mujer-2.jpg', 3),
(10078, '5435435345345', 'Esteban', 'Rodriguez', '23434243242', 'Barcelona', 'usuar@gmail.com', 'esteban', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 3, '1652720233 ag02.jpg', 4),
(10079, '31232133123', 'usuario', 'operador', '244324324234', 'puerto la cruz', 'operador1@gmail.com', 'usuariooperador', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 3, '1652720391 ag03.jpg', 3),
(10080, '554345345345', 'usuario', 'supervisor', '2343424324', 'Guanta Chorreron', 'superv@gmail.com', 'usuariosupervisor', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 2, '1652720490 004.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cargo`
--

CREATE TABLE `usuario_cargo` (
  `usuario_cargo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `usuario_cargo`
--

TRUNCATE TABLE `usuario_cargo`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_parroquia`
--

CREATE TABLE `usuario_parroquia` (
  `usuario_parroquia_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `parroquia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `usuario_parroquia`
--

TRUNCATE TABLE `usuario_parroquia`;
--
-- Volcado de datos para la tabla `usuario_parroquia`
--

INSERT INTO `usuario_parroquia` (`usuario_parroquia_id`, `usuario_id`, `parroquia_id`) VALUES
(1, 10074, 50),
(2, 10076, 48),
(3, 10077, 50),
(4, 10076, 28),
(5, 10078, 50),
(6, 10079, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_sector`
--

CREATE TABLE `usuario_sector` (
  `usuario_sector_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `sector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Truncar tablas antes de insertar `usuario_sector`
--

TRUNCATE TABLE `usuario_sector`;
--
-- Volcado de datos para la tabla `usuario_sector`
--

INSERT INTO `usuario_sector` (`usuario_sector_id`, `usuario_id`, `sector_id`) VALUES
(1, 10074, 1),
(2, 10077, 1),
(3, 10076, 2),
(4, 10078, 1),
(5, 10079, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`actividad_id`);

--
-- Indices de la tabla `activo_usuario`
--
ALTER TABLE `activo_usuario`
  ADD PRIMARY KEY (`activo_usuario_id`);

--
-- Indices de la tabla `activo_usuario_status`
--
ALTER TABLE `activo_usuario_status`
  ADD PRIMARY KEY (`activo_usuario_status_id`);

--
-- Indices de la tabla `anexo`
--
ALTER TABLE `anexo`
  ADD PRIMARY KEY (`anexo_id`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD PRIMARY KEY (`asignacion_id`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`bitacora_id`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`cargo_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`configuracion_id`);

--
-- Indices de la tabla `direccion`
--
ALTER TABLE `direccion`
  ADD PRIMARY KEY (`direccion_id`);

--
-- Indices de la tabla `equipo_actividad`
--
ALTER TABLE `equipo_actividad`
  ADD PRIMARY KEY (`equipo_actividad_id`);

--
-- Indices de la tabla `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indices de la tabla `gabinete`
--
ALTER TABLE `gabinete`
  ADD PRIMARY KEY (`gabinete_id`);

--
-- Indices de la tabla `grafica_solicitud`
--
ALTER TABLE `grafica_solicitud`
  ADD PRIMARY KEY (`grafica_solicitud_id`);

--
-- Indices de la tabla `home_actividad`
--
ALTER TABLE `home_actividad`
  ADD PRIMARY KEY (`home_actividad_id`);

--
-- Indices de la tabla `home_direccion`
--
ALTER TABLE `home_direccion`
  ADD PRIMARY KEY (`home_direccion_id`);

--
-- Indices de la tabla `home_gabinete`
--
ALTER TABLE `home_gabinete`
  ADD PRIMARY KEY (`home_gabinete_id`);

--
-- Indices de la tabla `home_indicador`
--
ALTER TABLE `home_indicador`
  ADD PRIMARY KEY (`home_indicador_id`);

--
-- Indices de la tabla `home_operador`
--
ALTER TABLE `home_operador`
  ADD PRIMARY KEY (`home_operador_id`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`imagen_id`);

--
-- Indices de la tabla `indicador`
--
ALTER TABLE `indicador`
  ADD PRIMARY KEY (`indicador_id`);

--
-- Indices de la tabla `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`kategoria_id`);

--
-- Indices de la tabla `mapa`
--
ALTER TABLE `mapa`
  ADD PRIMARY KEY (`mapa_id`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`multimedia_id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`municipio_id`);

--
-- Indices de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  ADD PRIMARY KEY (`parroquia_id`);

--
-- Indices de la tabla `paso`
--
ALTER TABLE `paso`
  ADD PRIMARY KEY (`paso_id`);

--
-- Indices de la tabla `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`pdf_id`);

--
-- Indices de la tabla `procesar`
--
ALTER TABLE `procesar`
  ADD PRIMARY KEY (`procesar_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`kategoria_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`sector_id`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`solicitud_id`);

--
-- Indices de la tabla `solicitud_actividad`
--
ALTER TABLE `solicitud_actividad`
  ADD PRIMARY KEY (`sol_act_id`);

--
-- Indices de la tabla `solicitud_direccion`
--
ALTER TABLE `solicitud_direccion`
  ADD PRIMARY KEY (`solicitud_direccion_id`);

--
-- Indices de la tabla `solicitud_gabinete`
--
ALTER TABLE `solicitud_gabinete`
  ADD PRIMARY KEY (`solicitud_gabinete_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `usuario_cargo`
--
ALTER TABLE `usuario_cargo`
  ADD PRIMARY KEY (`usuario_cargo_id`);

--
-- Indices de la tabla `usuario_parroquia`
--
ALTER TABLE `usuario_parroquia`
  ADD PRIMARY KEY (`usuario_parroquia_id`);

--
-- Indices de la tabla `usuario_sector`
--
ALTER TABLE `usuario_sector`
  ADD PRIMARY KEY (`usuario_sector_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `actividad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `activo_usuario`
--
ALTER TABLE `activo_usuario`
  MODIFY `activo_usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `activo_usuario_status`
--
ALTER TABLE `activo_usuario_status`
  MODIFY `activo_usuario_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `anexo`
--
ALTER TABLE `anexo`
  MODIFY `anexo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  MODIFY `asignacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `bitacora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `cargo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `configuracion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `direccion`
--
ALTER TABLE `direccion`
  MODIFY `direccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equipo_actividad`
--
ALTER TABLE `equipo_actividad`
  MODIFY `equipo_actividad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `gabinete`
--
ALTER TABLE `gabinete`
  MODIFY `gabinete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `grafica_solicitud`
--
ALTER TABLE `grafica_solicitud`
  MODIFY `grafica_solicitud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `home_actividad`
--
ALTER TABLE `home_actividad`
  MODIFY `home_actividad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `home_direccion`
--
ALTER TABLE `home_direccion`
  MODIFY `home_direccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `home_gabinete`
--
ALTER TABLE `home_gabinete`
  MODIFY `home_gabinete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `home_indicador`
--
ALTER TABLE `home_indicador`
  MODIFY `home_indicador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `home_operador`
--
ALTER TABLE `home_operador`
  MODIFY `home_operador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `imagen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `indicador`
--
ALTER TABLE `indicador`
  MODIFY `indicador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `kategoria_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `mapa`
--
ALTER TABLE `mapa`
  MODIFY `mapa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `multimedia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `municipio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `parroquia`
--
ALTER TABLE `parroquia`
  MODIFY `parroquia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `paso`
--
ALTER TABLE `paso`
  MODIFY `paso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pdf`
--
ALTER TABLE `pdf`
  MODIFY `pdf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `procesar`
--
ALTER TABLE `procesar`
  MODIFY `procesar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `sector`
--
ALTER TABLE `sector`
  MODIFY `sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `solicitud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `solicitud_actividad`
--
ALTER TABLE `solicitud_actividad`
  MODIFY `sol_act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `solicitud_direccion`
--
ALTER TABLE `solicitud_direccion`
  MODIFY `solicitud_direccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `solicitud_gabinete`
--
ALTER TABLE `solicitud_gabinete`
  MODIFY `solicitud_gabinete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10081;

--
-- AUTO_INCREMENT de la tabla `usuario_cargo`
--
ALTER TABLE `usuario_cargo`
  MODIFY `usuario_cargo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_parroquia`
--
ALTER TABLE `usuario_parroquia`
  MODIFY `usuario_parroquia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuario_sector`
--
ALTER TABLE `usuario_sector`
  MODIFY `usuario_sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
