-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2022 a las 02:18:43
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

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
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`actividad_id`, `actividad_nombre`, `actividad_descripcion`, `actividad_imagen`, `categoria_id`, `indicador_id`) VALUES
(1, 'Reconexion a internet', 'Actualizacion de los controladores de internet', '1645049322 examenlaboratorio.jpg', 1, 2),
(2, 'Recarga de tinta impresora', 'Recargar manualmente tinta en dispositivo periferico como lo es las impresoras', '1645093852 bolsasdecomida.jpg', 1, 4),
(3, 'Ejecucion de script', 'Ejecucion de script en los diferentes sistemas o apps de la gobernacion', '1645093884 solicitudmedicamentos.jpg', 1, 3),
(4, 'Acceso a internet sede', 'Agregar dispositivos a pfsense tanto pc, laptop, tablet, celular', '1645049497 canastilla2022.jpg', 1, 2),
(5, 'Reparacion cable de red', 'reparacion de cable utp', '1645049620 electrodomesticos.jpg', 1, 4),
(6, 'Recuperacion de clave', 'Recuperacion de clave en equipo windows', '1645049672 electronicos.jpg', 1, 2),
(7, 'Instalacion de sistema operativo', 'Respaldo de la informacion e instalacion o recuperacion del sistema operativo', '1648654547 ag01.jpg', 1, 4);

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
(24, 342342, '31232133123', 'probando otra desvinculacion', '2', '2022-05-24'),
(25, 778899, '32112425', 'para uso interno de la gobernacion', '1', '2022-06-20');

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
-- Volcado de datos para la tabla `activo_usuario_status`
--

INSERT INTO `activo_usuario_status` (`activo_usuario_status_id`, `usuario_cedula`, `producto_codigo`, `estado`) VALUES
(4, '23324324', '23322332', '1'),
(5, '21332112321', '23322332', '2'),
(6, '23989776', '6786', '1'),
(7, '213332123', '21332434', '1'),
(8, '31232133123', '342342', '2'),
(9, '32112425', '778899A', '1');

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
-- Volcado de datos para la tabla `asignacion`
--

INSERT INTO `asignacion` (`asignacion_id`, `solicitud_actividad`, `asignado_a`, `asignado_por`, `asignacion_fecha`, `asignacion_observacion`) VALUES
(1, 30, 10075, 1, '2022-06-03 15:56:11', 'asdasd'),
(2, 20, 10075, 1, '2022-06-03 15:56:24', 'ddsa asd'),
(3, 29, 10075, 1, '2022-06-03 15:56:49', 'cecececc'),
(4, 28, 10077, 1, '2022-06-03 15:56:58', 'sdfsdffds'),
(5, 27, 10079, 1, '2022-06-03 15:57:04', 'fdsfdf'),
(6, 26, 10079, 1, '2022-06-03 15:57:10', 'ffdsf'),
(7, 19, 10075, 1, '2022-06-03 15:57:34', 'fdsfdsf fdsfdffds'),
(8, 25, 10077, 1, '2022-06-03 15:57:49', 'dess de'),
(9, 24, 10075, 1, '2022-06-03 15:57:55', 'dasda'),
(10, 23, 10075, 1, '2022-06-03 15:58:03', 'dsadsa'),
(11, 22, 10077, 1, '2022-06-03 15:58:09', 'ddsadasd'),
(12, 21, 10077, 1, '2022-06-03 15:58:17', 'dasddsa d'),
(13, 18, 10075, 1, '2022-06-03 15:58:25', 'ddsa dsa'),
(14, 17, 10077, 1, '2022-06-03 15:58:32', 'dsa dsad'),
(15, 16, 10075, 1, '2022-06-03 15:58:39', 'dsda dsadas'),
(16, 32, 10075, 1, '2022-06-06 13:00:53', 'revisando una nueva asignacion'),
(17, 34, 10077, 1, '2022-06-06 17:56:25', 'realizar a la brevedad posible'),
(18, 36, 10079, 1, '2022-06-06 18:17:21', 'probando el porcentaje anual'),
(19, 38, 10075, 1, '2022-06-06 20:08:56', 'realizando la operacion'),
(20, 43, 10075, 1, '2022-06-18 08:06:38', 'Chequear primero el script enviado y luego subirlo a la brevedad posible, ya que de ello depende que las nominas salgan hoy mismo. y notificar una vez ejecutado el script a la unidad solicitante, para que ellos continuen con sus calculos.'),
(21, 44, 10077, 1, '2022-06-18 09:19:08', 'Colocar acceso a internet con control de acceso limitado solo lo mas basico.'),
(22, 46, 10079, 10080, '2022-06-18 11:43:48', 'traer equipo a piso dos, y hacer el respectivo cambio de sistema operativo, siempre haciendo primero el respaldo de toda la informacion'),
(23, 48, 10075, 10084, '2022-06-20 19:04:41', 'La unidad de sistema, tiene virus, se recomienda cambiar el sistema operativo actual. y como es la computadora del administrador, hay que hacerlo con urgencia.');

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
(507, '2022-05-30 09:01:57', 'Visualizo el listado de solicitud', 10078),
(508, '2022-06-01 18:43:50', 'Inicio de Sesion', 1),
(509, '2022-06-01 18:43:51', 'Inicio de Sesion', 1),
(510, '2022-06-01 18:44:54', 'Creacion de nueva solicitud: primera solicitud', 1),
(511, '2022-06-01 18:45:23', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(512, '2022-06-01 18:47:35', 'Visualizo el listado de cargos', 1),
(513, '2022-06-01 18:48:07', 'Creacion de nuevo sector: el espejo', 1),
(514, '2022-06-01 18:50:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(515, '2022-06-01 18:50:55', 'Actualizo la siguiente solicitud: primera solicitud', 1),
(516, '2022-06-01 18:51:54', 'Visualizo el listado de solicitud', 1),
(517, '2022-06-01 18:53:23', 'Visualizo el listado de solicitud', 1),
(518, '2022-06-01 18:53:48', 'Creacion de nueva asignacion: realizando', 1),
(519, '2022-06-01 18:53:48', 'Visualizo el listado de solicitud', 1),
(520, '2022-06-01 18:53:58', 'Visualizo el listado de asignaciones', 1),
(521, '2022-06-01 18:55:24', 'Visualizo el listado de asignaciones', 1),
(522, '2022-06-01 18:56:02', 'Creacion de un nuevo paso: entrega', 1),
(523, '2022-06-01 18:56:07', 'Visualizo el listado de asignaciones', 1),
(524, '2022-06-01 18:56:20', 'Creacion de nuevo paso procesado: probando', 1),
(525, '2022-06-01 18:56:25', 'Asignacion finalizada: 2', 1),
(526, '2022-06-01 18:56:28', 'Visualizo el listado de asignaciones', 1),
(527, '2022-06-03 11:26:30', 'Inicio de Sesion', 1),
(528, '2022-06-03 11:27:45', 'Creacion de nuevo sector: Chorreron', 1),
(529, '2022-06-03 11:28:02', 'Creacion de nuevo sector: Ciudad Anaco', 1),
(530, '2022-06-03 11:28:13', 'Visualizo el listado de pasos', 1),
(531, '2022-06-03 11:28:45', 'Creacion de un nuevo paso: conceder audiencia con el gobernador', 1),
(532, '2022-06-03 11:29:11', 'Creacion de un nuevo paso: Detalles de la actividad realizada', 1),
(533, '2022-06-03 11:33:37', 'Creacion de nueva solicitud: dfsdfsfsdfsdfsdf', 1),
(534, '2022-06-03 11:33:43', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(535, '2022-06-03 11:34:09', 'Actualizo la siguiente solicitud: dfsdfsfsdfsdfsdf', 1),
(536, '2022-06-03 11:34:17', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(537, '2022-06-03 11:34:22', 'Visualizo el listado de solicitud', 1),
(538, '2022-06-03 11:34:37', 'Creacion de nueva asignacion: 535345345fsxvxccbngf cbcvb', 1),
(539, '2022-06-03 11:34:37', 'Visualizo el listado de solicitud', 1),
(540, '2022-06-03 11:34:41', 'Visualizo el listado de asignaciones', 1),
(541, '2022-06-03 11:34:50', 'Creacion de nuevo paso procesado: dgfdgdgdfgdfgdfg', 1),
(542, '2022-06-03 11:34:56', 'Asignacion finalizada: 4', 1),
(543, '2022-06-03 11:34:57', 'Visualizo el listado de asignaciones', 1),
(544, '2022-06-03 11:35:02', 'Visualizo el listado de asignaciones', 1),
(545, '2022-06-03 11:35:06', 'Visualizo el listado de asignaciones', 1),
(546, '2022-06-03 11:35:07', 'Visualizo el listado de asignaciones', 1),
(547, '2022-06-03 11:35:08', 'Visualizo el listado de anexo de asignaciones', 1),
(548, '2022-06-03 11:35:10', 'Visualizo el listado de asignaciones', 1),
(549, '2022-06-03 11:35:13', 'Visualizo el listado de solicitud', 1),
(550, '2022-06-03 11:35:28', 'Visualizo el listado de solicitud', 1),
(551, '2022-06-03 11:35:57', 'Visualizo el listado de solicitud', 1),
(552, '2022-06-03 11:36:32', 'Visualizo el listado de asignaciones', 1),
(553, '2022-06-03 11:36:35', 'Visualizo el listado de asignaciones', 1),
(554, '2022-06-03 11:37:42', 'Creacion de nueva solicitud: canastilla', 1),
(555, '2022-06-03 11:39:12', 'Creacion de nueva solicitud: bolsa de alimento necesito', 1),
(556, '2022-06-03 11:40:18', 'Creacion de nueva solicitud: necesito eletrodomesticos', 1),
(557, '2022-06-03 11:40:36', 'Creacion de nueva solicitud: examenes', 1),
(558, '2022-06-03 11:43:05', 'Creacion de nueva solicitud: bosa de alimentos', 1),
(559, '2022-06-03 11:43:47', 'Creacion de nueva solicitud: audiencia con el gobernador', 1),
(560, '2022-06-03 11:44:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(561, '2022-06-03 11:46:22', 'Actualizo la siguiente solicitud: audiencia con el gobernador', 1),
(562, '2022-06-03 11:46:27', 'Visualizo el listado de solicitud', 1),
(563, '2022-06-03 11:46:46', 'Actualizo la siguiente solicitud: audiencia con el gobernador', 1),
(564, '2022-06-03 11:46:49', 'Visualizo el listado de asignaciones', 1),
(565, '2022-06-03 11:46:57', 'Visualizo el listado de asignaciones', 1),
(566, '2022-06-03 11:47:08', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(567, '2022-06-03 11:48:09', 'Visualizo el listado de asignaciones', 1),
(568, '2022-06-03 11:48:14', 'Visualizo el listado de asignaciones', 1),
(569, '2022-06-03 11:48:17', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(570, '2022-06-03 11:48:34', 'Actualizo la siguiente solicitud: canastilla', 1),
(571, '2022-06-03 11:48:39', 'Visualizo el listado de solicitud', 1),
(572, '2022-06-03 11:48:58', 'Actualizo la siguiente solicitud: audiencia con el gobernador', 1),
(573, '2022-06-03 11:49:02', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(574, '2022-06-03 11:49:30', 'Actualizo la siguiente solicitud: bosa de alimentos', 1),
(575, '2022-06-03 11:49:33', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(576, '2022-06-03 11:49:47', 'Actualizo la siguiente solicitud: examenes', 1),
(577, '2022-06-03 11:49:51', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(578, '2022-06-03 11:50:26', 'Actualizo la siguiente solicitud: necesito eletrodomesticos', 1),
(579, '2022-06-03 11:50:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(580, '2022-06-03 11:50:45', 'Actualizo la siguiente solicitud: bolsa de alimento necesito', 1),
(581, '2022-06-03 11:50:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(582, '2022-06-03 11:50:55', 'Visualizo el listado de solicitud', 1),
(583, '2022-06-03 11:51:07', 'Visualizo el listado de asignaciones', 1),
(584, '2022-06-03 11:51:12', 'Visualizo el listado de solicitud', 1),
(585, '2022-06-03 11:51:23', 'Creacion de nueva asignacion: dadfvd', 1),
(586, '2022-06-03 11:51:23', 'Visualizo el listado de solicitud', 1),
(587, '2022-06-03 11:51:30', 'Creacion de nueva asignacion: vdvdsvs', 1),
(588, '2022-06-03 11:51:31', 'Visualizo el listado de solicitud', 1),
(589, '2022-06-03 11:51:38', 'Creacion de nueva asignacion: dfsfdsfd', 1),
(590, '2022-06-03 11:51:38', 'Visualizo el listado de solicitud', 1),
(591, '2022-06-03 11:51:47', 'Creacion de nueva asignacion: asdasdas', 1),
(592, '2022-06-03 11:51:47', 'Visualizo el listado de solicitud', 1),
(593, '2022-06-03 11:51:57', 'Creacion de nueva asignacion: sdfsdgdh', 1),
(594, '2022-06-03 11:51:57', 'Visualizo el listado de solicitud', 1),
(595, '2022-06-03 11:52:07', 'Creacion de nueva asignacion: dsadsadasd', 1),
(596, '2022-06-03 11:52:07', 'Visualizo el listado de solicitud', 1),
(597, '2022-06-03 11:52:18', 'Visualizo el listado de asignaciones', 1),
(598, '2022-06-03 11:52:41', 'Visualizo el listado de asignaciones', 1),
(599, '2022-06-03 11:52:47', 'Visualizo el listado de asignaciones', 1),
(600, '2022-06-03 11:52:51', 'Visualizo el listado de asignaciones', 1),
(601, '2022-06-03 11:52:57', 'Creacion de nuevo paso procesado: sadasdas', 1),
(602, '2022-06-03 11:53:01', 'Asignacion finalizada: 14', 1),
(603, '2022-06-03 11:53:03', 'Visualizo el listado de asignaciones', 1),
(604, '2022-06-03 11:53:08', 'Visualizo el listado de asignaciones', 1),
(605, '2022-06-03 11:53:23', 'Visualizo el listado de asignaciones', 1),
(606, '2022-06-03 11:53:27', 'Creacion de nuevo paso procesado: sdsadas', 1),
(607, '2022-06-03 11:53:31', 'Visualizo el listado de asignaciones', 1),
(608, '2022-06-03 11:53:36', 'Visualizo el listado de asignaciones', 1),
(609, '2022-06-03 11:53:44', 'Visualizo el listado de asignaciones', 1),
(610, '2022-06-03 11:53:51', 'Visualizo el listado de asignaciones', 1),
(611, '2022-06-03 11:53:57', 'Visualizo el listado de asignaciones', 1),
(612, '2022-06-03 11:54:01', 'Visualizo el listado de asignaciones', 1),
(613, '2022-06-03 11:54:06', 'Visualizo el listado de asignaciones', 1),
(614, '2022-06-03 11:54:10', 'Visualizo el listado de asignaciones', 1),
(615, '2022-06-03 11:54:14', 'Visualizo el listado de asignaciones', 1),
(616, '2022-06-03 11:54:18', 'Visualizo el listado de asignaciones', 1),
(617, '2022-06-03 11:54:22', 'Visualizo el listado de asignaciones', 1),
(618, '2022-06-03 11:54:27', 'Visualizo el listado de asignaciones', 1),
(619, '2022-06-03 11:54:37', 'Visualizo el listado de asignaciones', 1),
(620, '2022-06-03 11:54:53', 'Visualizo el listado de asignaciones', 1),
(621, '2022-06-03 11:55:02', 'Visualizo el listado de anexo de asignaciones', 1),
(622, '2022-06-03 11:55:08', 'Visualizo el listado de asignaciones', 1),
(623, '2022-06-03 11:55:12', 'Visualizo el listado de asignaciones', 1),
(624, '2022-06-03 11:55:26', 'Visualizo el listado de asignaciones', 1),
(625, '2022-06-03 11:55:30', 'Visualizo el listado de anexo de asignaciones', 1),
(626, '2022-06-03 11:55:34', 'Visualizo el listado de solicitud', 1),
(627, '2022-06-03 11:55:36', 'Visualizo el listado de asignaciones', 1),
(628, '2022-06-03 11:55:42', 'Visualizo el listado de solicitud', 1),
(629, '2022-06-03 11:55:56', 'Visualizo el listado de solicitud', 1),
(630, '2022-06-03 11:56:27', 'Actualizo la siguiente solicitud: audiencia con el gobernador', 1),
(631, '2022-06-03 11:56:39', 'Visualizo el listado de asignaciones', 1),
(632, '2022-06-03 11:56:42', 'Visualizo el listado de asignaciones', 1),
(633, '2022-06-03 11:56:46', 'Visualizo el listado de asignaciones', 1),
(634, '2022-06-03 11:56:53', 'Creacion de nuevo paso procesado: feffsd', 1),
(635, '2022-06-03 11:56:58', 'Asignacion finalizada: 15', 1),
(636, '2022-06-03 11:57:00', 'Visualizo el listado de asignaciones', 1),
(637, '2022-06-03 11:57:11', 'Visualizo el listado de asignaciones', 1),
(638, '2022-06-03 11:57:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(639, '2022-06-03 11:57:53', 'Visualizo el listado de solicitud', 1),
(640, '2022-06-03 11:58:09', 'Visualizo el listado de solicitud', 1),
(641, '2022-06-03 11:58:26', 'Actualizo la siguiente solicitud: primera solicitud', 1),
(642, '2022-06-03 11:58:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(643, '2022-06-03 11:58:35', 'Visualizo el listado de asignaciones', 1),
(644, '2022-06-03 11:58:38', 'Visualizo el listado de asignaciones', 1),
(645, '2022-06-03 11:58:43', 'Visualizo el listado de anexo de asignaciones', 1),
(646, '2022-06-03 11:58:46', 'Visualizo el listado de asignaciones', 1),
(647, '2022-06-03 11:58:49', 'Visualizo el listado de asignaciones', 1),
(648, '2022-06-03 11:58:53', 'Visualizo el listado de asignaciones', 1),
(649, '2022-06-03 11:59:02', 'Visualizo el listado de asignaciones', 1),
(650, '2022-06-03 11:59:40', 'Creacion de nueva solicitud: cunihgv', 1),
(651, '2022-06-03 11:59:56', 'Creacion de nueva solicitud: jhughjj', 1);
INSERT INTO `bitacora` (`bitacora_id`, `bitacora_fecha`, `bitacora_accion`, `usuario_id`) VALUES
(652, '2022-06-03 12:00:08', 'Creacion de nueva solicitud: hfdhfhbf', 1),
(653, '2022-06-03 12:00:50', 'Creacion de nueva solicitud: imjjoii', 1),
(654, '2022-06-03 12:01:06', 'Creacion de nueva solicitud: jjuhbjjk', 1),
(655, '2022-06-03 12:01:20', 'Creacion de nueva solicitud: ikhhooo', 1),
(656, '2022-06-03 12:01:43', 'Creacion de nueva solicitud: okkkkiii', 1),
(657, '2022-06-03 12:01:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(658, '2022-06-03 12:02:16', 'Actualizo la siguiente solicitud: okkkkiii', 1),
(659, '2022-06-03 12:02:21', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(660, '2022-06-03 12:03:02', 'Actualizo la siguiente solicitud: ikhhooo', 1),
(661, '2022-06-03 12:03:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(662, '2022-06-03 12:04:04', 'Actualizo la siguiente solicitud: jjuhbjjk', 1),
(663, '2022-06-03 12:04:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(664, '2022-06-03 12:04:21', 'Actualizo la siguiente solicitud: imjjoii', 1),
(665, '2022-06-03 12:04:25', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(666, '2022-06-03 12:04:36', 'Actualizo la siguiente solicitud: hfdhfhbf', 1),
(667, '2022-06-03 12:04:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(668, '2022-06-03 12:05:02', 'Actualizo la siguiente solicitud: jhughjj', 1),
(669, '2022-06-03 12:05:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(670, '2022-06-03 12:05:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(671, '2022-06-03 12:05:40', 'Actualizo la siguiente solicitud: cunihgv', 1),
(672, '2022-06-03 12:06:08', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(673, '2022-06-03 12:06:16', 'Visualizo el listado de solicitud', 1),
(674, '2022-06-03 12:06:30', 'Actualizo la siguiente solicitud: okkkkiii', 1),
(675, '2022-06-03 12:06:34', 'Visualizo el listado de solicitud', 1),
(676, '2022-06-03 12:06:56', 'Actualizo la siguiente solicitud: okkkkiii', 1),
(677, '2022-06-03 12:07:00', 'Visualizo el listado de solicitud', 1),
(678, '2022-06-03 12:07:08', 'Visualizo el listado de asignaciones', 1),
(679, '2022-06-03 12:07:27', 'Visualizo el listado de asignaciones', 1),
(680, '2022-06-03 12:07:31', 'Visualizo el listado de anexo de asignaciones', 1),
(681, '2022-06-03 12:07:38', 'Visualizo el listado de solicitud', 1),
(682, '2022-06-03 12:07:57', 'Visualizo el listado de asignaciones', 1),
(683, '2022-06-03 12:08:02', 'Visualizo el listado de solicitud', 1),
(684, '2022-06-03 12:08:15', 'Visualizo el listado de solicitud', 1),
(685, '2022-06-03 12:08:29', 'Visualizo el listado de asignaciones', 1),
(686, '2022-06-03 12:08:40', 'Visualizo el listado de asignaciones', 1),
(687, '2022-06-03 12:08:45', 'Visualizo el listado de solicitud', 1),
(688, '2022-06-03 12:08:57', 'Visualizo el listado de solicitud', 1),
(689, '2022-06-03 12:09:28', 'Actualizo la siguiente solicitud: examenes', 1),
(690, '2022-06-03 12:09:34', 'Visualizo el listado de asignaciones', 1),
(691, '2022-06-03 12:09:37', 'Visualizo el listado de solicitud', 1),
(692, '2022-06-03 12:09:58', 'Actualizo la siguiente solicitud: okkkkiii', 1),
(693, '2022-06-03 12:10:02', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(694, '2022-06-03 12:10:05', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(695, '2022-06-03 12:10:08', 'Visualizo el listado de solicitud', 1),
(696, '2022-06-03 12:10:16', 'Visualizo el listado de asignaciones', 1),
(697, '2022-06-03 12:10:19', 'Visualizo el listado de asignaciones', 1),
(698, '2022-06-03 12:10:22', 'Visualizo el listado de anexo de asignaciones', 1),
(699, '2022-06-03 12:10:31', 'Visualizo el listado de asignaciones', 1),
(700, '2022-06-03 12:10:36', 'Visualizo el listado de asignaciones', 1),
(701, '2022-06-03 12:10:46', 'Visualizo el listado de solicitud', 1),
(702, '2022-06-03 12:10:50', 'Visualizo el listado de asignaciones', 1),
(703, '2022-06-03 12:10:57', 'Visualizo el listado de solicitud', 1),
(704, '2022-06-03 12:11:04', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(705, '2022-06-03 12:11:09', 'Visualizo el listado de solicitud', 1),
(706, '2022-06-03 12:11:48', 'Actualizo la siguiente solicitud: examenes', 1),
(707, '2022-06-03 12:11:51', 'Visualizo el listado de solicitud', 1),
(708, '2022-06-03 12:11:59', 'Creacion de nueva asignacion: fsdsdf', 1),
(709, '2022-06-03 12:11:59', 'Visualizo el listado de solicitud', 1),
(710, '2022-06-03 12:12:05', 'Creacion de nueva asignacion: sadasdasd', 1),
(711, '2022-06-03 12:12:05', 'Visualizo el listado de solicitud', 1),
(712, '2022-06-03 12:12:10', 'Creacion de nueva asignacion: sadasd', 1),
(713, '2022-06-03 12:12:11', 'Visualizo el listado de solicitud', 1),
(714, '2022-06-03 12:12:17', 'Creacion de nueva asignacion: sadasdsa', 1),
(715, '2022-06-03 12:12:17', 'Visualizo el listado de solicitud', 1),
(716, '2022-06-03 12:12:23', 'Creacion de nueva asignacion: dasdasd', 1),
(717, '2022-06-03 12:12:23', 'Visualizo el listado de solicitud', 1),
(718, '2022-06-03 12:12:28', 'Creacion de nueva asignacion: sadsad', 1),
(719, '2022-06-03 12:12:28', 'Visualizo el listado de solicitud', 1),
(720, '2022-06-03 12:12:34', 'Creacion de nueva asignacion: dasdasd', 1),
(721, '2022-06-03 12:12:34', 'Visualizo el listado de solicitud', 1),
(722, '2022-06-03 12:12:41', 'Creacion de nueva asignacion: dasdsad', 1),
(723, '2022-06-03 12:12:41', 'Visualizo el listado de solicitud', 1),
(724, '2022-06-03 12:12:47', 'Creacion de nueva asignacion: dasdasdsa', 1),
(725, '2022-06-03 12:12:47', 'Visualizo el listado de solicitud', 1),
(726, '2022-06-03 12:12:53', 'Creacion de nueva asignacion: asdasd', 1),
(727, '2022-06-03 12:12:53', 'Visualizo el listado de solicitud', 1),
(728, '2022-06-03 12:12:59', 'Visualizo el listado de asignaciones', 1),
(729, '2022-06-03 12:13:02', 'Visualizo el listado de solicitud', 1),
(730, '2022-06-03 12:13:06', 'Visualizo el listado de asignaciones', 1),
(731, '2022-06-03 12:13:09', 'Visualizo el listado de asignaciones', 1),
(732, '2022-06-03 12:13:13', 'Visualizo el listado de asignaciones', 1),
(733, '2022-06-03 12:13:18', 'Creacion de nuevo paso procesado: sddsds', 1),
(734, '2022-06-03 12:13:23', 'Asignacion finalizada: 20', 1),
(735, '2022-06-03 12:13:30', 'Visualizo el listado de asignaciones', 1),
(736, '2022-06-03 12:13:35', 'Visualizo el listado de asignaciones', 1),
(737, '2022-06-03 12:13:40', 'Creacion de nuevo paso procesado: sdadsad', 1),
(738, '2022-06-03 12:13:45', 'Asignacion finalizada: 18', 1),
(739, '2022-06-03 12:13:46', 'Visualizo el listado de asignaciones', 1),
(740, '2022-06-03 12:13:50', 'Visualizo el listado de asignaciones', 1),
(741, '2022-06-03 12:13:59', 'Visualizo el listado de asignaciones', 1),
(742, '2022-06-03 12:14:19', 'Visualizo el listado de asignaciones', 1),
(743, '2022-06-03 12:14:24', 'Visualizo el listado de asignaciones', 1),
(744, '2022-06-03 12:14:29', 'Visualizo el listado de asignaciones', 1),
(745, '2022-06-03 12:14:34', 'Visualizo el listado de asignaciones', 1),
(746, '2022-06-03 12:14:39', 'Creacion de nuevo paso procesado: zasaSA', 1),
(747, '2022-06-03 12:14:43', 'Visualizo el listado de asignaciones', 1),
(748, '2022-06-03 12:14:51', 'Visualizo el listado de asignaciones', 1),
(749, '2022-06-03 12:14:54', 'Creacion de nuevo paso procesado: saddasd', 1),
(750, '2022-06-03 12:14:58', 'Asignacion finalizada: 38', 1),
(751, '2022-06-03 12:15:00', 'Visualizo el listado de asignaciones', 1),
(752, '2022-06-03 12:15:08', 'Visualizo el listado de asignaciones', 1),
(753, '2022-06-03 12:15:29', 'Visualizo el listado de asignaciones', 1),
(754, '2022-06-03 12:15:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(755, '2022-06-03 12:15:41', 'Visualizo el listado de solicitud', 1),
(756, '2022-06-03 12:15:44', 'Visualizo el listado de solicitud', 1),
(757, '2022-06-03 12:15:54', 'Visualizo el listado de solicitud', 1),
(758, '2022-06-03 12:16:25', 'Visualizo el listado de asignaciones', 1),
(759, '2022-06-03 12:16:36', 'Visualizo el listado de asignaciones', 1),
(760, '2022-06-03 12:16:40', 'Visualizo el listado de anexo de asignaciones', 1),
(761, '2022-06-03 12:16:47', 'Visualizo el listado de asignaciones', 1),
(762, '2022-06-03 12:16:52', 'Visualizo el listado de solicitud', 1),
(763, '2022-06-03 12:16:56', 'Visualizo el listado de solicitud', 1),
(764, '2022-06-03 12:17:07', 'Visualizo el listado de solicitud', 1),
(765, '2022-06-03 12:17:09', 'Visualizo el listado de solicitud', 1),
(766, '2022-06-03 12:17:18', 'Visualizo el listado de solicitud', 1),
(767, '2022-06-03 12:17:32', 'Visualizo el listado de solicitud', 1),
(768, '2022-06-03 12:17:43', 'Visualizo el listado de solicitud', 1),
(769, '2022-06-03 12:17:47', 'Visualizo el listado de asignaciones', 1),
(770, '2022-06-03 12:17:51', 'Visualizo el listado de asignaciones', 1),
(771, '2022-06-03 12:17:57', 'Visualizo el listado de anexo de asignaciones', 1),
(772, '2022-06-03 12:18:03', 'Visualizo el listado de asignaciones', 1),
(773, '2022-06-03 12:18:08', 'Visualizo el listado de asignaciones', 1),
(774, '2022-06-03 12:18:19', 'Visualizo el listado de asignaciones', 1),
(775, '2022-06-03 12:18:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(776, '2022-06-03 12:18:59', 'Visualizo el listado de solicitud', 1),
(777, '2022-06-03 12:19:14', 'Actualizo la siguiente solicitud: okkkkiii', 1),
(778, '2022-06-03 12:19:19', 'Visualizo el listado de asignaciones', 1),
(779, '2022-06-03 12:19:24', 'Visualizo el listado de asignaciones', 1),
(780, '2022-06-03 12:19:28', 'Visualizo el listado de asignaciones', 1),
(781, '2022-06-03 12:19:31', 'Visualizo el listado de asignaciones', 1),
(782, '2022-06-03 12:19:36', 'Visualizo el listado de asignaciones', 1),
(783, '2022-06-03 12:19:50', 'Creacion de nuevo paso procesado: sdaddas', 1),
(784, '2022-06-03 12:19:54', 'Asignacion finalizada: 19', 1),
(785, '2022-06-03 12:19:55', 'Visualizo el listado de asignaciones', 1),
(786, '2022-06-03 12:20:01', 'Visualizo el listado de asignaciones', 1),
(787, '2022-06-03 12:20:14', 'Visualizo el listado de asignaciones', 1),
(788, '2022-06-03 12:20:30', 'Visualizo el listado de asignaciones', 1),
(789, '2022-06-03 12:20:45', 'Visualizo el listado de asignaciones', 1),
(790, '2022-06-03 12:20:50', 'Visualizo el listado de asignaciones', 1),
(791, '2022-06-03 12:21:05', 'Visualizo el listado de asignaciones', 1),
(792, '2022-06-03 12:21:08', 'Visualizo el listado de asignaciones', 1),
(793, '2022-06-03 12:21:15', 'Visualizo el listado de asignaciones', 1),
(794, '2022-06-03 12:21:18', 'Visualizo el listado de solicitud', 1),
(795, '2022-06-03 12:21:30', 'Visualizo el listado de solicitud', 1),
(796, '2022-06-03 12:21:46', 'Actualizo la siguiente solicitud: okkkkiii', 1),
(797, '2022-06-03 12:21:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(798, '2022-06-03 12:21:55', 'Visualizo el listado de solicitud', 1),
(799, '2022-06-03 12:21:58', 'Visualizo el listado de solicitud', 1),
(800, '2022-06-03 12:22:12', 'Actualizo la siguiente solicitud: necesito eletrodomesticos', 1),
(801, '2022-06-03 12:22:19', 'Visualizo el listado de solicitud', 1),
(802, '2022-06-03 12:22:24', 'Visualizo el listado de solicitud', 1),
(803, '2022-06-03 12:22:34', 'Visualizo el listado de asignaciones', 1),
(804, '2022-06-03 12:22:40', 'Visualizo el listado de asignaciones', 1),
(805, '2022-06-03 12:22:42', 'Visualizo el listado de asignaciones', 1),
(806, '2022-06-03 12:22:49', 'Visualizo el listado de asignaciones', 1),
(807, '2022-06-03 12:22:51', 'Visualizo el listado de asignaciones', 1),
(808, '2022-06-03 12:22:56', 'Visualizo el listado de anexo de asignaciones', 1),
(809, '2022-06-03 12:22:58', 'Visualizo el listado de asignaciones', 1),
(810, '2022-06-03 12:23:07', 'Visualizo el listado de solicitud', 1),
(811, '2022-06-03 12:23:14', 'Creacion de nueva asignacion: fdsfdsfdf', 1),
(812, '2022-06-03 12:23:14', 'Visualizo el listado de solicitud', 1),
(813, '2022-06-03 12:23:26', 'Creacion de nueva asignacion: dfdsfsd', 1),
(814, '2022-06-03 12:23:26', 'Visualizo el listado de solicitud', 1),
(815, '2022-06-03 12:23:31', 'Visualizo el listado de solicitud', 1),
(816, '2022-06-03 12:23:33', 'Visualizo el listado de asignaciones', 1),
(817, '2022-06-03 12:23:38', 'Visualizo el listado de asignaciones', 1),
(818, '2022-06-03 12:23:46', 'Visualizo el listado de asignaciones', 1),
(819, '2022-06-03 12:23:50', 'Visualizo el listado de solicitud', 1),
(820, '2022-06-03 12:23:53', 'Visualizo el listado de solicitud', 1),
(821, '2022-06-03 12:24:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(822, '2022-06-03 12:24:02', 'Visualizo el listado de solicitud', 1),
(823, '2022-06-03 12:24:05', 'Visualizo el listado de asignaciones', 1),
(824, '2022-06-03 12:24:11', 'Visualizo el listado de asignaciones', 1),
(825, '2022-06-03 12:24:20', 'Visualizo el listado de asignaciones', 1),
(826, '2022-06-03 12:24:38', 'Visualizo el listado de asignaciones', 1),
(827, '2022-06-03 12:24:43', 'Visualizo el listado de anexo de asignaciones', 1),
(828, '2022-06-03 12:24:45', 'Visualizo el listado de asignaciones', 1),
(829, '2022-06-03 12:24:56', 'Visualizo el listado de asignaciones', 1),
(830, '2022-06-03 12:25:04', 'Visualizo el listado de asignaciones', 1),
(831, '2022-06-03 12:25:15', 'Visualizo el listado de asignaciones', 1),
(832, '2022-06-03 12:25:19', 'Visualizo el listado de asignaciones', 1),
(833, '2022-06-03 12:25:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(834, '2022-06-03 12:25:30', 'Visualizo el listado de solicitud', 1),
(835, '2022-06-03 12:25:41', 'Actualizo la siguiente solicitud: okkkkiii', 1),
(836, '2022-06-03 12:25:44', 'Visualizo el listado de solicitud', 1),
(837, '2022-06-03 12:25:47', 'Visualizo el listado de solicitud', 1),
(838, '2022-06-03 12:26:00', 'Actualizo la siguiente solicitud: necesito eletrodomesticos', 1),
(839, '2022-06-03 12:26:03', 'Visualizo el listado de solicitud', 1),
(840, '2022-06-03 12:26:19', 'Actualizo la siguiente solicitud: canastilla', 1),
(841, '2022-06-03 12:26:22', 'Visualizo el listado de solicitud', 1),
(842, '2022-06-03 12:26:26', 'Visualizo el listado de solicitud', 1),
(843, '2022-06-03 12:26:27', 'Visualizo el listado de solicitud', 1),
(844, '2022-06-03 12:26:46', 'Actualizo la siguiente solicitud: audiencia con el gobernador', 1),
(845, '2022-06-03 12:26:49', 'Visualizo el listado de solicitud', 1),
(846, '2022-06-03 12:26:58', 'Visualizo el listado de solicitud', 1),
(847, '2022-06-03 12:27:02', 'Visualizo el listado de asignaciones', 1),
(848, '2022-06-03 12:27:08', 'Visualizo el listado de asignaciones', 1),
(849, '2022-06-03 12:27:17', 'Visualizo el listado de asignaciones', 1),
(850, '2022-06-03 12:27:23', 'Visualizo el listado de anexo de asignaciones', 1),
(851, '2022-06-03 12:27:25', 'Visualizo el listado de asignaciones', 1),
(852, '2022-06-03 12:28:15', 'Visualizo el listado de asignaciones', 1),
(853, '2022-06-03 12:28:28', 'Visualizo el listado de asignaciones', 1),
(854, '2022-06-03 12:28:33', 'Visualizo el listado de asignaciones', 1),
(855, '2022-06-03 12:28:39', 'Visualizo el listado de asignaciones', 1),
(856, '2022-06-03 12:28:49', 'Visualizo el listado de asignaciones', 1),
(857, '2022-06-03 12:29:16', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(858, '2022-06-03 12:29:19', 'Visualizo el listado de solicitud', 1),
(859, '2022-06-03 12:29:24', 'Visualizo el listado de solicitud', 1),
(860, '2022-06-03 12:29:34', 'Visualizo el listado de solicitud', 1),
(861, '2022-06-03 12:29:45', 'Visualizo el listado de solicitud', 1),
(862, '2022-06-03 12:30:03', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(863, '2022-06-03 12:30:06', 'Visualizo el listado de solicitud', 1),
(864, '2022-06-03 12:32:10', 'Creacion de nueva solicitud: ujjjoo', 1),
(865, '2022-06-03 12:32:24', 'Creacion de nueva solicitud: sdsfsfsdfds', 1),
(866, '2022-06-03 12:32:34', 'Creacion de nueva solicitud: dgfdgfdgd', 1),
(867, '2022-06-03 12:32:46', 'Creacion de nueva solicitud: dfgfdgdgd', 1),
(868, '2022-06-03 12:33:09', 'Creacion de nueva solicitud: ijnu,kij', 1),
(869, '2022-06-03 12:33:26', 'Creacion de nueva solicitud: okkjuhioj', 1),
(870, '2022-06-03 12:33:47', 'Creacion de nueva solicitud: ijijiuuhjn', 1),
(871, '2022-06-03 12:33:59', 'Creacion de nueva solicitud: yuguyguygyhjn', 1),
(872, '2022-06-03 12:34:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(873, '2022-06-03 12:34:22', 'Actualizo la siguiente solicitud: yuguyguygyhjn', 1),
(874, '2022-06-03 12:34:26', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(875, '2022-06-03 12:34:37', 'Actualizo la siguiente solicitud: ijijiuuhjn', 1),
(876, '2022-06-03 12:34:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(877, '2022-06-03 12:34:52', 'Actualizo la siguiente solicitud: okkjuhioj', 1),
(878, '2022-06-03 12:35:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(879, '2022-06-03 12:35:34', 'Actualizo la siguiente solicitud: ijnu,kij', 1),
(880, '2022-06-03 12:35:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(881, '2022-06-03 12:35:56', 'Actualizo la siguiente solicitud: dgfdgfdgd', 1),
(882, '2022-06-03 12:36:01', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(883, '2022-06-03 12:36:26', 'Actualizo la siguiente solicitud: ujjjoo', 1),
(884, '2022-06-03 12:36:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(885, '2022-06-03 12:36:50', 'Actualizo la siguiente solicitud: dfgfdgdgd', 1),
(886, '2022-06-03 12:36:56', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(887, '2022-06-03 12:37:34', 'Actualizo la siguiente solicitud: sdsfsfsdfds', 1),
(888, '2022-06-03 12:37:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(889, '2022-06-03 12:37:41', 'Visualizo el listado de solicitud', 1),
(890, '2022-06-03 12:37:52', 'Actualizo la siguiente solicitud: yuguyguygyhjn', 1),
(891, '2022-06-03 12:37:58', 'Actualizo la siguiente solicitud: yuguyguygyhjn', 1),
(892, '2022-06-03 12:38:02', 'Visualizo el listado de solicitud', 1),
(893, '2022-06-03 12:38:06', 'Visualizo el listado de solicitud', 1),
(894, '2022-06-03 12:38:13', 'Creacion de nueva asignacion: fsdfsdf', 1),
(895, '2022-06-03 12:38:13', 'Visualizo el listado de solicitud', 1),
(896, '2022-06-03 12:38:50', 'Creacion de nueva asignacion: ijojoij', 1),
(897, '2022-06-03 12:38:50', 'Visualizo el listado de solicitud', 1),
(898, '2022-06-03 12:38:58', 'Creacion de nueva asignacion: ftgfyfghj', 1),
(899, '2022-06-03 12:38:59', 'Visualizo el listado de solicitud', 1),
(900, '2022-06-03 12:39:07', 'Creacion de nueva asignacion: giuhoo', 1),
(901, '2022-06-03 12:39:07', 'Visualizo el listado de solicitud', 1),
(902, '2022-06-03 12:39:14', 'Creacion de nueva asignacion: ighjkm', 1),
(903, '2022-06-03 12:39:14', 'Visualizo el listado de solicitud', 1),
(904, '2022-06-03 12:39:23', 'Creacion de nueva asignacion: ihjkijli', 1),
(905, '2022-06-03 12:39:23', 'Visualizo el listado de solicitud', 1),
(906, '2022-06-03 12:39:32', 'Creacion de nueva asignacion: jhguigbkijn', 1),
(907, '2022-06-03 12:39:32', 'Visualizo el listado de solicitud', 1),
(908, '2022-06-03 12:39:40', 'Creacion de nueva asignacion: uhjhkjl', 1),
(909, '2022-06-03 12:39:40', 'Visualizo el listado de solicitud', 1),
(910, '2022-06-03 12:39:49', 'Creacion de nueva asignacion: ujhiuljkl', 1),
(911, '2022-06-03 12:39:49', 'Visualizo el listado de solicitud', 1),
(912, '2022-06-03 12:39:57', 'Creacion de nueva asignacion: yugjhij', 1),
(913, '2022-06-03 12:39:57', 'Visualizo el listado de solicitud', 1),
(914, '2022-06-03 12:40:06', 'Creacion de nueva asignacion: gjhuijhn', 1),
(915, '2022-06-03 12:40:06', 'Visualizo el listado de solicitud', 1),
(916, '2022-06-03 12:40:14', 'Creacion de nueva asignacion: hjhkjk', 1),
(917, '2022-06-03 12:40:14', 'Visualizo el listado de solicitud', 1),
(918, '2022-06-03 12:40:23', 'Creacion de nueva asignacion: iuhjlkkl', 1),
(919, '2022-06-03 12:40:23', 'Visualizo el listado de solicitud', 1),
(920, '2022-06-03 12:40:29', 'Visualizo el listado de solicitud', 1),
(921, '2022-06-03 12:40:31', 'Visualizo el listado de asignaciones', 1),
(922, '2022-06-03 12:40:41', 'Visualizo el listado de asignaciones', 1),
(923, '2022-06-03 12:40:44', 'Visualizo el listado de asignaciones', 1),
(924, '2022-06-03 12:40:45', 'Visualizo el listado de asignaciones', 1),
(925, '2022-06-03 12:42:37', 'Visualizo el listado de asignaciones', 1),
(926, '2022-06-03 12:42:42', 'Visualizo el listado de asignaciones', 1),
(927, '2022-06-03 12:42:44', 'Visualizo el listado de asignaciones', 1),
(928, '2022-06-03 12:42:49', 'Visualizo el listado de anexo de asignaciones', 1),
(929, '2022-06-03 12:43:08', 'Visualizo el listado de asignaciones', 1),
(930, '2022-06-03 12:43:13', 'Visualizo el listado de asignaciones', 1),
(931, '2022-06-03 12:43:20', 'Visualizo el listado de asignaciones', 1),
(932, '2022-06-03 12:43:31', 'Visualizo el listado de asignaciones', 1),
(933, '2022-06-03 12:43:44', 'Visualizo el listado de asignaciones', 1),
(934, '2022-06-03 12:43:58', 'Visualizo el listado de solicitud', 1),
(935, '2022-06-03 12:44:08', 'Actualizo la siguiente solicitud: okkjuhioj', 1),
(936, '2022-06-03 12:44:14', 'Visualizo el listado de solicitud', 1),
(937, '2022-06-03 12:44:21', 'Visualizo el listado de solicitud', 1),
(938, '2022-06-03 12:44:58', 'Visualizo el listado de asignaciones', 1),
(939, '2022-06-03 12:45:01', 'Visualizo el listado de asignaciones', 1),
(940, '2022-06-03 12:45:05', 'Visualizo el listado de anexo de asignaciones', 1),
(941, '2022-06-03 12:45:08', 'Visualizo el listado de asignaciones', 1),
(942, '2022-06-03 12:45:12', 'Visualizo el listado de solicitud', 1),
(943, '2022-06-03 12:45:19', 'Creacion de nueva asignacion: dfgdgfg', 1),
(944, '2022-06-03 12:45:19', 'Visualizo el listado de solicitud', 1),
(945, '2022-06-03 12:45:28', 'Visualizo el listado de solicitud', 1),
(946, '2022-06-03 12:45:39', 'Actualizo la siguiente solicitud: yuguyguygyhjn', 1),
(947, '2022-06-03 12:45:45', 'Actualizo la siguiente solicitud: yuguyguygyhjn', 1),
(948, '2022-06-03 12:45:50', 'Visualizo el listado de asignaciones', 1),
(949, '2022-06-03 12:45:52', 'Visualizo el listado de asignaciones', 1),
(950, '2022-06-03 12:45:55', 'Visualizo el listado de asignaciones', 1),
(951, '2022-06-03 12:45:59', 'Visualizo el listado de solicitud', 1),
(952, '2022-06-03 12:46:06', 'Creacion de nueva asignacion: ghhg', 1),
(953, '2022-06-03 12:46:06', 'Visualizo el listado de solicitud', 1),
(954, '2022-06-03 12:46:10', 'Visualizo el listado de asignaciones', 1),
(955, '2022-06-03 12:46:14', 'Visualizo el listado de asignaciones', 1),
(956, '2022-06-03 12:46:21', 'Visualizo el listado de asignaciones', 1),
(957, '2022-06-03 12:46:24', 'Visualizo el listado de solicitud', 1),
(958, '2022-06-03 12:46:29', 'Visualizo el listado de solicitud', 1),
(959, '2022-06-03 12:46:42', 'Actualizo la siguiente solicitud: ijijiuuhjn', 1),
(960, '2022-06-03 12:46:50', 'Visualizo el listado de asignaciones', 1),
(961, '2022-06-03 12:46:52', 'Visualizo el listado de asignaciones', 1),
(962, '2022-06-03 12:46:54', 'Visualizo el listado de asignaciones', 1),
(963, '2022-06-03 12:46:58', 'Visualizo el listado de asignaciones', 1),
(964, '2022-06-03 12:47:04', 'Visualizo el listado de asignaciones', 1),
(965, '2022-06-03 12:47:14', 'Visualizo el listado de asignaciones', 1),
(966, '2022-06-03 12:47:18', 'Visualizo el listado de asignaciones', 1),
(967, '2022-06-03 12:47:27', 'Visualizo el listado de asignaciones', 1),
(968, '2022-06-03 12:47:31', 'Visualizo el listado de solicitud', 1),
(969, '2022-06-03 12:47:37', 'Creacion de nueva asignacion: fsdfdsf', 1),
(970, '2022-06-03 12:47:37', 'Visualizo el listado de solicitud', 1),
(971, '2022-06-03 12:47:40', 'Visualizo el listado de solicitud', 1),
(972, '2022-06-03 12:47:50', 'Actualizo la siguiente solicitud: okkjuhioj', 1),
(973, '2022-06-03 12:47:54', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(974, '2022-06-03 12:47:57', 'Visualizo el listado de solicitud', 1),
(975, '2022-06-03 12:47:59', 'Visualizo el listado de solicitud', 1),
(976, '2022-06-03 12:48:09', 'Actualizo la siguiente solicitud: yuguyguygyhjn', 1),
(977, '2022-06-03 12:48:13', 'Visualizo el listado de solicitud', 1),
(978, '2022-06-03 12:48:19', 'Creacion de nueva asignacion: fdhgfhg', 1),
(979, '2022-06-03 12:48:19', 'Visualizo el listado de solicitud', 1),
(980, '2022-06-03 12:48:27', 'Creacion de nueva asignacion: jvjhb', 1),
(981, '2022-06-03 12:48:27', 'Visualizo el listado de solicitud', 1),
(982, '2022-06-03 12:48:30', 'Visualizo el listado de solicitud', 1),
(983, '2022-06-03 12:48:49', 'Actualizo la siguiente solicitud: yuguyguygyhjn', 1),
(984, '2022-06-03 12:48:52', 'Visualizo el listado de solicitud', 1),
(985, '2022-06-03 12:49:04', 'Actualizo la siguiente solicitud: sdsfsfsdfds', 1),
(986, '2022-06-03 12:49:11', 'Visualizo el listado de solicitud', 1),
(987, '2022-06-03 12:49:17', 'Visualizo el listado de asignaciones', 1),
(988, '2022-06-03 12:49:23', 'Visualizo el listado de solicitud', 1),
(989, '2022-06-03 12:49:31', 'Creacion de nueva asignacion: jknjn', 1),
(990, '2022-06-03 12:49:31', 'Visualizo el listado de solicitud', 1),
(991, '2022-06-03 12:49:38', 'Creacion de nueva asignacion: gvjhbjh', 1),
(992, '2022-06-03 12:49:39', 'Visualizo el listado de solicitud', 1),
(993, '2022-06-03 12:49:42', 'Visualizo el listado de solicitud', 1),
(994, '2022-06-03 12:49:47', 'Visualizo el listado de solicitud', 1),
(995, '2022-06-03 12:49:59', 'Actualizo la siguiente solicitud: bolsa de alimento necesito', 1),
(996, '2022-06-03 12:50:02', 'Visualizo el listado de solicitud', 1),
(997, '2022-06-03 12:50:13', 'Visualizo el listado de solicitud', 1),
(998, '2022-06-03 12:50:16', 'Visualizo el listado de solicitud', 1),
(999, '2022-06-03 12:50:22', 'Visualizo el listado de asignaciones', 1),
(1000, '2022-06-03 12:50:25', 'Visualizo el listado de asignaciones', 1),
(1001, '2022-06-03 12:50:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1002, '2022-06-03 12:50:35', 'Visualizo el listado de solicitud', 1),
(1003, '2022-06-03 12:50:38', 'Visualizo el listado de asignaciones', 1),
(1004, '2022-06-03 12:50:41', 'Visualizo el listado de asignaciones', 1),
(1005, '2022-06-03 12:50:43', 'Visualizo el listado de asignaciones', 1),
(1006, '2022-06-03 12:50:48', 'Visualizo el listado de asignaciones', 1),
(1007, '2022-06-03 12:50:53', 'Visualizo el listado de asignaciones', 1),
(1008, '2022-06-03 12:50:55', 'Visualizo el listado de asignaciones', 1),
(1009, '2022-06-03 12:51:07', 'Visualizo el listado de asignaciones', 1),
(1010, '2022-06-03 12:51:10', 'Visualizo el listado de solicitud', 1),
(1011, '2022-06-03 12:51:17', 'Creacion de nueva asignacion: ihjk,', 1),
(1012, '2022-06-03 12:51:17', 'Visualizo el listado de solicitud', 1),
(1013, '2022-06-03 12:51:23', 'Visualizo el listado de asignaciones', 1),
(1014, '2022-06-03 12:52:29', 'Visualizo el listado de asignaciones', 1),
(1015, '2022-06-03 12:52:33', 'Visualizo el listado de asignaciones', 1),
(1016, '2022-06-03 12:56:17', 'Visualizo el listado de asignaciones', 1),
(1017, '2022-06-03 14:19:09', 'Visualizo el listado de solicitud', 1),
(1018, '2022-06-03 14:19:22', 'Visualizo el listado de asignaciones', 1),
(1019, '2022-06-03 14:19:29', 'Visualizo el listado de solicitud', 1),
(1020, '2022-06-03 14:19:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1021, '2022-06-03 14:19:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1022, '2022-06-03 14:19:42', 'Visualizo el listado de solicitud', 1),
(1023, '2022-06-03 14:19:54', 'Visualizo el listado de solicitud', 1),
(1024, '2022-06-03 14:19:56', 'Visualizo el listado de solicitud', 1),
(1025, '2022-06-03 14:20:12', 'Visualizo el listado de solicitud', 1),
(1026, '2022-06-03 14:20:15', 'Visualizo el listado de asignaciones', 1),
(1027, '2022-06-03 14:20:23', 'Visualizo el listado de asignaciones', 1),
(1028, '2022-06-03 14:20:29', 'Visualizo el listado de asignaciones', 1),
(1029, '2022-06-03 14:22:16', 'Visualizo el listado de asignaciones', 1),
(1030, '2022-06-03 14:22:29', 'Visualizo el listado de asignaciones', 1),
(1031, '2022-06-03 14:22:36', 'Visualizo el listado de asignaciones', 1),
(1032, '2022-06-03 14:22:40', 'Visualizo el listado de solicitud', 1),
(1033, '2022-06-03 14:22:43', 'Visualizo el listado de solicitud', 1),
(1034, '2022-06-03 14:22:46', 'Visualizo el listado de solicitud', 1),
(1035, '2022-06-03 14:22:51', 'Visualizo el listado de solicitud', 1),
(1036, '2022-06-03 14:22:53', 'Visualizo el listado de solicitud', 1),
(1037, '2022-06-03 14:23:00', 'Visualizo el listado de solicitud', 1),
(1038, '2022-06-03 14:23:03', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1039, '2022-06-03 14:23:10', 'Visualizo el listado de asignaciones', 1),
(1040, '2022-06-03 14:23:21', 'Visualizo el listado de asignaciones', 1),
(1041, '2022-06-03 14:23:29', 'Visualizo el listado de asignaciones', 1),
(1042, '2022-06-03 14:23:38', 'Visualizo el listado de asignaciones', 1),
(1043, '2022-06-03 14:31:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1044, '2022-06-03 14:31:51', 'Visualizo el listado de solicitud', 1),
(1045, '2022-06-03 14:31:55', 'Visualizo el listado de solicitud', 1),
(1046, '2022-06-03 14:31:59', 'Visualizo el listado de solicitud', 1),
(1047, '2022-06-03 14:32:23', 'Actualizo la siguiente solicitud: canastilla', 1),
(1048, '2022-06-03 14:32:28', 'Visualizo el listado de asignaciones', 1),
(1049, '2022-06-03 14:32:29', 'Visualizo el listado de asignaciones', 1),
(1050, '2022-06-03 14:32:35', 'Visualizo el listado de solicitud', 1),
(1051, '2022-06-03 14:32:55', 'Creacion de nueva asignacion: dfsfds', 1),
(1052, '2022-06-03 14:32:55', 'Visualizo el listado de solicitud', 1),
(1053, '2022-06-03 14:33:00', 'Visualizo el listado de asignaciones', 1),
(1054, '2022-06-03 14:33:13', 'Visualizo el listado de asignaciones', 1),
(1055, '2022-06-03 14:33:22', 'Visualizo el listado de asignaciones', 1),
(1056, '2022-06-03 14:33:25', 'Visualizo el listado de asignaciones', 1),
(1057, '2022-06-03 14:33:36', 'Creacion de nuevo paso procesado: dfgdfgdfgddfg', 1),
(1058, '2022-06-03 14:33:41', 'Asignacion finalizada: 75', 1),
(1059, '2022-06-03 14:33:42', 'Visualizo el listado de asignaciones', 1),
(1060, '2022-06-03 14:33:52', 'Visualizo el listado de solicitud', 1),
(1061, '2022-06-03 14:33:58', 'Visualizo el listado de solicitud', 1),
(1062, '2022-06-03 14:34:17', 'Visualizo el listado de solicitud', 1),
(1063, '2022-06-03 14:46:11', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1064, '2022-06-03 14:46:16', 'Visualizo el listado de solicitud', 1),
(1065, '2022-06-03 14:46:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1066, '2022-06-03 14:46:32', 'Visualizo el listado de solicitud', 1),
(1067, '2022-06-03 14:46:42', 'Hizo la siguiente busqueda: finalizado en el listado de solicitud', 1),
(1068, '2022-06-03 14:46:56', 'Hizo la siguiente busqueda: procesando en el listado de solicitud', 1),
(1069, '2022-06-03 14:47:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1070, '2022-06-03 14:53:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1071, '2022-06-03 14:53:29', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1072, '2022-06-03 14:56:15', 'Visualizo el listado de solicitud', 1),
(1073, '2022-06-03 14:56:40', 'Actualizo la siguiente solicitud: yuguyguygyhjn', 1),
(1074, '2022-06-03 14:56:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1075, '2022-06-03 14:56:50', 'Visualizo el listado de solicitud', 1),
(1076, '2022-06-03 14:57:14', 'Actualizo la siguiente solicitud: ijijiuuhjn', 1),
(1077, '2022-06-03 14:57:15', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1078, '2022-06-03 14:57:17', 'Visualizo el listado de solicitud', 1),
(1079, '2022-06-03 14:57:33', 'Actualizo la siguiente solicitud: okkjuhioj', 1),
(1080, '2022-06-03 14:59:13', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1081, '2022-06-03 14:59:16', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1082, '2022-06-03 14:59:18', 'Visualizo el listado de solicitud', 1),
(1083, '2022-06-03 14:59:38', 'Actualizo la siguiente solicitud: ijnu,kij', 1),
(1084, '2022-06-03 14:59:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1085, '2022-06-03 14:59:41', 'Visualizo el listado de solicitud', 1),
(1086, '2022-06-03 14:59:58', 'Actualizo la siguiente solicitud: dfgfdgdgd', 1),
(1087, '2022-06-03 14:59:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1088, '2022-06-03 15:00:03', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1089, '2022-06-03 15:00:14', 'Visualizo el listado de solicitud', 1),
(1090, '2022-06-03 15:00:27', 'Creacion de nueva asignacion: fsdfsdf', 1),
(1091, '2022-06-03 15:00:27', 'Visualizo el listado de solicitud', 1),
(1092, '2022-06-03 15:00:37', 'Creacion de nueva asignacion: fsdfsdfsf', 1),
(1093, '2022-06-03 15:00:38', 'Visualizo el listado de solicitud', 1),
(1094, '2022-06-03 15:00:44', 'Creacion de nueva asignacion: sfffdsf', 1),
(1095, '2022-06-03 15:00:45', 'Visualizo el listado de solicitud', 1),
(1096, '2022-06-03 15:00:52', 'Creacion de nueva asignacion: sfffdsf', 1),
(1097, '2022-06-03 15:00:53', 'Visualizo el listado de solicitud', 1),
(1098, '2022-06-03 15:00:59', 'Creacion de nueva asignacion: sdfsdfsf', 1),
(1099, '2022-06-03 15:00:59', 'Visualizo el listado de solicitud', 1),
(1100, '2022-06-03 15:01:02', 'Visualizo el listado de asignaciones', 1),
(1101, '2022-06-03 15:01:09', 'Visualizo el listado de asignaciones', 1),
(1102, '2022-06-03 15:01:23', 'Visualizo el listado de asignaciones', 1),
(1103, '2022-06-03 15:01:29', 'Visualizo el listado de asignaciones', 1),
(1104, '2022-06-03 15:01:43', 'Visualizo el listado de asignaciones', 1),
(1105, '2022-06-03 15:01:52', 'Visualizo el listado de asignaciones', 1),
(1106, '2022-06-03 15:02:17', 'Inicio de Sesion', 10075),
(1107, '2022-06-03 15:02:20', 'Visualizo el listado de asignaciones', 10075),
(1108, '2022-06-03 15:02:36', 'Visualizo el listado de asignaciones', 10075),
(1109, '2022-06-03 15:02:45', 'Creacion de nuevo paso procesado: bcbcvbcb', 10075),
(1110, '2022-06-03 15:02:50', 'Asignacion finalizada: 46', 10075),
(1111, '2022-06-03 15:02:51', 'Visualizo el listado de asignaciones', 10075),
(1112, '2022-06-03 15:02:58', 'Creacion de nuevo paso procesado: bvcvbcvb', 10075),
(1113, '2022-06-03 15:03:05', 'Asignacion finalizada: 81', 10075),
(1114, '2022-06-03 15:03:06', 'Visualizo el listado de asignaciones', 10075),
(1115, '2022-06-03 15:03:29', 'Inicio de Sesion', 1),
(1116, '2022-06-03 15:03:34', 'Visualizo el listado de solicitud', 1),
(1117, '2022-06-03 15:03:45', 'Visualizo el listado de solicitud', 1),
(1118, '2022-06-03 15:03:48', 'Visualizo el listado de solicitud', 1),
(1119, '2022-06-03 15:03:59', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1120, '2022-06-03 15:04:09', 'Visualizo el listado de solicitud', 1),
(1121, '2022-06-03 15:29:19', 'Inicio de Sesion', 1),
(1122, '2022-06-03 15:34:16', 'Creacion de un nuevo paso: descripcion actividad', 1),
(1123, '2022-06-03 15:34:41', 'Creacion de un nuevo paso: Descripcion Electronico', 1),
(1124, '2022-06-03 15:34:46', 'Visualizo el listado de solicitud', 1),
(1125, '2022-06-03 15:35:15', 'Actualizo la siguiente solicitud: dgfdgfdgd', 1),
(1126, '2022-06-03 15:35:17', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1127, '2022-06-03 15:35:26', 'Hizo la siguiente busqueda: procesando en el listado de solicitud', 1),
(1128, '2022-06-03 15:35:38', 'Visualizo el listado de asignaciones', 1),
(1129, '2022-06-03 15:35:51', 'Hizo la siguiente busqueda: esteban en el listado de asignacions', 1),
(1130, '2022-06-03 15:35:54', 'Hizo la siguiente busqueda: esteban en el listado de asignacions', 1),
(1131, '2022-06-03 15:36:01', 'Visualizo el listado de solicitud', 1),
(1132, '2022-06-03 15:36:24', 'Creacion de nueva asignacion: procesar', 1),
(1133, '2022-06-03 15:36:24', 'Visualizo el listado de solicitud', 1),
(1134, '2022-06-03 15:36:27', 'Visualizo el listado de asignaciones', 1),
(1135, '2022-06-03 15:37:21', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1136, '2022-06-03 15:37:23', 'Visualizo el listado de solicitud', 1),
(1137, '2022-06-03 15:37:42', 'Visualizo el listado de solicitud', 1),
(1138, '2022-06-03 15:37:46', 'Hizo la siguiente busqueda: esteban en el listado de asignacions', 1),
(1139, '2022-06-03 15:37:49', 'Visualizo el listado de asignaciones', 1),
(1140, '2022-06-03 15:37:53', 'Visualizo el listado de asignaciones', 1),
(1141, '2022-06-03 15:38:12', 'Visualizo el listado de asignaciones', 1),
(1142, '2022-06-03 15:38:23', 'Visualizo el listado de asignaciones', 1),
(1143, '2022-06-03 15:42:28', 'Visualizo el listado de asignaciones', 1),
(1144, '2022-06-03 15:42:30', 'Visualizo el listado de asignaciones', 1),
(1145, '2022-06-03 15:42:33', 'Visualizo el listado de asignaciones', 1),
(1146, '2022-06-03 15:42:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1147, '2022-06-03 15:42:40', 'Visualizo el listado de solicitud', 1),
(1148, '2022-06-03 15:43:21', 'Creacion de nueva solicitud: primera', 1),
(1149, '2022-06-03 15:43:34', 'Creacion de nueva solicitud: segunda', 1),
(1150, '2022-06-03 15:43:47', 'Creacion de nueva solicitud: tercera', 1),
(1151, '2022-06-03 15:44:09', 'Creacion de nueva solicitud: cuarta', 1),
(1152, '2022-06-03 15:44:30', 'Creacion de nueva solicitud: quinta', 1),
(1153, '2022-06-03 15:44:46', 'Creacion de nueva solicitud: sexta', 1),
(1154, '2022-06-03 15:45:07', 'Creacion de nueva solicitud: septimta', 1),
(1155, '2022-06-03 15:45:22', 'Creacion de nueva solicitud: octava', 1),
(1156, '2022-06-03 15:45:34', 'Creacion de nueva solicitud: novena', 1),
(1157, '2022-06-03 15:45:49', 'Creacion de nueva solicitud: decima', 1),
(1158, '2022-06-03 15:46:02', 'Creacion de nueva solicitud: onceava', 1),
(1159, '2022-06-03 15:46:17', 'Creacion de nueva solicitud: doceava', 1),
(1160, '2022-06-03 15:46:39', 'Creacion de nueva solicitud: treceava', 1),
(1161, '2022-06-03 15:46:52', 'Creacion de nueva solicitud: quince', 1),
(1162, '2022-06-03 15:47:08', 'Creacion de nueva solicitud: dieciseis', 1),
(1163, '2022-06-03 15:47:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1164, '2022-06-03 15:47:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1165, '2022-06-03 15:47:56', 'Actualizo la siguiente solicitud: dieciseis', 1),
(1166, '2022-06-03 15:47:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1167, '2022-06-03 15:48:14', 'Actualizo la siguiente solicitud: quince', 1),
(1168, '2022-06-03 15:48:15', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1169, '2022-06-03 15:49:34', 'Actualizo la siguiente solicitud: treceava', 1),
(1170, '2022-06-03 15:49:35', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1171, '2022-06-03 15:49:56', 'Actualizo la siguiente solicitud: septimta', 1),
(1172, '2022-06-03 15:49:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1173, '2022-06-03 15:50:17', 'Actualizo la siguiente solicitud: segunda', 1),
(1174, '2022-06-03 15:50:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1175, '2022-06-03 15:50:49', 'Actualizo la siguiente solicitud: doceava', 1),
(1176, '2022-06-03 15:50:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1177, '2022-06-03 15:51:10', 'Actualizo la siguiente solicitud: onceava', 1),
(1178, '2022-06-03 15:51:12', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1179, '2022-06-03 15:51:45', 'Actualizo la siguiente solicitud: decima', 1),
(1180, '2022-06-03 15:51:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1181, '2022-06-03 15:51:58', 'Actualizo la siguiente solicitud: novena', 1),
(1182, '2022-06-03 15:52:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1183, '2022-06-03 15:52:28', 'Actualizo la siguiente solicitud: octava', 1),
(1184, '2022-06-03 15:52:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1185, '2022-06-03 15:53:00', 'Actualizo la siguiente solicitud: sexta', 1),
(1186, '2022-06-03 15:53:02', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1187, '2022-06-03 15:54:09', 'Actualizo la siguiente solicitud: quinta', 1),
(1188, '2022-06-03 15:54:10', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1189, '2022-06-03 15:54:23', 'Actualizo la siguiente solicitud: cuarta', 1),
(1190, '2022-06-03 15:54:24', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1191, '2022-06-03 15:54:38', 'Actualizo la siguiente solicitud: tercera', 1),
(1192, '2022-06-03 15:54:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1193, '2022-06-03 15:55:32', 'Actualizo la siguiente solicitud: primera', 1),
(1194, '2022-06-03 15:55:33', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1195, '2022-06-03 15:55:58', 'Visualizo el listado de solicitud', 1),
(1196, '2022-06-03 15:56:11', 'Creacion de nueva asignacion: asdasd', 1),
(1197, '2022-06-03 15:56:11', 'Visualizo el listado de solicitud', 1),
(1198, '2022-06-03 15:56:24', 'Creacion de nueva asignacion: ddsa asd', 1),
(1199, '2022-06-03 15:56:24', 'Visualizo el listado de solicitud', 1),
(1200, '2022-06-03 15:56:49', 'Creacion de nueva asignacion: cecececc', 1),
(1201, '2022-06-03 15:56:50', 'Visualizo el listado de solicitud', 1),
(1202, '2022-06-03 15:56:58', 'Creacion de nueva asignacion: sdfsdffds', 1),
(1203, '2022-06-03 15:56:58', 'Visualizo el listado de solicitud', 1),
(1204, '2022-06-03 15:57:04', 'Creacion de nueva asignacion: fdsfdf', 1),
(1205, '2022-06-03 15:57:04', 'Visualizo el listado de solicitud', 1),
(1206, '2022-06-03 15:57:10', 'Creacion de nueva asignacion: ffdsf', 1),
(1207, '2022-06-03 15:57:10', 'Visualizo el listado de solicitud', 1),
(1208, '2022-06-03 15:57:34', 'Creacion de nueva asignacion: fdsfdsf fdsfdffds', 1),
(1209, '2022-06-03 15:57:34', 'Visualizo el listado de solicitud', 1),
(1210, '2022-06-03 15:57:49', 'Creacion de nueva asignacion: dess de', 1),
(1211, '2022-06-03 15:57:49', 'Visualizo el listado de solicitud', 1),
(1212, '2022-06-03 15:57:55', 'Creacion de nueva asignacion: dasda', 1),
(1213, '2022-06-03 15:57:55', 'Visualizo el listado de solicitud', 1),
(1214, '2022-06-03 15:58:03', 'Creacion de nueva asignacion: dsadsa', 1),
(1215, '2022-06-03 15:58:03', 'Visualizo el listado de solicitud', 1),
(1216, '2022-06-03 15:58:09', 'Creacion de nueva asignacion: ddsadasd', 1),
(1217, '2022-06-03 15:58:09', 'Visualizo el listado de solicitud', 1),
(1218, '2022-06-03 15:58:17', 'Creacion de nueva asignacion: dasddsa d', 1),
(1219, '2022-06-03 15:58:18', 'Visualizo el listado de solicitud', 1),
(1220, '2022-06-03 15:58:25', 'Creacion de nueva asignacion: ddsa dsa', 1),
(1221, '2022-06-03 15:58:25', 'Visualizo el listado de solicitud', 1),
(1222, '2022-06-03 15:58:32', 'Creacion de nueva asignacion: dsa dsad', 1),
(1223, '2022-06-03 15:58:32', 'Visualizo el listado de solicitud', 1),
(1224, '2022-06-03 15:58:39', 'Creacion de nueva asignacion: dsda dsadas', 1),
(1225, '2022-06-03 15:58:39', 'Visualizo el listado de solicitud', 1),
(1226, '2022-06-03 15:58:44', 'Visualizo el listado de asignaciones', 1),
(1227, '2022-06-03 20:45:00', 'Inicio de Sesion', 1),
(1228, '2022-06-03 20:48:48', 'Visualizo el listado de asignaciones', 1),
(1229, '2022-06-03 20:49:12', 'Creacion de nuevo paso procesado: breve descripcion', 1),
(1230, '2022-06-03 20:49:21', 'Asignacion finalizada: 30', 1),
(1231, '2022-06-03 21:07:00', 'Visualizo el listado de asignaciones', 1),
(1232, '2022-06-03 21:07:07', 'Visualizo el listado de asignaciones', 1),
(1233, '2022-06-03 21:13:41', 'Visualizo el listado de asignaciones', 1),
(1234, '2022-06-03 21:14:22', 'Visualizo el listado de solicitud', 1),
(1235, '2022-06-03 21:14:28', 'Visualizo el listado de solicitud', 1),
(1236, '2022-06-03 21:14:55', 'Visualizo el listado de solicitud', 1),
(1237, '2022-06-03 21:15:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1238, '2022-06-03 21:15:02', 'Visualizo el listado de solicitud', 1),
(1239, '2022-06-03 21:15:08', 'Visualizo el listado de solicitud', 1),
(1240, '2022-06-03 21:15:39', 'Visualizo el listado de asignaciones', 1),
(1241, '2022-06-03 21:16:34', 'Inicio de Sesion', 10075),
(1242, '2022-06-03 21:16:46', 'Visualizo el listado de asignaciones', 10075),
(1243, '2022-06-03 21:16:58', 'Visualizo el listado de asignaciones', 10075),
(1244, '2022-06-03 21:17:16', 'Visualizo el listado de asignaciones', 10075),
(1245, '2022-06-03 21:17:45', 'Creacion de nuevo paso procesado: descripcion finalizacion de la entrega de la bolsa de alimento', 10075),
(1246, '2022-06-03 21:17:53', 'Asignacion finalizada: 29', 10075),
(1247, '2022-06-03 21:18:05', 'Visualizo el listado de asignaciones', 10075),
(1248, '2022-06-03 21:18:35', 'Inicio de Sesion', 1),
(1249, '2022-06-03 21:20:11', 'Inicio de Sesion', 10077),
(1250, '2022-06-03 21:21:40', 'Inicio de Sesion', 10075),
(1251, '2022-06-03 21:21:45', 'Visualizo el listado de asignaciones', 10075),
(1252, '2022-06-03 21:21:58', 'Creacion de nuevo paso procesado: procesar operacion', 10075),
(1253, '2022-06-03 21:22:06', 'Asignacion finalizada: 20', 10075),
(1254, '2022-06-03 21:22:08', 'Visualizo el listado de asignaciones', 10075),
(1255, '2022-06-03 21:22:49', 'Visualizo el listado de asignaciones', 10075),
(1256, '2022-06-03 21:23:06', 'Creacion de nuevo paso procesado: realizando la cuarta operacion', 10075),
(1257, '2022-06-03 21:23:14', 'Asignacion finalizada: 19', 10075),
(1258, '2022-06-03 21:23:16', 'Visualizo el listado de asignaciones', 10075),
(1259, '2022-06-03 21:39:59', 'Visualizo el listado de asignaciones', 10077),
(1260, '2022-06-03 21:40:13', 'Creacion de nuevo paso procesado: realizando actividad', 10077),
(1261, '2022-06-03 21:40:21', 'Asignacion finalizada: 25', 10077),
(1262, '2022-06-03 21:40:22', 'Visualizo el listado de asignaciones', 10077),
(1263, '2022-06-03 21:41:28', 'Inicio de Sesion', 1),
(1264, '2022-06-03 21:41:34', 'Visualizo el listado de asignaciones', 1),
(1265, '2022-06-03 21:41:43', 'Visualizo el listado de asignaciones', 1),
(1266, '2022-06-03 21:42:07', 'Visualizo el listado de asignaciones', 1),
(1267, '2022-06-03 21:42:23', 'Visualizo el listado de asignaciones', 1),
(1268, '2022-06-03 21:49:59', 'Visualizo el listado de asignaciones', 10075),
(1269, '2022-06-03 21:50:10', 'Hizo la siguiente busqueda: bolsa en el listado de asignacions', 10075),
(1270, '2022-06-03 21:50:22', 'Visualizo el listado de asignaciones', 1),
(1271, '2022-06-03 21:50:39', 'Hizo la siguiente busqueda: electronicos en el listado de asignacions', 1),
(1272, '2022-06-03 21:51:03', 'Creacion de nuevo paso procesado: Procesando dicha actividad', 1),
(1273, '2022-06-03 21:51:11', 'Asignacion finalizada: 28', 1),
(1274, '2022-06-03 21:51:12', 'Hizo la siguiente busqueda: electronicos en el listado de asignacions', 1),
(1275, '2022-06-03 21:51:17', 'Visualizo el listado de asignaciones', 1),
(1276, '2022-06-03 21:52:39', 'Visualizo el listado de solicitud', 1),
(1277, '2022-06-03 21:53:02', 'Visualizo el listado de asignaciones', 1),
(1278, '2022-06-03 21:53:18', 'Creacion de nuevo paso procesado: realizando operacion', 1),
(1279, '2022-06-03 21:53:26', 'Asignacion finalizada: 27', 1),
(1280, '2022-06-03 21:53:28', 'Visualizo el listado de asignaciones', 1),
(1281, '2022-06-03 21:56:25', 'Visualizo el listado de asignaciones', 1),
(1282, '2022-06-03 21:56:39', 'Creacion de nuevo paso procesado: finalizando asignacion', 10075),
(1283, '2022-06-03 21:56:51', 'Asignacion finalizada: 23', 10075),
(1284, '2022-06-03 21:56:53', 'Hizo la siguiente busqueda: bolsa en el listado de asignacions', 10075),
(1285, '2022-06-03 21:56:56', 'Visualizo el listado de asignaciones', 10075),
(1286, '2022-06-03 21:57:05', 'Creacion de nuevo paso procesado: terminando actualizacion', 10075),
(1287, '2022-06-03 21:57:12', 'Asignacion finalizada: 24', 10075),
(1288, '2022-06-03 21:57:14', 'Visualizo el listado de asignaciones', 10075),
(1289, '2022-06-03 21:57:22', 'Creacion de nuevo paso procesado: finalizada', 10075),
(1290, '2022-06-03 21:57:29', 'Asignacion finalizada: 18', 10075),
(1291, '2022-06-03 21:57:29', 'Visualizo el listado de asignaciones', 10075),
(1292, '2022-06-03 21:57:38', 'Creacion de nuevo paso procesado: finalizada', 10075),
(1293, '2022-06-03 21:57:48', 'Asignacion finalizada: 16', 10075),
(1294, '2022-06-03 21:57:51', 'Visualizo el listado de asignaciones', 10075),
(1295, '2022-06-03 21:58:00', 'Visualizo el listado de asignaciones', 10075),
(1296, '2022-06-03 21:58:35', 'Creacion de nuevo paso procesado: operacion realizada', 1),
(1297, '2022-06-03 21:58:42', 'Asignacion finalizada: 26', 1),
(1298, '2022-06-03 21:58:43', 'Visualizo el listado de asignaciones', 1),
(1299, '2022-06-03 21:58:56', 'Creacion de nuevo paso procesado: realizando tarea', 1),
(1300, '2022-06-03 21:59:03', 'Asignacion finalizada: 22', 1),
(1301, '2022-06-03 21:59:04', 'Visualizo el listado de asignaciones', 1),
(1302, '2022-06-03 21:59:12', 'Creacion de nuevo paso procesado: tarea realizada', 1),
(1303, '2022-06-03 21:59:20', 'Asignacion finalizada: 21', 1),
(1304, '2022-06-03 21:59:22', 'Visualizo el listado de asignaciones', 1),
(1305, '2022-06-03 21:59:32', 'Creacion de nuevo paso procesado: operacion realizada', 1),
(1306, '2022-06-03 21:59:41', 'Asignacion finalizada: 17', 1),
(1307, '2022-06-03 21:59:44', 'Visualizo el listado de asignaciones', 1),
(1308, '2022-06-03 21:59:52', 'Visualizo el listado de asignaciones', 1),
(1309, '2022-06-03 22:01:17', 'Visualizo el listado de solicitud', 1),
(1310, '2022-06-03 22:01:21', 'Visualizo el listado de solicitud', 1),
(1311, '2022-06-03 22:01:32', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1312, '2022-06-03 22:01:54', 'Visualizo el listado de solicitud', 1);
INSERT INTO `bitacora` (`bitacora_id`, `bitacora_fecha`, `bitacora_accion`, `usuario_id`) VALUES
(1313, '2022-06-03 22:01:59', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1314, '2022-06-03 22:02:21', 'Visualizo el listado de solicitud', 1),
(1315, '2022-06-03 22:02:49', 'Visualizo el listado de solicitud', 1),
(1316, '2022-06-03 22:02:52', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1317, '2022-06-03 22:03:12', 'Visualizo el listado de solicitud', 1),
(1318, '2022-06-03 22:03:15', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1319, '2022-06-03 22:03:34', 'Visualizo el listado de solicitud', 1),
(1320, '2022-06-03 22:03:37', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1321, '2022-06-03 22:03:54', 'Visualizo el listado de solicitud', 1),
(1322, '2022-06-03 22:03:59', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1323, '2022-06-03 22:04:25', 'Visualizo el listado de solicitud', 1),
(1324, '2022-06-03 22:04:28', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1325, '2022-06-03 22:04:44', 'Visualizo el listado de solicitud', 1),
(1326, '2022-06-03 22:04:46', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1327, '2022-06-03 22:05:06', 'Visualizo el listado de solicitud', 1),
(1328, '2022-06-03 22:05:08', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1329, '2022-06-03 22:05:23', 'Visualizo el listado de solicitud', 1),
(1330, '2022-06-03 22:05:26', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1331, '2022-06-03 22:05:46', 'Visualizo el listado de solicitud', 1),
(1332, '2022-06-03 22:05:48', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1333, '2022-06-03 22:06:58', 'Visualizo el listado de solicitud', 1),
(1334, '2022-06-03 22:07:03', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1335, '2022-06-03 22:07:20', 'Visualizo el listado de solicitud', 1),
(1336, '2022-06-03 22:07:24', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1337, '2022-06-03 22:07:43', 'Visualizo el listado de solicitud', 1),
(1338, '2022-06-03 22:07:46', 'Hizo la siguiente busqueda: evaluar en el listado de solicitud', 1),
(1339, '2022-06-06 09:08:30', 'Inicio de Sesion', 1),
(1340, '2022-06-06 13:00:18', 'Creacion de nueva solicitud: probando actividad', 1),
(1341, '2022-06-06 13:00:21', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1342, '2022-06-06 13:00:34', 'Actualizo la siguiente solicitud: probando actividad', 1),
(1343, '2022-06-06 13:00:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1344, '2022-06-06 13:00:39', 'Visualizo el listado de solicitud', 1),
(1345, '2022-06-06 13:00:54', 'Creacion de nueva asignacion: revisando una nueva asignacion', 1),
(1346, '2022-06-06 13:00:54', 'Visualizo el listado de solicitud', 1),
(1347, '2022-06-06 13:00:57', 'Visualizo el listado de asignaciones', 1),
(1348, '2022-06-06 13:01:07', 'Creacion de nuevo paso procesado: realizando la tarea', 1),
(1349, '2022-06-06 13:01:12', 'Asignacion finalizada: 32', 1),
(1350, '2022-06-06 13:01:14', 'Visualizo el listado de asignaciones', 1),
(1351, '2022-06-06 13:01:19', 'Visualizo el listado de solicitud', 1),
(1352, '2022-06-06 13:01:33', 'Visualizo el listado de solicitud', 1),
(1353, '2022-06-06 17:55:41', 'Creacion de nueva solicitud: probando el porcentaje', 1),
(1354, '2022-06-06 17:55:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1355, '2022-06-06 17:56:00', 'Actualizo la siguiente solicitud: probando el porcentaje', 1),
(1356, '2022-06-06 17:56:01', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1357, '2022-06-06 17:56:10', 'Visualizo el listado de solicitud', 1),
(1358, '2022-06-06 17:56:25', 'Creacion de nueva asignacion: realizar a la brevedad posible', 1),
(1359, '2022-06-06 17:56:25', 'Visualizo el listado de solicitud', 1),
(1360, '2022-06-06 17:56:28', 'Visualizo el listado de asignaciones', 1),
(1361, '2022-06-06 17:56:42', 'Visualizo el listado de asignaciones', 1),
(1362, '2022-06-06 17:56:55', 'Creacion de nuevo paso procesado: operacion realizada', 1),
(1363, '2022-06-06 17:57:40', 'Visualizo el listado de asignaciones', 1),
(1364, '2022-06-06 18:02:09', 'Visualizo el listado de asignaciones', 1),
(1365, '2022-06-06 18:03:42', 'Visualizo el listado de asignaciones', 1),
(1366, '2022-06-06 18:03:43', 'Visualizo el listado de asignaciones', 1),
(1367, '2022-06-06 18:03:49', 'Visualizo el listado de asignaciones', 1),
(1368, '2022-06-06 18:04:21', 'Visualizo el listado de asignaciones', 1),
(1369, '2022-06-06 18:04:31', 'Asignacion finalizada: 34', 1),
(1370, '2022-06-06 18:04:34', 'Visualizo el listado de asignaciones', 1),
(1371, '2022-06-06 18:16:47', 'Creacion de nueva solicitud: probando el porcentaje anual', 1),
(1372, '2022-06-06 18:16:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1373, '2022-06-06 18:17:03', 'Actualizo la siguiente solicitud: probando el porcentaje anual', 1),
(1374, '2022-06-06 18:17:04', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1375, '2022-06-06 18:17:07', 'Visualizo el listado de solicitud', 1),
(1376, '2022-06-06 18:17:22', 'Creacion de nueva asignacion: probando el porcentaje anual', 1),
(1377, '2022-06-06 18:17:22', 'Visualizo el listado de solicitud', 1),
(1378, '2022-06-06 18:17:26', 'Visualizo el listado de asignaciones', 1),
(1379, '2022-06-06 18:17:40', 'Creacion de nuevo paso procesado: realizando o colocando una descripcion', 1),
(1380, '2022-06-06 18:17:45', 'Asignacion finalizada: 36', 1),
(1381, '2022-06-06 18:23:50', 'Visualizo el listado de asignaciones', 1),
(1382, '2022-06-06 18:23:56', 'Asignacion finalizada: 36', 1),
(1383, '2022-06-06 18:23:58', 'Visualizo el listado de asignaciones', 1),
(1384, '2022-06-06 19:54:04', 'Inicio de Sesion', 1),
(1385, '2022-06-06 20:07:20', 'Creacion de nueva solicitud: solicitud para probar el porcentaje mensual y diario', 1),
(1386, '2022-06-06 20:07:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1387, '2022-06-06 20:07:56', 'Actualizo la siguiente solicitud: solicitud para probar el porcentaje mensual y diario', 1),
(1388, '2022-06-06 20:08:04', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1389, '2022-06-06 20:08:10', 'Visualizo el listado de solicitud', 1),
(1390, '2022-06-06 20:08:57', 'Creacion de nueva asignacion: realizando la operacion', 1),
(1391, '2022-06-06 20:08:57', 'Visualizo el listado de solicitud', 1),
(1392, '2022-06-06 20:09:15', 'Visualizo el listado de asignaciones', 1),
(1393, '2022-06-06 20:09:59', 'Creacion de nuevo paso procesado: realizando', 1),
(1394, '2022-06-06 20:10:37', 'Asignacion finalizada: 38', 1),
(1395, '2022-06-06 20:10:39', 'Visualizo el listado de asignaciones', 1),
(1396, '2022-06-06 20:40:08', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1397, '2022-06-06 20:44:22', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1398, '2022-06-06 20:45:43', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1399, '2022-06-06 20:47:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1400, '2022-06-06 20:50:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1401, '2022-06-06 20:53:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1402, '2022-06-06 20:56:05', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1403, '2022-06-06 20:59:06', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1404, '2022-06-06 21:02:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1405, '2022-06-06 21:03:09', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1406, '2022-06-06 21:05:47', 'Inicio de Sesion', 1),
(1407, '2022-06-06 21:05:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1408, '2022-06-06 21:06:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1409, '2022-06-06 21:09:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1410, '2022-06-06 21:20:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1411, '2022-06-06 21:22:25', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1412, '2022-06-06 21:25:26', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1413, '2022-06-06 21:26:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1414, '2022-06-06 21:29:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1415, '2022-06-06 21:32:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1416, '2022-06-06 21:35:49', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1417, '2022-06-06 21:38:49', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1418, '2022-06-06 21:41:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1419, '2022-06-06 21:44:56', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1420, '2022-06-06 21:48:18', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1421, '2022-06-06 21:51:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1422, '2022-06-06 21:54:33', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1423, '2022-06-06 21:57:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1424, '2022-06-06 22:00:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1425, '2022-06-06 22:03:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1426, '2022-06-06 22:06:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1427, '2022-06-06 22:09:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1428, '2022-06-06 22:12:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1429, '2022-06-06 22:15:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1430, '2022-06-06 22:18:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1431, '2022-06-06 22:21:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1432, '2022-06-06 22:24:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1433, '2022-06-06 22:27:51', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1434, '2022-06-07 08:38:02', 'Inicio de Sesion', 1),
(1435, '2022-06-07 08:38:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1436, '2022-06-07 08:38:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1437, '2022-06-07 08:41:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1438, '2022-06-07 08:44:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1439, '2022-06-07 11:21:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1440, '2022-06-07 11:24:51', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1441, '2022-06-07 11:27:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1442, '2022-06-07 11:30:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1443, '2022-06-07 11:33:54', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1444, '2022-06-07 11:36:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1445, '2022-06-07 11:39:56', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1446, '2022-06-07 11:42:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1447, '2022-06-07 11:45:58', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1448, '2022-06-07 11:49:11', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1449, '2022-06-07 11:52:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1450, '2022-06-07 11:55:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1451, '2022-06-07 11:58:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1452, '2022-06-07 12:01:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1453, '2022-06-07 12:04:33', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1454, '2022-06-07 12:07:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1455, '2022-06-07 12:10:35', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1456, '2022-06-07 12:13:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1457, '2022-06-07 12:16:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1458, '2022-06-07 12:19:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1459, '2022-06-07 12:22:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1460, '2022-06-07 12:25:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1461, '2022-06-07 12:28:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1462, '2022-06-07 12:31:42', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1463, '2022-06-07 12:34:43', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1464, '2022-06-07 12:37:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1465, '2022-06-07 12:40:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1466, '2022-06-07 12:43:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1467, '2022-06-07 12:46:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1468, '2022-06-07 12:51:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1469, '2022-06-07 12:55:02', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1470, '2022-06-07 12:58:04', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1471, '2022-06-07 13:01:05', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1472, '2022-06-07 13:04:06', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1473, '2022-06-07 13:07:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1474, '2022-06-07 13:10:08', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1475, '2022-06-07 13:13:09', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1476, '2022-06-07 13:16:10', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1477, '2022-06-07 13:19:11', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1478, '2022-06-07 13:22:12', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1479, '2022-06-07 13:25:13', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1480, '2022-06-07 13:28:14', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1481, '2022-06-07 13:31:15', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1482, '2022-06-07 13:34:18', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1483, '2022-06-07 13:37:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1484, '2022-06-07 13:40:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1485, '2022-06-07 13:43:21', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1486, '2022-06-07 13:46:22', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1487, '2022-06-07 13:49:23', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1488, '2022-06-07 13:52:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1489, '2022-06-07 13:55:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1490, '2022-06-07 13:58:29', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1491, '2022-06-07 14:01:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1492, '2022-06-07 14:04:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1493, '2022-06-07 14:04:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1494, '2022-06-07 14:05:21', 'Visualizo el listado de solicitud', 1),
(1495, '2022-06-07 14:06:35', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1496, '2022-06-07 14:09:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1497, '2022-06-07 14:12:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1498, '2022-06-07 14:15:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1499, '2022-06-07 14:18:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1500, '2022-06-07 14:21:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1501, '2022-06-07 14:33:41', 'Inicio de Sesion', 1),
(1502, '2022-06-07 14:33:42', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1503, '2022-06-07 14:33:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1504, '2022-06-07 14:36:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1505, '2022-06-07 14:39:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1506, '2022-06-07 14:42:51', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1507, '2022-06-07 14:45:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1508, '2022-06-07 14:48:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1509, '2022-06-07 14:51:54', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1510, '2022-06-07 14:54:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1511, '2022-06-07 14:57:56', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1512, '2022-06-07 15:00:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1513, '2022-06-07 16:05:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1514, '2022-06-07 16:08:35', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1515, '2022-06-07 16:11:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1516, '2022-06-07 16:14:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1517, '2022-06-07 16:17:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1518, '2022-06-07 16:20:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1519, '2022-06-07 16:23:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1520, '2022-06-07 16:26:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1521, '2022-06-07 16:29:42', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1522, '2022-06-07 16:32:43', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1523, '2022-06-07 16:35:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1524, '2022-06-07 16:38:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1525, '2022-06-07 16:41:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1526, '2022-06-07 16:44:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1527, '2022-06-07 16:47:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1528, '2022-06-07 16:50:49', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1529, '2022-06-07 16:53:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1530, '2022-06-07 17:00:12', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1531, '2022-06-07 17:26:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1532, '2022-06-07 17:29:54', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1533, '2022-06-07 18:16:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1534, '2022-06-07 18:19:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1535, '2022-06-07 18:22:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1536, '2022-06-07 18:23:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1537, '2022-06-08 13:11:42', 'Inicio de Sesion', 1),
(1538, '2022-06-08 13:11:43', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1539, '2022-06-08 13:14:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1540, '2022-06-08 13:17:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1541, '2022-06-08 13:20:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1542, '2022-06-08 13:23:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1543, '2022-06-08 13:26:49', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1544, '2022-06-08 13:29:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1545, '2022-06-08 13:32:51', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1546, '2022-06-08 13:35:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1547, '2022-06-08 13:38:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1548, '2022-06-08 14:21:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1549, '2022-06-08 14:24:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1550, '2022-06-08 17:07:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1551, '2022-06-08 17:10:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1552, '2022-06-08 17:13:42', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1553, '2022-06-08 17:15:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1554, '2022-06-08 17:16:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1555, '2022-06-08 17:19:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1556, '2022-06-08 17:20:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1557, '2022-06-08 17:21:43', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1558, '2022-06-08 17:24:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1559, '2022-06-08 17:24:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1560, '2022-06-09 06:16:21', 'Inicio de Sesion', 1),
(1561, '2022-06-09 06:16:23', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1562, '2022-06-10 14:07:51', 'Inicio de Sesion', 1),
(1563, '2022-06-10 14:07:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1564, '2022-06-11 09:16:52', 'Inicio de Sesion', 1),
(1565, '2022-06-11 09:16:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1566, '2022-06-13 18:35:35', 'Inicio de Sesion', 1),
(1567, '2022-06-13 18:35:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1568, '2022-06-14 20:40:32', 'Inicio de Sesion', 1),
(1569, '2022-06-14 20:40:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1570, '2022-06-14 20:43:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1571, '2022-06-14 20:43:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1572, '2022-06-14 20:46:18', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1573, '2022-06-14 20:47:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1574, '2022-06-15 11:28:24', 'Inicio de Sesion', 1),
(1575, '2022-06-15 11:28:25', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1576, '2022-06-15 15:33:24', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1577, '2022-06-15 15:36:26', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1578, '2022-06-15 15:39:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1579, '2022-06-15 15:42:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1580, '2022-06-15 15:45:29', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1581, '2022-06-15 15:48:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1582, '2022-06-15 15:51:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1583, '2022-06-15 15:54:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1584, '2022-06-15 15:57:33', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1585, '2022-06-15 16:00:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1586, '2022-06-15 16:03:35', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1587, '2022-06-15 16:06:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1588, '2022-06-15 16:09:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1589, '2022-06-15 16:12:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1590, '2022-06-15 16:15:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1591, '2022-06-15 16:18:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1592, '2022-06-15 16:21:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1593, '2022-06-15 16:24:42', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1594, '2022-06-15 16:27:43', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1595, '2022-06-15 16:30:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1596, '2022-06-15 16:33:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1597, '2022-06-15 16:36:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1598, '2022-06-15 16:39:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1599, '2022-06-15 16:42:48', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1600, '2022-06-15 16:45:49', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1601, '2022-06-15 16:48:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1602, '2022-06-15 16:51:51', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1603, '2022-06-15 16:54:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1604, '2022-06-15 16:57:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1605, '2022-06-15 17:00:58', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1606, '2022-06-15 17:03:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1607, '2022-06-15 17:07:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1608, '2022-06-15 19:24:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1609, '2022-06-15 19:27:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1610, '2022-06-15 19:31:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1611, '2022-06-15 19:34:01', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1612, '2022-06-15 19:37:02', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1613, '2022-06-15 20:50:05', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1614, '2022-06-15 20:53:16', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1615, '2022-06-15 20:56:17', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1616, '2022-06-15 20:59:18', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1617, '2022-06-15 21:02:19', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1618, '2022-06-15 21:05:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1619, '2022-06-15 21:08:21', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1620, '2022-06-15 21:11:22', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1621, '2022-06-15 21:14:23', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1622, '2022-06-15 21:17:24', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1623, '2022-06-15 21:20:25', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1624, '2022-06-15 21:23:26', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1625, '2022-06-15 21:26:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1626, '2022-06-15 21:29:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1627, '2022-06-15 21:32:29', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1628, '2022-06-15 21:35:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1629, '2022-06-15 21:38:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1630, '2022-06-15 21:41:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1631, '2022-06-15 21:44:33', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1632, '2022-06-15 21:47:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1633, '2022-06-15 21:50:35', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1634, '2022-06-15 21:53:36', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1635, '2022-06-15 21:56:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1636, '2022-06-17 17:15:55', 'Inicio de Sesion', 1),
(1637, '2022-06-17 17:15:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1638, '2022-06-17 17:18:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1639, '2022-06-17 17:21:34', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1640, '2022-06-17 17:22:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1641, '2022-06-17 17:24:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1642, '2022-06-17 17:24:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1643, '2022-06-17 17:24:42', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1644, '2022-06-18 06:51:08', 'Inicio de Sesion', 1),
(1645, '2022-06-18 06:51:09', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1646, '2022-06-18 06:52:41', 'Visualizo el listado de indicador', 1),
(1647, '2022-06-18 06:52:55', 'Visualizo el listado de actividades', 1),
(1648, '2022-06-18 06:54:16', 'Actualizo la siguiente actividad: Instalacion de sistema operativo', 1),
(1649, '2022-06-18 06:54:23', 'Visualizo el listado de actividades', 1),
(1650, '2022-06-18 06:55:33', 'Actualizo la siguiente actividad: Recarga de tinta impresora', 1),
(1651, '2022-06-18 06:55:41', 'Visualizo el listado de actividades', 1),
(1652, '2022-06-18 07:20:05', 'Actualizo la siguiente actividad: Acceso a internet sede', 1),
(1653, '2022-06-18 07:20:15', 'Visualizo el listado de actividades', 1),
(1654, '2022-06-18 07:21:04', 'Actualizo la siguiente actividad: Reparacion cable de red', 1),
(1655, '2022-06-18 07:21:07', 'Visualizo el listado de actividades', 1),
(1656, '2022-06-18 07:21:55', 'Actualizo la siguiente actividad: Recuperacion de clave', 1),
(1657, '2022-06-18 07:21:58', 'Visualizo el listado de actividades', 1),
(1658, '2022-06-18 07:23:22', 'Actualizo la siguiente actividad: Ejecucion de script', 1),
(1659, '2022-06-18 07:23:25', 'Visualizo el listado de actividades', 1),
(1660, '2022-06-18 07:24:29', 'Actualizo la siguiente actividad: Reconexion a internet', 1),
(1661, '2022-06-18 07:24:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1662, '2022-06-18 07:25:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1663, '2022-06-18 07:25:42', 'Visualizo el listado de pasos', 1),
(1664, '2022-06-18 07:26:24', 'Creacion de un nuevo paso: Descripcion de la actividad ejecutada', 1),
(1665, '2022-06-18 07:26:28', 'Visualizo el listado de pasos', 1),
(1666, '2022-06-18 07:26:40', 'Visualizo el listado de pasos', 1),
(1667, '2022-06-18 07:27:06', 'Creacion de un nuevo paso: Descripcion de la actividad', 1),
(1668, '2022-06-18 07:27:09', 'Visualizo el listado de pasos', 1),
(1669, '2022-06-18 07:27:39', 'Visualizo el listado de pasos', 1),
(1670, '2022-06-18 07:29:57', 'Creacion de un nuevo paso: Descripcion de la actividad realizada', 1),
(1671, '2022-06-18 07:31:44', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1672, '2022-06-18 07:34:45', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1673, '2022-06-18 07:37:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1674, '2022-06-18 07:40:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1675, '2022-06-18 07:41:19', 'Visualizo el listado de direcciones', 1),
(1676, '2022-06-18 07:42:18', 'Creacion de nueva direccion: Presupuesto', 1),
(1677, '2022-06-18 07:42:37', 'Creacion de nueva direccion: Auditoria', 1),
(1678, '2022-06-18 07:42:53', 'Creacion de nueva direccion: Bienes Estadales', 1),
(1679, '2022-06-18 07:43:07', 'Creacion de nueva direccion: Archivo General de Gobierno', 1),
(1680, '2022-06-18 07:43:14', 'Visualizo el listado de direcciones', 1),
(1681, '2022-06-18 07:43:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1682, '2022-06-18 07:46:14', 'Creacion de nueva solicitud: colocar acceso a internet a los siguientes ciudadanos, Hernan Perez Telf. 0424-3324398 y Maria Suarez Telf 0426-3429844', 1),
(1683, '2022-06-18 07:46:26', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1684, '2022-06-18 07:47:28', 'Creacion de nueva solicitud: Cambiar el sistema operativo linux a una version mas reciente en windows, que sea capaz de adaptarse a los requerimientos minimos de hardware del equipo', 1),
(1685, '2022-06-18 07:48:42', 'Creacion de nueva solicitud: Recargar tinta en los cartuchos en la impresora de piso 4, secretaria privada', 1),
(1686, '2022-06-18 07:49:47', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1687, '2022-06-18 07:51:14', 'Creacion de nuevo sector: Martinica', 1),
(1688, '2022-06-18 07:56:14', 'Visualizo el listado de cargos', 1),
(1689, '2022-06-18 07:57:22', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1690, '2022-06-18 07:59:16', 'Creacion de nueva solicitud: Cambiar los datos de los empleados de la base de datos, para actualizar los cargos de todos los empleado con fecha de ingreso posterior 2017', 1),
(1691, '2022-06-18 07:59:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1692, '2022-06-18 08:00:02', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1693, '2022-06-18 08:01:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1694, '2022-06-18 08:02:39', 'Actualizo la siguiente solicitud: Cambiar los datos de los empleados de la base de datos, para actualizar los cargos de todos los empleado con fecha de ingreso posterior 2017', 1),
(1695, '2022-06-18 08:02:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1696, '2022-06-18 08:02:50', 'Visualizo el listado de solicitud', 1),
(1697, '2022-06-18 08:02:56', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1698, '2022-06-18 08:04:58', 'Visualizo el listado de solicitud', 1),
(1699, '2022-06-18 08:05:05', 'Visualizo el listado de asignaciones', 1),
(1700, '2022-06-18 08:05:14', 'Visualizo el listado de solicitud', 1),
(1701, '2022-06-18 08:06:38', 'Creacion de nueva asignacion: Chequear primero el script enviado y luego subirlo a la brevedad posible, ya que de ello depende que las nominas salgan hoy mismo. y notificar una vez ejecutado el script a la unidad solicitante, para que ellos continuen con sus calculos.', 1),
(1702, '2022-06-18 08:06:38', 'Visualizo el listado de solicitud', 1),
(1703, '2022-06-18 08:06:41', 'Visualizo el listado de asignaciones', 1),
(1704, '2022-06-18 08:06:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1705, '2022-06-18 08:07:08', 'Visualizo el listado de solicitud', 1),
(1706, '2022-06-18 08:07:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1707, '2022-06-18 08:09:15', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1708, '2022-06-18 08:09:29', 'Visualizo el listado de asignaciones', 1),
(1709, '2022-06-18 08:09:35', 'Visualizo el listado de asignaciones', 1),
(1710, '2022-06-18 08:09:52', 'Visualizo el listado de asignaciones', 1),
(1711, '2022-06-18 08:10:19', 'Visualizo el listado de asignaciones', 1),
(1712, '2022-06-18 08:17:11', 'Visualizo el listado de asignaciones', 1),
(1713, '2022-06-18 08:18:34', 'Visualizo el listado de anexo de asignaciones', 1),
(1714, '2022-06-18 08:18:38', 'Visualizo el listado de asignaciones', 1),
(1715, '2022-06-18 08:18:41', 'Visualizo el listado de asignaciones', 1),
(1716, '2022-06-18 08:19:36', 'Creacion de nuevo paso procesado: Se llevo a cabo la realizacion de la actividad sin ningun inconveniente, y ya se notifico via telefonica al usuario final para que pueda cargar su nomina.', 1),
(1717, '2022-06-18 08:19:45', 'Asignacion finalizada: 43', 1),
(1718, '2022-06-18 08:21:19', 'Visualizo el listado de asignaciones', 1),
(1719, '2022-06-18 08:21:22', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1720, '2022-06-18 08:23:34', 'Visualizo el listado de solicitud', 1),
(1721, '2022-06-18 08:24:15', 'Visualizo el listado de solicitud', 1),
(1722, '2022-06-18 08:24:30', 'Visualizo el listado de solicitud', 1),
(1723, '2022-06-18 08:24:37', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1724, '2022-06-18 08:24:45', 'Hizo la siguiente busqueda: finalizado en el listado de solicitud', 1),
(1725, '2022-06-18 08:24:51', 'Visualizo el listado de solicitud', 1),
(1726, '2022-06-18 08:24:53', 'Hizo la siguiente busqueda: finalizado en el listado de solicitud', 1),
(1727, '2022-06-18 08:24:59', 'Hizo la siguiente busqueda: en proceso en el listado de solicitud', 1),
(1728, '2022-06-18 08:25:07', 'Hizo la siguiente busqueda: procesando en el listado de solicitud', 1),
(1729, '2022-06-18 08:25:17', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1730, '2022-06-18 09:16:46', 'Visualizo el listado de solicitud', 1),
(1731, '2022-06-18 09:16:51', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1732, '2022-06-18 09:17:19', 'Actualizo la siguiente solicitud: colocar acceso a internet a los siguientes ciudadanos, Hernan Perez Telf. 0424-3324398 y Maria Suarez Telf 0426-3429844', 1),
(1733, '2022-06-18 09:17:20', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1734, '2022-06-18 09:17:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1735, '2022-06-18 09:17:41', 'Visualizo el listado de solicitud', 1),
(1736, '2022-06-18 09:19:08', 'Creacion de nueva asignacion: Colocar acceso a internet con control de acceso limitado solo lo mas basico.', 1),
(1737, '2022-06-18 09:19:08', 'Visualizo el listado de solicitud', 1),
(1738, '2022-06-18 09:19:16', 'Visualizo el listado de asignaciones', 1),
(1739, '2022-06-18 09:20:46', 'Creacion de nuevo paso procesado: Se agrego a los alias de acceso limitado a internet de estas dos personas en sus equipos celulares', 1),
(1740, '2022-06-18 09:21:02', 'Asignacion finalizada: 44', 1),
(1741, '2022-06-18 09:21:04', 'Visualizo el listado de asignaciones', 1),
(1742, '2022-06-18 09:21:11', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1743, '2022-06-18 09:21:23', 'Visualizo el listado de solicitud', 1),
(1744, '2022-06-18 09:22:33', 'Visualizo el listado de solicitud', 1),
(1745, '2022-06-18 11:17:27', 'Inicio de Sesion', 10083),
(1746, '2022-06-18 11:17:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1747, '2022-06-18 11:18:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1748, '2022-06-18 11:19:00', 'Creacion de nueva solicitud: Cambiar el sistema operativo', 10083),
(1749, '2022-06-18 11:19:22', 'Visualizo el listado de solicitud', 10083),
(1750, '2022-06-18 11:19:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1751, '2022-06-18 11:19:54', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1752, '2022-06-18 11:22:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1753, '2022-06-18 11:25:56', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1754, '2022-06-18 11:28:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1755, '2022-06-18 11:31:58', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1756, '2022-06-18 11:34:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1757, '2022-06-18 11:38:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1758, '2022-06-18 11:41:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1759, '2022-06-18 11:41:28', 'Inicio de Sesion', 1),
(1760, '2022-06-18 11:41:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1761, '2022-06-18 11:42:26', 'Inicio de Sesion', 10080),
(1762, '2022-06-18 11:42:26', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(1763, '2022-06-18 11:42:33', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(1764, '2022-06-18 11:42:57', 'Actualizo la siguiente solicitud: Cambiar el sistema operativo', 10080),
(1765, '2022-06-18 11:42:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10080),
(1766, '2022-06-18 11:43:06', 'Visualizo el listado de solicitud', 10080),
(1767, '2022-06-18 11:43:48', 'Creacion de nueva asignacion: traer equipo a piso dos, y hacer el respectivo cambio de sistema operativo, siempre haciendo primero el respaldo de toda la informacion', 10080),
(1768, '2022-06-18 11:43:48', 'Visualizo el listado de solicitud', 10080),
(1769, '2022-06-18 11:43:51', 'Visualizo el listado de asignaciones', 10080),
(1770, '2022-06-18 11:48:04', 'Visualizo el listado de solicitud', 10080),
(1771, '2022-06-18 11:49:52', 'Inicio de Sesion', 10079),
(1772, '2022-06-18 11:49:52', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1773, '2022-06-18 11:49:58', 'Visualizo el listado de asignaciones', 10079),
(1774, '2022-06-18 11:50:15', 'Visualizo el listado de asignaciones', 10079),
(1775, '2022-06-18 11:50:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1776, '2022-06-18 11:53:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1777, '2022-06-18 11:56:29', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1778, '2022-06-18 11:59:30', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1779, '2022-06-18 12:02:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1780, '2022-06-18 12:04:51', 'Visualizo el listado de asignaciones', 10079),
(1781, '2022-06-18 12:06:20', 'Creacion de nuevo paso procesado: se hizo el respectivo respaldo, el disco duro presenta falla en algunos sectores, por eso se habia dañado el anterior sistema, se cambio a windows 7 y quedo el equipo funcionando, tomar la precaucion de cambiar el Disco Duro a la brevedad posible. toda la informacio', 10079),
(1782, '2022-06-18 12:06:27', 'Asignacion finalizada: 46', 10079),
(1783, '2022-06-18 12:06:29', 'Visualizo el listado de asignaciones', 10079),
(1784, '2022-06-18 12:06:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1785, '2022-06-18 12:09:32', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1786, '2022-06-18 12:10:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10079),
(1787, '2022-06-18 12:11:02', 'Visualizo el listado de asignaciones', 10079),
(1788, '2022-06-18 12:11:05', 'Visualizo el listado de asignaciones', 10079),
(1789, '2022-06-18 12:11:28', 'Inicio de Sesion', 10083),
(1790, '2022-06-18 12:11:28', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1791, '2022-06-18 12:11:34', 'Visualizo el listado de solicitud', 10083),
(1792, '2022-06-18 12:12:35', 'Visualizo el listado de solicitud', 10083),
(1793, '2022-06-18 12:12:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1794, '2022-06-18 12:15:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1795, '2022-06-18 12:16:11', 'Inicio de Sesion', 1),
(1796, '2022-06-18 12:16:11', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1797, '2022-06-18 12:19:11', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1798, '2022-06-18 12:22:12', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1799, '2022-06-18 12:25:13', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1800, '2022-06-18 12:28:13', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1801, '2022-06-20 18:27:38', 'Inicio de Sesion', 1),
(1802, '2022-06-20 18:27:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1803, '2022-06-20 18:30:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1804, '2022-06-20 18:33:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1805, '2022-06-20 18:43:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1806, '2022-06-20 18:43:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1807, '2022-06-20 18:46:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1808, '2022-06-20 18:48:59', 'Inicio de Sesion', 10083),
(1809, '2022-06-20 18:48:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1810, '2022-06-20 18:51:19', 'Visualizo el listado de solicitud', 10083),
(1811, '2022-06-20 18:51:32', 'Hizo la siguiente busqueda: finalizado en el listado de solicitud', 10083),
(1812, '2022-06-20 18:51:47', 'Hizo la siguiente busqueda: sistema operativo en el listado de solicitud', 10083),
(1813, '2022-06-20 18:52:12', 'Hizo la siguiente busqueda: sistema operativo en el listado de solicitud', 10083),
(1814, '2022-06-20 18:53:18', 'Creacion de nueva solicitud: mi maquina esta muy lenta creo que es virus que tiene', 10083),
(1815, '2022-06-20 18:53:23', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1816, '2022-06-20 18:53:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1817, '2022-06-20 18:54:50', 'Inicio de Sesion', 10084),
(1818, '2022-06-20 18:54:50', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1819, '2022-06-20 18:55:21', 'Visualizo el listado de solicitud', 10084),
(1820, '2022-06-20 18:55:41', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1821, '2022-06-20 18:56:40', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1822, '2022-06-20 18:56:46', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1823, '2022-06-20 18:56:54', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1824, '2022-06-20 18:57:12', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1825, '2022-06-20 18:58:28', 'Actualizo la siguiente solicitud: mi maquina esta muy lenta creo que es virus que tiene', 10084),
(1826, '2022-06-20 18:58:29', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1827, '2022-06-20 18:58:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1828, '2022-06-20 18:59:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1829, '2022-06-20 19:00:56', 'Visualizo el listado de solicitud', 10084),
(1830, '2022-06-20 19:01:05', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084);
INSERT INTO `bitacora` (`bitacora_id`, `bitacora_fecha`, `bitacora_accion`, `usuario_id`) VALUES
(1831, '2022-06-20 19:01:26', 'Actualizo la siguiente solicitud: Recargar tinta en los cartuchos en la impresora de piso 4, secretaria privada', 10084),
(1832, '2022-06-20 19:01:27', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1833, '2022-06-20 19:01:33', 'Visualizo el listado de solicitud', 10084),
(1834, '2022-06-20 19:02:19', 'Visualizo el listado de solicitud', 10084),
(1835, '2022-06-20 19:02:56', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1836, '2022-06-20 19:03:14', 'Visualizo el listado de solicitud', 10084),
(1837, '2022-06-20 19:03:30', 'Visualizo el listado de asignaciones', 10084),
(1838, '2022-06-20 19:03:32', 'Visualizo el listado de solicitud', 10084),
(1839, '2022-06-20 19:04:41', 'Creacion de nueva asignacion: La unidad de sistema, tiene virus, se recomienda cambiar el sistema operativo actual. y como es la computadora del administrador, hay que hacerlo con urgencia.', 10084),
(1840, '2022-06-20 19:04:41', 'Visualizo el listado de solicitud', 10084),
(1841, '2022-06-20 19:04:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1842, '2022-06-20 19:05:35', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10084),
(1843, '2022-06-20 19:05:52', 'Visualizo el listado de solicitud', 10084),
(1844, '2022-06-20 19:05:57', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1845, '2022-06-20 19:06:19', 'Inicio de Sesion', 10075),
(1846, '2022-06-20 19:06:19', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10075),
(1847, '2022-06-20 19:06:49', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10075),
(1848, '2022-06-20 19:07:03', 'Visualizo el listado de asignaciones', 10075),
(1849, '2022-06-20 19:07:49', 'Visualizo el listado de asignaciones', 10075),
(1850, '2022-06-20 19:08:58', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1851, '2022-06-20 19:10:24', 'Creacion de nuevo paso procesado: Se hizo el respaldo, se cambio el sistema operativo a windows 11, se instalaron controladores y demas paquetes de ofimatica, el disco tiene sectores dañados, por eso era la lentitud del sistema operativo, se cambio s.o. pero se recomienda cambiar el disco duro, para', 10075),
(1852, '2022-06-20 19:11:59', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1853, '2022-06-20 19:12:07', 'Inicio de Sesion', 1),
(1854, '2022-06-20 19:12:07', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1855, '2022-06-20 19:15:04', 'Vincular Equipo: codigo equipo - 778899A. actividad - 48', 10075),
(1856, '2022-06-20 19:16:01', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1857, '2022-06-20 19:18:00', 'Visualizo el listado de solicitud', 1),
(1858, '2022-06-20 19:18:34', 'Asignacion finalizada: 48', 10075),
(1859, '2022-06-20 19:18:35', 'Visualizo el listado de asignaciones', 10075),
(1860, '2022-06-20 19:18:39', 'Visualizo el listado de asignaciones', 10075),
(1861, '2022-06-20 19:19:34', 'Visualizo el listado de asignaciones', 10075),
(1862, '2022-06-20 19:19:43', 'Visualizo el listado de asignaciones', 10075),
(1863, '2022-06-20 19:20:31', 'Inicio de Sesion', 10083),
(1864, '2022-06-20 19:20:31', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 10083),
(1865, '2022-06-20 19:20:47', 'Visualizo el listado de solicitud', 10083),
(1866, '2022-06-20 19:22:24', 'Visualizo el listado de solicitud', 10083),
(1867, '2022-06-20 19:22:38', 'Inicio de Sesion', 1),
(1868, '2022-06-20 19:22:38', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1869, '2022-06-20 19:27:00', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1870, '2022-06-20 19:37:22', 'Visualizo el listado de actividades', 1),
(1871, '2022-06-20 19:38:12', 'Visualizo el listado de actividades', 1),
(1872, '2022-06-20 19:41:54', 'Creacion de nuevo sector: Palotal', 1),
(1873, '2022-06-20 19:43:08', 'Creacion de nueva solicitud: acceso a internet a dispositivo movil', 1),
(1874, '2022-06-20 19:43:35', 'Creacion de nueva solicitud: acceso a internet', 1),
(1875, '2022-06-20 19:44:20', 'Creacion de nueva solicitud: 456545498498', 1),
(1876, '2022-06-20 19:44:25', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1877, '2022-06-20 19:44:53', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1878, '2022-06-20 19:49:06', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1879, '2022-06-20 19:49:20', 'Visualizo el listado de solicitud', 1),
(1880, '2022-06-20 19:49:29', 'Visualizo el listado de asignaciones', 1),
(1881, '2022-06-20 19:49:39', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1882, '2022-06-20 19:49:52', 'Visualizo el listado de solicitud', 1),
(1883, '2022-06-20 19:51:03', 'Visualizo el listado de solicitud', 1),
(1884, '2022-06-20 19:51:55', 'Hizo la siguiente busqueda: sin procesar en el listado de solicitud', 1),
(1885, '2022-06-20 19:52:09', 'Visualizo el listado de solicitud', 1),
(1886, '2022-06-20 19:52:19', 'Visualizo el listado de asignaciones', 1);

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
-- Volcado de datos para la tabla `direccion`
--

INSERT INTO `direccion` (`direccion_id`, `direccion_nombre`, `direccion_imagen`, `gabinete_id`) VALUES
(1, 'Despacho del Gobernador', 'default.jpg', 2),
(2, 'Dimisoc', 'default.jpg', 1),
(3, 'Presupuesto', 'default.jpg', 2),
(4, 'Auditoria', 'default.jpg', 2),
(5, 'Bienes Estadales', 'default.jpg', 2),
(6, 'Archivo General de Gobierno', 'default.jpg', 2);

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
(13, 2, 7777),
(14, 48, 778899);

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
  `feedback_tipo_solucion` int(11) NOT NULL,
  `feedback_fecha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `usuario_id`, `solicitud_id`, `feedback_descripcion`, `feedback_tiempo_respuesta`, `feedback_tipo_solucion`, `feedback_fecha`) VALUES
(1, 10078, 1, 'primera evaluacion realizada', 3, 4, 2022),
(2, 10082, 15, 'muy la respuesta', 4, 4, 2022),
(3, 10082, 13, 'excelente trato', 3, 4, 2022),
(4, 10078, 14, 'otra description', 2, 1, 2022),
(5, 10082, 12, 'otra explicacion', 2, 2, 2022),
(6, 10082, 11, 'probando mas explicaciones', 3, 3, 2022),
(7, 10081, 10, 'super bueno', 4, 4, 2022),
(8, 10081, 9, 'no me gusto la solucion aplicadad ni el tiempo que se tardaron', 1, 1, 2022),
(9, 10081, 8, 'otras valoraciones', 3, 2, 2022),
(10, 10082, 7, 'mas respuestas positivas', 3, 4, 2022),
(11, 10082, 6, 'una respuesta regular', 2, 1, 2022),
(12, 10082, 5, 'probando otra respuesta', 3, 2, 2022),
(13, 10078, 4, 'el sisstema anda bien', 4, 4, 2022),
(14, 10078, 3, 'probando mas valoraciones', 1, 4, 2022),
(15, 10078, 2, 'probando', 3, 2, 2022),
(16, 10082, 16, 'veinte puntos', 3, 4, 2022),
(17, 10083, 23, 'Tanto el tiempo de respuesta como la solucion dada, fueron las mejores. Gracias equipo de ait', 4, 4, NULL),
(18, 10081, 20, 'tardo mucho para dar acceso a estos equipos', 2, 3, NULL),
(19, 10083, 24, 'Muy buen trato de parte del señor de soporte tecnico, me recupero toda mi informacion y me dio subgerencias valiosas para que no le vuelva a pasar los mismo a mi equipo', 4, 4, NULL),
(20, 10083, 25, 'No me parecio el resultado final el mejor', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gabinete`
--

CREATE TABLE `gabinete` (
  `gabinete_id` int(11) NOT NULL,
  `gabinete_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
-- Volcado de datos para la tabla `grafica_solicitud`
--

INSERT INTO `grafica_solicitud` (`grafica_solicitud_id`, `grafica_solicitud_year`, `grafica_solicitud_mes_id`, `grafica_solicitud_solicitadas`, `grafica_solicitud_finalizadas`) VALUES
(1, 2022, 1, 0, 0),
(2, 2022, 2, 0, 0),
(3, 2022, 3, 0, 0),
(4, 2022, 4, 0, 0),
(5, 2022, 5, 0, 0),
(6, 2022, 6, 24, 23),
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
-- Volcado de datos para la tabla `home_actividad`
--

INSERT INTO `home_actividad` (`home_actividad_id`, `home_actividad_year`, `home_actividad_cantidad`, `home_actividad_porcentaje`, `actividad_id`, `actividad_nombre`) VALUES
(1, 2022, 0, '0.00', 1, 'Examen de Laboratorio'),
(2, 2022, 7, '40.71', 2, 'Bolsa de Alimento'),
(3, 2022, 3, '17.69', 3, 'Solicitud de Medicamentos'),
(4, 2022, 1, '4.35', 4, 'Canastilla'),
(5, 2022, 2, '13.34', 5, 'Electrodomesticos'),
(6, 2022, 6, '40.02', 6, 'Electronicos'),
(7, 2022, 5, '27.76', 7, 'Audiencia con el gobernador');

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
-- Volcado de datos para la tabla `home_direccion`
--

INSERT INTO `home_direccion` (`home_direccion_id`, `home_direccion_year`, `home_direccion_cantidad`, `home_direccion_porcentaje`, `direccion_id`, `direccion_nombre`) VALUES
(1, 2022, 10, '65.59', 1, 'Despacho del Gobernador'),
(2, 2022, 10, '61.41', 2, 'Dimisoc'),
(3, 2022, 2, '8.70', 5, 'Bienes Estadales'),
(4, 2022, 2, '8.17', 3, 'Presupuesto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `home_feedback`
--

CREATE TABLE `home_feedback` (
  `home_id` int(11) NOT NULL,
  `home_year` int(11) NOT NULL,
  `porcentaje_tr_malo` decimal(25,2) NOT NULL,
  `porcentaje_tr_regular` decimal(25,2) NOT NULL,
  `porcentaje_tr_normal` decimal(25,2) NOT NULL,
  `porcentaje_tr_bueno` decimal(25,2) NOT NULL,
  `porcentaje_ts_malo` decimal(25,2) NOT NULL,
  `porcentaje_ts_regular` decimal(25,2) NOT NULL,
  `porcentaje_ts_normal` decimal(25,2) NOT NULL,
  `porcentaje_ts_bueno` decimal(25,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
-- Volcado de datos para la tabla `home_gabinete`
--

INSERT INTO `home_gabinete` (`home_gabinete_id`, `home_gabinete_year`, `home_gabinete_cantidad`, `home_gabinete_porcentaje`, `gabinete_id`, `gabinete_nombre`) VALUES
(1, 2022, 10, '61.41', 1, 'Gestion Social'),
(2, 2022, 14, '82.46', 2, 'Gestion Interna'),
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
-- Volcado de datos para la tabla `home_indicador`
--

INSERT INTO `home_indicador` (`home_indicador_id`, `home_indicador_year`, `home_indicador_cantidad`, `home_indicador_porcentaje`, `indicador_id`, `indicador_nombre`) VALUES
(1, 2022, 3, '17.69', 3, 'Procesos Innovacion'),
(2, 2022, 3, '19.59', 1, 'Procesos Informaticos'),
(3, 2022, 11, '65.53', 4, 'Soporte Tecnico'),
(4, 2022, 7, '41.06', 2, 'Seguridad de la informacion');

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
-- Volcado de datos para la tabla `home_operador`
--

INSERT INTO `home_operador` (`home_operador_id`, `home_operador_year`, `home_operador_cantidad_anual`, `home_operador_porcentaje_anual`, `home_operador_cantidad_mensual`, `home_operador_porcentaje_mensual`, `home_operador_cantidad_diario`, `home_operador_porcentaje_diario`, `usuario_id`, `usuario_nombre`, `usuario_imagen`, `home_operador_fecha`) VALUES
(1, 2022, 12, '52.20', 12, '52.20', 1, '4.35', 10075, 'Pedro, Perez', '1648655167 avatar-mujer-2.jpg', '2022-06-20'),
(2, 2022, 7, '30.45', 7, '30.45', 1, '4.35', 10077, 'Jose luis, Herrera', '1648827761 avatar-mujer-2.jpg', '2022-06-18'),
(3, 2022, 4, '17.40', 4, '17.40', 1, '4.35', 10079, 'usuario, operador', '1652720391 ag03.jpg', '2022-06-18');

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
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`imagen_id`, `asignacion_id`, `imagen_nombre`) VALUES
(1, 23, '1654273226 pago pastora 7050 a sara.PNG'),
(2, 5, '1654273660 formulacion siganz.PNG'),
(3, 5, '1654273678 formulacion siganz.PNG'),
(4, 5, '1654273691 formulacion con el menu.PNG'),
(5, 23, '1655766637 perfil maria alejandra.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indicador`
--

CREATE TABLE `indicador` (
  `indicador_id` int(11) NOT NULL,
  `indicador_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `indicador`
--

INSERT INTO `indicador` (`indicador_id`, `indicador_nombre`) VALUES
(1, 'Procesos Informaticos'),
(2, 'Seguridad de la informacion'),
(3, 'Procesos Innovacion'),
(4, 'Soporte Tecnico');

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
-- Volcado de datos para la tabla `mapa`
--

INSERT INTO `mapa` (`mapa_id`, `municipio_id`, `municipio_nombre`, `mapa_cantidad`, `mapa_porcentaje`, `mapa_year`) VALUES
(1, 1, 'Anaco', 8, '32.00', 2022),
(2, 2, 'Aragua', 0, '0.00', 2022),
(3, 3, 'Sotillo', 0, '0.00', 2022),
(4, 4, 'Bolivar', 7, '28.00', 2022),
(5, 5, 'Bruzual', 0, '0.00', 2022),
(6, 6, 'Cajigal', 0, '0.00', 2022),
(7, 7, 'Carvajal', 0, '0.00', 2022),
(8, 8, 'Urbaneja', 3, '12.00', 2022),
(9, 9, 'Freites', 0, '0.00', 2022),
(10, 10, 'Guanipa', 0, '0.00', 2022),
(11, 11, 'Guanta', 6, '24.00', 2022),
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `municipio_id` int(11) NOT NULL,
  `municipio_nombre` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
-- Volcado de datos para la tabla `paso`
--

INSERT INTO `paso` (`paso_id`, `paso_nombre`, `paso_duracion`, `actividad_id`) VALUES
(1, 'entrega', 13, 2),
(2, 'conceder audiencia con el gobernador', 45, 7),
(3, 'Detalles de la actividad realizada', 15, 3),
(4, 'descripcion actividad', 34, 5),
(5, 'Descripcion Electronico', 35, 6),
(6, 'Descripcion de la actividad ejecutada', 5, 4),
(7, 'Descripcion de la actividad', 7, 1),
(8, 'Descripcion de la actividad realizada', 25, 2);

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
-- Volcado de datos para la tabla `pdf`
--

INSERT INTO `pdf` (`pdf_id`, `asignacion_id`, `pdf_archivo`) VALUES
(1, 23, '1655766692 requerimientos 16-06-2022 pdf.pdf');

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
-- Volcado de datos para la tabla `procesar`
--

INSERT INTO `procesar` (`procesar_id`, `asignacion_id`, `paso_id`, `procesar_observacion`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 1, 2, 'breve descripcion', '2022-06-03 20:49:01', '2022-06-03 20:49:12'),
(2, 3, 1, 'descripcion finalizacion de la entrega de la bolsa de alimento', '2022-06-03 21:17:26', '2022-06-03 21:17:44'),
(3, 2, 1, 'procesar operacion', '2022-06-03 21:21:48', '2022-06-03 21:21:58'),
(4, 7, 5, 'realizando la cuarta operacion', '2022-06-03 21:22:55', '2022-06-03 21:23:06'),
(5, 8, 4, 'realizando actividad', '2022-06-03 21:40:06', '2022-06-03 21:40:13'),
(6, 4, 5, 'Procesando dicha actividad', '2022-06-03 21:50:49', '2022-06-03 21:51:03'),
(7, 5, 4, 'realizando operacion', '2022-06-03 21:53:06', '2022-06-03 21:53:18'),
(8, 10, 1, 'finalizando asignacion', '2022-06-03 21:56:31', '2022-06-03 21:56:39'),
(9, 9, 5, 'terminando actualizacion', '2022-06-03 21:56:58', '2022-06-03 21:57:05'),
(10, 13, 2, 'finalizada', '2022-06-03 21:57:16', '2022-06-03 21:57:22'),
(11, 15, 3, 'finalizada', '2022-06-03 21:57:32', '2022-06-03 21:57:37'),
(12, 6, 5, 'operacion realizada', '2022-06-03 21:58:26', '2022-06-03 21:58:35'),
(13, 11, 5, 'realizando tarea', '2022-06-03 21:58:49', '2022-06-03 21:58:56'),
(14, 12, 5, 'tarea realizada', '2022-06-03 21:59:07', '2022-06-03 21:59:12'),
(15, 14, 3, 'operacion realizada', '2022-06-03 21:59:25', '2022-06-03 21:59:32'),
(16, 16, 2, 'realizando la tarea', '2022-06-06 13:00:59', '2022-06-06 13:01:07'),
(17, 17, 1, 'operacion realizada', '2022-06-06 17:56:45', '2022-06-06 17:56:54'),
(18, 18, 1, 'realizando o colocando una descripcion', '2022-06-06 18:17:28', '2022-06-06 18:17:40'),
(19, 19, 1, 'realizando', '2022-06-06 20:09:49', '2022-06-06 20:09:59'),
(20, 20, 3, 'Se llevo a cabo la realizacion de la actividad sin ningun inconveniente, y ya se notifico via telefonica al usuario final para que pueda cargar su nomina.', '2022-06-18 08:18:47', '2022-06-18 08:19:36'),
(21, 21, 6, 'Se agrego a los alias de acceso limitado a internet de estas dos personas en sus equipos celulares', '2022-06-18 09:19:56', '2022-06-18 09:20:46'),
(22, 22, 2, 'se hizo el respectivo respaldo, el disco duro presenta falla en algunos sectores, por eso se habia dañado el anterior sistema, se cambio a windows 7 y quedo el equipo funcionando, tomar la precaucion de cambiar el Disco Duro a la brevedad posible. toda la informacion fue recuperada.', '2022-06-18 12:04:55', '2022-06-18 12:06:20'),
(23, 23, 2, 'Se hizo el respaldo, se cambio el sistema operativo a windows 11, se instalaron controladores y demas paquetes de ofimatica, el disco tiene sectores dañados, por eso era la lentitud del sistema operativo, se cambio s.o. pero se recomienda cambiar el disco duro, para que no vuelva a ocurrir lo mismo.', '2022-06-20 19:08:39', '2022-06-20 19:10:24');

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
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_unidad`, `producto_precio`, `producto_stock`, `producto_foto`, `kategoria_id`, `usuario_id`) VALUES
(1, '778899A', 'PC-Administracion', 'unidad', '300.00', '1.00', 'PC_Administracion_19.png', 9, 1);

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
-- Volcado de datos para la tabla `sector`
--

INSERT INTO `sector` (`sector_id`, `sector_nombre`, `parroquia_id`) VALUES
(1, 'el espejo', 50),
(2, 'Chorreron', 19),
(3, 'Ciudad Anaco', 3),
(4, 'Martinica', 6),
(5, 'Palotal', 50);

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
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`solicitud_id`, `usuario_id`, `solicitud_inicio`, `solicitud_estado`, `solicitud_descripcion`) VALUES
(1, 10078, '2022-06-03 15:43:21', 'finalizado', 'primera'),
(2, 10078, '2022-06-03 15:43:34', 'finalizado', 'segunda'),
(3, 10078, '2022-06-03 15:43:47', 'finalizado', 'tercera'),
(4, 10078, '2022-06-03 15:44:08', 'finalizado', 'cuarta'),
(5, 10082, '2022-06-03 15:44:29', 'finalizado', 'quinta'),
(6, 10082, '2022-06-03 15:44:46', 'finalizado', 'sexta'),
(7, 10082, '2022-06-03 15:45:07', 'finalizado', 'septimta'),
(8, 10081, '2022-06-03 15:45:22', 'finalizado', 'octava'),
(9, 10081, '2022-06-03 15:45:34', 'finalizado', 'novena'),
(10, 10081, '2022-06-03 15:45:49', 'finalizado', 'decima'),
(11, 10082, '2022-06-03 15:46:02', 'finalizado', 'onceava'),
(12, 10082, '2022-06-03 15:46:17', 'finalizado', 'doceava'),
(13, 10082, '2022-06-03 15:46:39', 'finalizado', 'treceava'),
(14, 10078, '2022-06-03 15:46:51', 'finalizado', 'quince'),
(15, 10082, '2022-06-03 15:47:07', 'finalizado', 'dieciseis'),
(16, 10082, '2022-06-06 13:00:17', 'finalizado', 'probando actividad'),
(17, 10081, '2022-06-06 17:55:41', 'evaluar', 'probando el porcentaje'),
(18, 10081, '2022-06-06 18:16:47', 'evaluar', 'probando el porcentaje anual'),
(19, 10078, '2022-06-06 20:07:20', 'evaluar', 'solicitud para probar el porcentaje mensual y diario'),
(20, 10081, '2022-06-18 07:46:14', 'finalizado', 'colocar acceso a internet a los siguientes ciudadanos, Hernan Perez Telf. 0424-3324398 y Maria Suarez Telf 0426-3429844'),
(21, 10082, '2022-06-18 07:47:28', 'sin procesar', 'Cambiar el sistema operativo linux a una version mas reciente en windows, que sea capaz de adaptarse a los requerimientos minimos de hardware del equipo'),
(22, 10078, '2022-06-18 07:48:42', 'procesando', 'Recargar tinta en los cartuchos en la impresora de piso 4, secretaria privada'),
(23, 10083, '2022-06-18 07:59:16', 'finalizado', 'Cambiar los datos de los empleados de la base de datos, para actualizar los cargos de todos los empleado con fecha de ingreso posterior 2017'),
(24, 10083, '2022-06-18 11:19:00', 'finalizado', 'Cambiar el sistema operativo'),
(25, 10083, '2022-06-20 18:53:18', 'finalizado', 'mi maquina esta muy lenta creo que es virus que tiene'),
(26, 10085, '2022-06-20 19:43:08', 'sin procesar', 'acceso a internet a dispositivo movil'),
(27, 10084, '2022-06-20 19:43:35', 'sin procesar', 'acceso a internet'),
(28, 10084, '2022-06-20 19:44:20', 'sin procesar', '456545498498');

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
-- Volcado de datos para la tabla `solicitud_actividad`
--

INSERT INTO `solicitud_actividad` (`sol_act_id`, `solicitud_id`, `actividad_id`, `solicitud_estado`, `solicitud_fin`) VALUES
(16, 15, 3, 'finalizado', '2022-06-03 21:57:47'),
(17, 14, 3, 'finalizado', '2022-06-03 21:59:40'),
(18, 13, 7, 'finalizado', '2022-06-03 21:57:28'),
(19, 7, 6, 'finalizado', '2022-06-03 21:23:14'),
(20, 2, 2, 'finalizado', '2022-06-03 21:22:06'),
(21, 12, 6, 'finalizado', '2022-06-03 21:59:19'),
(22, 11, 6, 'finalizado', '2022-06-03 21:59:03'),
(23, 10, 2, 'finalizado', '2022-06-03 21:56:51'),
(24, 9, 6, 'finalizado', '2022-06-03 21:57:11'),
(25, 8, 5, 'finalizado', '2022-06-03 21:40:20'),
(26, 6, 6, 'finalizado', '2022-06-03 21:58:41'),
(27, 5, 5, 'finalizado', '2022-06-03 21:53:26'),
(28, 4, 6, 'finalizado', '2022-06-03 21:51:11'),
(29, 3, 2, 'finalizado', '2022-06-03 21:17:53'),
(30, 1, 7, 'finalizado', '2022-06-03 20:49:21'),
(32, 16, 7, 'finalizado', '2022-06-06 13:01:11'),
(34, 17, 2, 'finalizado', '2022-06-06 18:04:31'),
(36, 18, 2, 'finalizado', '2022-06-06 18:23:56'),
(38, 19, 2, 'finalizado', '2022-06-06 20:10:36'),
(40, 21, 7, 'sin asginar', '0000-00-00 00:00:00'),
(43, 23, 3, 'finalizado', '2022-06-18 08:19:45'),
(44, 20, 4, 'finalizado', '2022-06-18 09:21:02'),
(46, 24, 7, 'finalizado', '2022-06-18 12:06:27'),
(48, 25, 7, 'finalizado', '2022-06-20 19:18:34'),
(49, 22, 2, 'sin asignar', '0000-00-00 00:00:00'),
(50, 26, 4, 'sin asginar', '0000-00-00 00:00:00'),
(51, 27, 4, 'sin asginar', '0000-00-00 00:00:00'),
(52, 28, 4, 'sin asginar', '0000-00-00 00:00:00');

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
-- Volcado de datos para la tabla `solicitud_direccion`
--

INSERT INTO `solicitud_direccion` (`solicitud_direccion_id`, `solicitud_id`, `direccion_id`) VALUES
(1, 15, 1),
(2, 14, 1),
(3, 13, 2),
(4, 7, 1),
(5, 2, 2),
(6, 12, 2),
(7, 11, 2),
(8, 10, 1),
(9, 9, 2),
(10, 8, 1),
(11, 6, 1),
(12, 5, 1),
(13, 4, 1),
(14, 3, 1),
(15, 1, 2),
(16, 16, 2),
(17, 17, 2),
(18, 18, 1),
(19, 19, 2),
(20, 23, 5),
(21, 20, 5),
(22, 24, 3),
(23, 25, 3),
(24, 22, 2);

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
-- Volcado de datos para la tabla `solicitud_gabinete`
--

INSERT INTO `solicitud_gabinete` (`solicitud_gabinete_id`, `solicitud_id`, `gabinete_id`) VALUES
(1, 15, 2),
(2, 14, 2),
(3, 13, 1),
(4, 7, 2),
(5, 2, 1),
(6, 12, 1),
(7, 11, 1),
(8, 10, 2),
(9, 9, 1),
(10, 8, 2),
(11, 6, 2),
(12, 5, 2),
(13, 4, 2),
(14, 3, 2),
(15, 1, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 2),
(19, 19, 1),
(20, 23, 2),
(21, 20, 2),
(22, 24, 2),
(23, 25, 2),
(24, 22, 1);

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
(10080, '554345345345', 'usuario', 'supervisor', '2343424324', 'Guanta Chorreron', 'superv@gmail.com', 'usuariosupervisor', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 2, '1652720490 004.jpg', 2),
(10081, '322424234', 'Fermin', 'Toro', '233424234234', 'Chorreron', 'fermin@gmail.com', 'fermin', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 3, '1654270271 pago pastora 7050 a sara.PNG', 4),
(10082, '53456665465', 'Catalina', 'la Oz', '4353534534535', 'anaco', 'catalina@gmail.com', 'catalina', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 3, '1654270318 formulacion siganz.PNG', 4),
(10083, '32112425', 'Maria Alejandra', 'Rodriguez', '04163442343', 'Lecherias', 'maria@gmail.com', 'mariam', 'bkNpZ2RSMUE1aHlHTnFzb3hRVFQ0UT09', 'Activa', 3, '1655553306 perfil maria alejandra.png', 4),
(10084, '30701620', 'Dairy', 'Cacharuco', '4234234234234', 'Barcelona', 'dairy@gmail.com', 'dairy', 'Ynd1MFBRNmVFclNaQ2ZRTnc1UkNhZz09', 'Activa', 1, '1655764678 perfil maria alejandra.png', 2),
(10085, '26449141', 'Saulina', 'Pietrucci', '45353534534535', 'Barcelona', 'saulina@gmail.com', 'saulina', 'WEM5V0UycDZGYmRERWlJUEpXY01zZz09', 'Activa', 1, '1655764829 saulina.PNG', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cargo`
--

CREATE TABLE `usuario_cargo` (
  `usuario_cargo_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
-- Volcado de datos para la tabla `usuario_parroquia`
--

INSERT INTO `usuario_parroquia` (`usuario_parroquia_id`, `usuario_id`, `parroquia_id`) VALUES
(1, 10078, 50),
(2, 10081, 19),
(3, 10082, 3),
(4, 10083, 6),
(5, 10085, 50);

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
-- Volcado de datos para la tabla `usuario_sector`
--

INSERT INTO `usuario_sector` (`usuario_sector_id`, `usuario_id`, `sector_id`) VALUES
(1, 10078, 1),
(2, 10081, 2),
(3, 10082, 3),
(4, 10083, 4),
(5, 10085, 5);

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
-- Indices de la tabla `home_feedback`
--
ALTER TABLE `home_feedback`
  ADD PRIMARY KEY (`home_id`);

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
  MODIFY `activo_usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `activo_usuario_status`
--
ALTER TABLE `activo_usuario_status`
  MODIFY `activo_usuario_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `anexo`
--
ALTER TABLE `anexo`
  MODIFY `anexo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  MODIFY `asignacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `bitacora_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1887;

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
  MODIFY `direccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `equipo_actividad`
--
ALTER TABLE `equipo_actividad`
  MODIFY `equipo_actividad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `home_direccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `home_feedback`
--
ALTER TABLE `home_feedback`
  MODIFY `home_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `home_gabinete`
--
ALTER TABLE `home_gabinete`
  MODIFY `home_gabinete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `home_indicador`
--
ALTER TABLE `home_indicador`
  MODIFY `home_indicador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `home_operador`
--
ALTER TABLE `home_operador`
  MODIFY `home_operador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `imagen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `indicador`
--
ALTER TABLE `indicador`
  MODIFY `indicador_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `paso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pdf`
--
ALTER TABLE `pdf`
  MODIFY `pdf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `procesar`
--
ALTER TABLE `procesar`
  MODIFY `procesar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sector`
--
ALTER TABLE `sector`
  MODIFY `sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `solicitud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `solicitud_actividad`
--
ALTER TABLE `solicitud_actividad`
  MODIFY `sol_act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `solicitud_direccion`
--
ALTER TABLE `solicitud_direccion`
  MODIFY `solicitud_direccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `solicitud_gabinete`
--
ALTER TABLE `solicitud_gabinete`
  MODIFY `solicitud_gabinete_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10086;

--
-- AUTO_INCREMENT de la tabla `usuario_cargo`
--
ALTER TABLE `usuario_cargo`
  MODIFY `usuario_cargo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_parroquia`
--
ALTER TABLE `usuario_parroquia`
  MODIFY `usuario_parroquia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario_sector`
--
ALTER TABLE `usuario_sector`
  MODIFY `usuario_sector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
