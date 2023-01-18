-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 16:34:06
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--
Use prueba;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnoproyecto`
--

CREATE TABLE `alumnoproyecto` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Correo` varchar(40) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anexos_reporte_final`
--

CREATE TABLE `anexos_reporte_final` (
  `id_reporte` int(11) NOT NULL,
  `nombre_Anexo` text NOT NULL,
  `id_investigador` text NOT NULL,
  `id_asesor` text NOT NULL,
  `id_Proyecto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `anexos_reporte_final`
--

INSERT INTO `anexos_reporte_final` (`id_reporte`, `nombre_Anexo`, `id_investigador`, `id_asesor`, `id_Proyecto`) VALUES
(1, 'PresentaciÃ³n1160816060144.pptx', '2', '6', '1'),
(2, 'cronograma21160816060222.pdf', '2', '6', '1'),
(3, 'formato_ejemplo_para_documentar_el_uso_de_scrum_en_un_proyecto160826191939.doc', '2', '3', '4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--

CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `id_persona` text DEFAULT NULL,
  `nombre` text NOT NULL,
  `id_proyecto` text NOT NULL,
  `id_reporte` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `id_persona`, `nombre`, `id_proyecto`, `id_reporte`) VALUES
(1, '2', 'Formato_Informe_Final (8)160816042306.doc', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `Nombres` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactanos`
--

CREATE TABLE `contactanos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` int(10) NOT NULL,
  `comentarios` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convenios`
--

CREATE TABLE `convenios` (
  `id` int(10) NOT NULL,
  `NombreEmpr` varchar(100) NOT NULL,
  `Informacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma`
--

CREATE TABLE `cronograma` (
  `id` varchar(200) NOT NULL,
  `dato` longtext NOT NULL,
  `id_investigador` varchar(60) NOT NULL,
  `id_Proyecto` varchar(500) NOT NULL,
  `Encabezado` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cronograma`
--

INSERT INTO `cronograma` (`id`, `dato`, `id_investigador`, `id_Proyecto`, `Encabezado`) VALUES
('2', '             <table id=\"dataTable\" border=\"1\" style=\"width: 100%;\" cellpadding=\"0\" cellspacing=\"0\">                <tbody><tr>                      <td id=\"c\" style=\"width: 0.001%;\"></td>                     <td style=\"width: 27%;\" rowspan=\"1\">ACTIVIDADES</td>                      <td style=\"width: 5%;\"></td>                 <td style=\"background: white;\">1</td><td style=\"background: white;\">2</td><td style=\"background: white;\">3</td><td style=\"background: white;\">4</td><td style=\"background: white;\">5</td><td style=\"background: white;\">6</td><td style=\"background: white;\">7</td></tr>                <tr><td style=\"height: 25px;\"></td><td>Actividad 1</td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr><tr><td style=\"height: 25px;\"></td><td>Actividad 2</td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr><tr><td style=\"height: 25px;\"></td><td>Actividad 3</td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr><tr><td style=\"height: 25px;\"></td><td>Actividad 4</td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr></tbody></table>             <table border=\"1\" style=\"width: 100%;\" cellpadding=\"0\" cellspacing=\"0\">                 <tbody><tr style=\"height: 50px;\">                      <td style=\"width: 32.19%;\" colspan=\"2\">OBSERVACIONES</td>                      <td style=\"width: 20.4%;\"></td>                     <td style=\"width: 20.4%;\"></td>                      <td></td>                 </tr>                <tr>                     <td rowspan=\"3\" id=\"c\">ENTREGA DE REPORTES</td>                     <td>ASESOR INTERNO</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>                 <tr>                      <td>ESTUDIANTE</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>                 <tr>                      <td>JEFE(A) DEPTO</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>              </tbody></table>                           ', '2', 'Sensore Innovación', '        <label>Estudiante: </label><label>Jonny AlbertoWicab Alvarez</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <label>Numero de Control: </label><label>10390453</label>            <br>            <label>Nombre delProyecto: </label>Sensore Innovación      <form method=\"post\" name=\"alerta\">         <input type=\"text\" id=\"Proyecto\" style=\"display: none\" value=\"Sensore Innovación\">     </form>                <label>Empresa: </label>Tecnologico de Chetumal      <br>                                                        <label>Asesor Interno:</label><label>IsaiasMay Canche</label>      <br>          '),
('4', '             <table id=\"dataTable\" border=\"1\" style=\"width: 100%;\" cellpadding=\"0\" cellspacing=\"0\">                <tbody><tr>                      <td id=\"c\" style=\"width: 0.001%;\"></td>                     <td style=\"width: 27%;\" rowspan=\"1\">ACTIVIDADES</td>                      <td style=\"width: 5%;\"></td>                 <td style=\"background: white;\">1</td><td style=\"background: white;\">2</td><td style=\"background: white;\">3</td></tr>                <tr><td style=\"height: 25px;\"></td><td>SFFDW</td><td><div style=\"width: auto; height: 25px; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr><tr><td style=\"height: 25px;\"></td><td>WERWER</td><td><div style=\"width: auto; height: 25px; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr><tr><td style=\"height: 25px;\"></td><td>WERWEREW</td><td><div style=\"width: auto; height: 25px; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td><div style=\"width: 100%; height: 27px; border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr></tbody></table>             <table border=\"1\" style=\"width: 100%;\" cellpadding=\"0\" cellspacing=\"0\">                 <tbody><tr style=\"height: 50px;\">                      <td style=\"width: 32.19%;\" colspan=\"2\">OBSERVACIONES</td>                      <td style=\"width: 20.4%;\"></td>                     <td style=\"width: 20.4%;\"></td>                      <td></td>                 </tr>                <tr>                     <td rowspan=\"3\" id=\"c\">ENTREGA DE REPORTES</td>                     <td>ASESOR INTERNO</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>                 <tr>                      <td>ESTUDIANTE</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>                 <tr>                      <td>JEFE(A) DEPTO</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>              </tbody></table>                           ', '2', 'PROGRAMACIÓN ORIENTADA A OBJETOS', '        <label>Estudiante: </label><label>Jonny AlbertoWicab Alvarez</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <label>Numero de Control: </label><label>10390453</label>            <br>            <label>Nombre delProyecto: </label>PROGRAMACIÓN ORIENTADA A OBJETOS      <form method=\"post\" name=\"alerta\">         <input type=\"text\" id=\"Proyecto\" style=\"display: none\" value=\"PROGRAMACIÓN ORIENTADA A OBJETOS\">     </form>                <label>Empresa: </label>INSTITUTO TECNOLOGICO DE CHETUMAL      <br>                                                        <label>Asesor Interno:</label><label>Agustin Esquivel Pat</label>      <br>          '),
('51', '             <table id=\"dataTable\" border=\"1\" style=\"width: 100%;\" cellpadding=\"0\" cellspacing=\"0\">                <tbody><tr>                      <td id=\"c\" style=\"width: 0.001%;\"></td>                     <td style=\"width: 27%;\" rowspan=\"1\">ACTIVIDADES</td>                      <td style=\"width: 5%;\"></td>                 <td style=\"background: white;\">1</td><td style=\"background: white;\">2</td></tr>                <tr><td style=\"height: 25px;\"></td><td>ewdasdf</td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr><tr><td style=\"height: 25px;\"></td><td>asfdasd</td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr></tbody></table>             <table border=\"1\" style=\"width: 100%;\" cellpadding=\"0\" cellspacing=\"0\">                 <tbody><tr style=\"height: 50px;\">                      <td style=\"width: 32.19%;\" colspan=\"2\">OBSERVACIONES</td>                      <td style=\"width: 20.4%;\"></td>                     <td style=\"width: 20.4%;\"></td>                      <td></td>                 </tr>                <tr>                     <td rowspan=\"3\" id=\"c\">ENTREGA DE REPORTES</td>                     <td>ASESOR INTERNO</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>                 <tr>                      <td>ESTUDIANTE</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>                 <tr>                      <td>JEFE(A) DEPTO</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>              </tbody></table>                           ', '2', 'prueba23', '        <label>Estudiante: </label><label>Jonny AlbertoWicab Alvarez</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <label>Numero de Control: </label><label>10390453</label>            <br>            <label>Nombre delProyecto: </label>prueba23      <form method=\"post\" name=\"alerta\">         <input type=\"text\" id=\"Proyecto\" style=\"display: none\" value=\"prueba23\">     </form>                <label>Empresa: </label>INSTITUTO TECNOLOGICO DE CHETUMAL      <br>                                                        <label>Asesor Interno:</label><label>BlandyPamplona Solis</label>      <br>          '),
('54', '             <table id=\"dataTable\" border=\"1\" style=\"width: 100%;\" cellpadding=\"0\" cellspacing=\"0\">                <tbody><tr>                      <td id=\"c\" style=\"width: 5%;\"></td>                     <td style=\"width: 27%;\" rowspan=\"1\">ACTIVIDADES</td>                      <td style=\"width: 5%;\"></td>                 <td style=\"background: white;\">1</td><td style=\"background: white;\">2</td><td style=\"background: white;\">3</td><td style=\"background: white;\">4</td></tr>                <tr><td style=\"height: 25px;\"><input type=\"checkbox\" name=\"bor\"></td><td><textarea name=\"activ\" id=\"activ\" rows=\"3\" cols=\"50\" style=\"width: auto;\"></textarea></td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr><tr><td style=\"height: 25px;\"><input type=\"checkbox\" name=\"bor\"></td><td><textarea name=\"activ\" id=\"activ\" rows=\"3\" cols=\"50\" style=\"width: auto;\"></textarea></td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr><tr><td style=\"height: 25px;\"><input type=\"checkbox\" name=\"bor\"></td><td><textarea name=\"activ\" id=\"activ\" rows=\"3\" cols=\"50\" style=\"width: auto;\"></textarea></td><td><div style=\"width: auto; height: 25px; border-bottom: 2px solid black; font-size: 25px;\">P</div><div style=\"width: auto; height: 25px; font-size: 25px;\">R</div></td><td><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td><div style=\"width: 100%; height:27px;background-color:white;border-Bottom:2px solid black\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td><td style=\"width: 20px;\"><div style=\"width: 100%; height: 27px; border-bottom: 2px solid black; background-color: black;\" onclick=\"cambia_color(this);\">&nbsp;</div><div style=\"width: 100%; height:27px;background-color:white\" onclick=\"cambia_color2(this);\">&nbsp;</div></td></tr></tbody></table>             <table border=\"1\" style=\"width: 100%;\" cellpadding=\"0\" cellspacing=\"0\">                 <tbody><tr style=\"height: 50px;\">                      <td style=\"width: 32.19%;\" colspan=\"2\">OBSERVACIONES</td>                      <td style=\"width: 20.4%;\"></td>                     <td style=\"width: 20.4%;\"></td>                      <td></td>                 </tr>                <tr>                     <td rowspan=\"3\" id=\"c\">ENTREGA DE REPORTES</td>                     <td>ASESOR INTERNO</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>                 <tr>                      <td>ESTUDIANTE</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>                 <tr>                      <td>JEFE(A) DEPTO</td>                      <td></td>                     <td></td>                      <td></td>                 </tr>              </tbody></table>                           ', '2', 'Prueba30', '        <label>Estudiante: </label><label>Jonny AlbertoWicab Alvarez</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        <label>Numero de Control: </label><label>10390453</label>            <br>            <label>Nombre delProyecto: </label>Prueba30      <form method=\"post\" name=\"alerta\">         <input type=\"text\" id=\"Proyecto\" style=\"display: none\" value=\"Prueba30\">     </form>                <label>Empresa: </label>INSTITUTO TECNOLOGICO DE CHETUMAL      <br>                                                        <label>Asesor Interno:</label><label>BlandyPamplona Solis</label>      <br>          '),
('null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato1`
--

CREATE TABLE `formato1` (
  `id_formato1_1` int(11) NOT NULL,
  `id_usuario` varchar(11) NOT NULL,
  `fecha_elaboracion` varchar(100) NOT NULL,
  `nombre_institucion` varchar(500) NOT NULL,
  `responsable_proyecto` varchar(500) NOT NULL,
  `correo` varchar(500) NOT NULL,
  `nivel_sni` varchar(500) DEFAULT NULL,
  `titulo_proyecto` varchar(500) NOT NULL,
  `tipo_investigacion` varchar(500) NOT NULL,
  `nombre_licenciatura` varchar(500) NOT NULL,
  `fecha_inicio` text DEFAULT NULL,
  `fecha_termino` text DEFAULT NULL,
  `area` varchar(500) NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `porcentaje` text DEFAULT NULL,
  `JustificacionRechazo` text DEFAULT NULL,
  `proceso` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formato1`
--

INSERT INTO `formato1` (`id_formato1_1`, `id_usuario`, `fecha_elaboracion`, `nombre_institucion`, `responsable_proyecto`, `correo`, `nivel_sni`, `titulo_proyecto`, `tipo_investigacion`, `nombre_licenciatura`, `fecha_inicio`, `fecha_termino`, `area`, `Estado`, `porcentaje`, `JustificacionRechazo`, `proceso`) VALUES
(2, '2', '2016-08-16', 'Tecnologico de Chetumal', 'IsaiasMay Canche', 'isaias@gmail.com', '1', 'Sensore Innovación', 'Desarrollo tecnologico', 'Sistemas', '', '', 'null', 'Revisando', NULL, NULL, 'revision'),
(4, '2', '2016-08-16', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Agustin \r\nEsquivel Pat\r\n', 'Agustin@hotmail.com', '11', 'PROGRAMACIÓN ORIENTADA A OBJETOS', 'Aplicada', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-16', '2017-01-03', 'null', 'Completo', '30', NULL, 'reporte'),
(5, '2', '08/16/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'dfgsdfg', '12', 'Hector', 'Aplicada', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-17', '2016-08-20', 'null', 'Aceptado', 'null', NULL, 'reporte'),
(6, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Revisando', NULL, NULL, NULL),
(7, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(8, '2', '17/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'IMPRESORA 3D', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-17', '2016-10-13', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(9, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(10, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(11, '2', '17/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'LEGOS', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-17', '2017-01-17', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(12, '2', '2016-08-17', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '1', 'DFSafasdfasdfasdfasdfasdf', 'Aplicada', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-17', '2016-08-27', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(13, '2', '29/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'asdasd', '12', 'METODOLOGÍA SCRUM PARA DESARROLLAR PROYECTOS', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-09', '2016-08-19', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(14, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(15, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(16, '2', '30/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba1', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-08-22', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(17, '2', '30/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba2', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-08-22', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(18, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(19, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(20, '2', '30/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba3', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-08-28', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(21, '2', '30/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba4', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-08-29', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(22, '2', '31/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'hector_manu_08@hotmail.com', '12', 'prueba5', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-10-06', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(23, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(24, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(25, '2', '31/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba6', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-11-18', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(26, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(27, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(28, '2', '31/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba6', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-11-18', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(29, '2', '31/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba7', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-12-21', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(30, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(31, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(32, '2', '31/08/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba10', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-08-31', '2016-10-27', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(33, '2', '01/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba11', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-22', '2016-09-29', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(34, '2', '01/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba12', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-21', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(35, '2', '01/09/2016', 'ikjashdkjas', 'Blandy\r\nPamplona Solis\r\n', 'bakjshdkjas', '12', 'prueba13', 'Basica', 'qsdasdasd', '01/09/2016', '21/09/2016', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(36, '2', '01/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba13', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-29', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(37, '2', '01/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba14', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-29', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(38, '2', '01/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba15', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-14', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(39, '2', '02/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba17', 'Aplicada', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-20', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(40, '2', '02/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba18', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-27', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(41, '2', '05/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba19', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-13', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(42, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(43, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(44, '2', '05/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '10', 'Prueba20', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-20', '2016-09-21', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(45, '2', '05/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba21', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-13', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(46, '2', '05/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba21', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-13', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(47, '2', '05/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba23', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-14', '2016-09-29', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(48, '2', '05/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba23', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-14', '2016-09-29', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(49, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(50, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(51, '2', '05/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'prueba23', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-13', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(52, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(53, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(54, '2', '06/09/2016', 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Blandy\r\nPamplona Solis\r\n', 'Blandy@hotmail.com', '12', 'Prueba30', 'Basica', 'INGENIERÍA EN SISTEMAS COMPUTACIONALES', '2016-09-13', '2016-09-30', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(55, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(56, 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'Pendiente para Revision', NULL, NULL, NULL),
(58, '14', '15/06/2022', 'ITCH', 'Blandy Pamplona Solis', 'prueba2@gmail.com', '1', 'Prueba del sistema de Seguimiento de proyectos de investigación', 'Basica', 'Ingeniería en Sistemas Computacionales', '2022-06-15', '2022-10-15', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(59, '14', '15/06/2022', 'dsfsd', 'Blandy Pamplona Solis', 'prueba2@gmail.com', '2', 'sfs', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-08-11', '2022-08-25', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(60, '14', '15/06/2022', 'ITCH', 'Lino Rangel Gomez', 'prueba2@gmail.com', '1', 'Prueba del sistema de Seguimiento de proyectos de investigación', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-08-05', '2022-09-01', 'Ingenieria Electrica, Ingenieria Electronica', 'Pendiente para Revision', NULL, NULL, NULL),
(61, '14', '15/06/2022', 'ITCH', 'Agustin Esquivel Pat', 'prueba2@gmail.com', '1', 'Prueba del sistema de Seguimiento de proyectos de investigación', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-08-25', '2022-08-26', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(62, '14', '15/06/2022', 'no la onozo', 'Lino Rangel Gomez', 'lino@dfsf.com', '2', 'no sirve el tecladp', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-08-05', '2022-08-05', 'Ciencias de la computacion', 'Pendiente para Revision', NULL, NULL, NULL),
(63, '11', '20/9/2022', 'Instituto Tecnológico de Chetumal', 'Blandy Pamplona Solis', 'prueba2@gmail.com', '2', 'Sistema de Seguimiento', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-09-23', '2023-01-23', 'Otras', 'Pendiente para Revision', NULL, NULL, NULL),
(64, '11', '20/9/2022', 'Instituto Tecnológico de Chetumal', 'Lino Rangel Gomez', 'lino@dfsf.com', '2', 'Sistema de Seguimiento', 'Basica', 'Ingeniería en Sistemas Computacionales', '2022-09-23', '2022-11-24', 'Otras', 'Pendiente para Revision', '0%', NULL, NULL),
(65, '11', '20/9/2022', 'Instituto Tecnológico de Chetumal', 'Isaias May Canche', 'lino@dfsf.com', '2', 'Sistema de Seguimiento', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-09-23', '2022-12-01', 'Otras', 'Pendiente para Revision', '0%', NULL, NULL),
(66, '11', '10/10/2022', 'Instituto Tecnológico de Chetumal', 'Blandy Pamplona Solis', 'adf@dfsf.com', '2', 'Sistema de Seguimiento', 'Desarrollo tecnologico', 'Ingeniería en Sistemas Computacionales', '2022-10-10', '2023-01-11', 'Otras', 'Pendiente para Revision', '0%', NULL, NULL),
(67, '11', '10/10/2022', 'Instituto Tecnológico de Chetumal', 'Agustin Esquivel Pat', 'adf@dfsf.com', '2', 'Sistema de Seguimiento', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-10-10', '2023-01-10', 'Otras', 'Pendiente para Revision', '0%', NULL, NULL),
(68, '19', '11/10/2022', 'Instituto Tecnológico de Chetumal', 'Blandy Pamplona Solis', 'd2@gmail.com', '2', 'Sistema de Seguimiento', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-10-11', '2022-10-13', 'Otras', 'Pendiente para Revision', '0%', NULL, NULL),
(72, '11', '28/10/2022', 'Instituto Tecnológico de Chetumal', 'Lino Rangel Gomez', 'd2@gmail.com', '2', 'Sistema de Seguimiento', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-10-28', '2023-01-28', 'Otras', 'Pendiente para Revision', '0%', NULL, NULL),
(73, '11', '7/11/2022', 'Instituto Tecnológico de Chetumal', 'Blandy Pamplona Solis', 'prueba2@gmail.com', '2', 'Sistema de Seguimiento', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-11-07', '2023-02-07', 'Otras', 'Pendiente para Revision', '0%', NULL, NULL),
(74, '11', '12/12/2022', 'Instituto Tecnológico de Chetumal', 'Lino Rangel Gomez', 'd2@gmail.com', '2', 'Sistema de Seguimiento', 'Aplicada', 'Ingeniería en Sistemas Computacionales', '2022-12-12', '2023-03-12', 'Otras', 'Pendiente para Revision', '0%', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato2`
--

CREATE TABLE `formato2` (
  `id_formato1_1` int(11) NOT NULL,
  `id_usuario` varchar(11) DEFAULT '',
  `nombre` varchar(500) DEFAULT NULL,
  `profesor_tc` varchar(500) DEFAULT NULL,
  `correo` varchar(500) DEFAULT NULL,
  `nivel_sni` varchar(500) DEFAULT NULL,
  `perfil_promep` varchar(500) DEFAULT NULL,
  `id_profe_col` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formato2`
--

INSERT INTO `formato2` (`id_formato1_1`, `id_usuario`, `nombre`, `profesor_tc`, `correo`, `nivel_sni`, `perfil_promep`, `id_profe_col`) VALUES
(2, '2', 'fgdfgsdfgdf', 'si', 'sdfgsdfg', 'si', 'si', 2),
(4, '', NULL, NULL, NULL, NULL, NULL, 4),
(5, '', NULL, NULL, NULL, NULL, NULL, 5),
(6, '', NULL, NULL, NULL, NULL, NULL, 6),
(7, '', NULL, NULL, NULL, NULL, NULL, 7),
(8, '', NULL, NULL, NULL, NULL, NULL, 8),
(9, '', NULL, NULL, NULL, NULL, NULL, 9),
(10, '', NULL, NULL, NULL, NULL, NULL, 10),
(11, '', NULL, NULL, NULL, NULL, NULL, 11),
(12, '', NULL, NULL, NULL, NULL, NULL, 12),
(13, '', NULL, NULL, NULL, NULL, NULL, 13),
(14, '', NULL, NULL, NULL, NULL, NULL, 14),
(15, '', NULL, NULL, NULL, NULL, NULL, 15),
(16, '', NULL, NULL, NULL, NULL, NULL, 16),
(17, '', NULL, NULL, NULL, NULL, NULL, 17),
(18, '', NULL, NULL, NULL, NULL, NULL, 18),
(19, '', NULL, NULL, NULL, NULL, NULL, 19),
(20, '', NULL, NULL, NULL, NULL, NULL, 20),
(21, '', NULL, NULL, NULL, NULL, NULL, 21),
(22, '', NULL, NULL, NULL, NULL, NULL, 22),
(23, '', NULL, NULL, NULL, NULL, NULL, 23),
(24, '', NULL, NULL, NULL, NULL, NULL, 24),
(25, '', NULL, NULL, NULL, NULL, NULL, 25),
(26, '', NULL, NULL, NULL, NULL, NULL, 26),
(27, '', NULL, NULL, NULL, NULL, NULL, 27),
(28, '', NULL, NULL, NULL, NULL, NULL, 28),
(29, '', NULL, NULL, NULL, NULL, NULL, 29),
(30, '', NULL, NULL, NULL, NULL, NULL, 30),
(31, '', NULL, NULL, NULL, NULL, NULL, 31),
(32, '', NULL, NULL, NULL, NULL, NULL, 32),
(33, '', NULL, NULL, NULL, NULL, NULL, 33),
(34, '', NULL, NULL, NULL, NULL, NULL, 34),
(35, '', NULL, NULL, NULL, NULL, NULL, 35),
(36, '', NULL, NULL, NULL, NULL, NULL, 36),
(37, '', NULL, NULL, NULL, NULL, NULL, 37),
(38, '', 'JULIO CARRILLO ALEMAN', 'si', 'jonny-1000@hotmail.com', 'si', 'si', 40),
(39, '', 'JULIO CARRILLO ALEMAN', 'si', 'jonny-1000@hotmail.com', 'si', 'si', 41),
(39, '', 'Blandy', 'si', 'Blandy@hotmail.com', 'si', 'si', 42),
(39, '', 'Agustin Esquivel Pat', 'no', 'Agustin@hotmail.com', 'no', 'si', 46),
(40, '', 'Agustin Esquivel Pat', 'si', 'Agustin@hotmail.com', 'si', 'si', 47),
(40, '', 'Blandy', 'si', 'Blandy@hotmail.com', 'si', 'si', 48),
(41, '', 'Blandy', 'si', 'Blandy@hotmail.com', 'si', 'si', 49),
(41, '', 'JULIO CARRILLO ALEMAN', 'si', 'jonny-1000@hotmail.com', 'si', 'si', 50),
(45, '', 'JULIO CARRILLO ALEMAN', 'si', 'hector_manu_08@hotmail.com', 'si', 'si', 51),
(46, '', 'JULIO CARRILLO ALEMAN', 'si', 'jonny-1000@hotmail.com', 'si', 'si', 52),
(51, '', 'Agustin Esquivel Pat', 'si', 'Agustin@hotmail.com', 'si', 'si', 53),
(51, '', 'JULIO CARRILLO ALEMAN', 'no', 'jonny-1000@hotmail.com', 'si', 'si', 54),
(54, '', 'JULIO CARRILLO ALEMAN', 'si', 'jonny-1000@hotmail.com', 'si', 'si', 55),
(54, '', 'Blandy', 'si', 'Blandy@hotmail.com', 'si', 'si', 56),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 58),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 59),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 64),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 65),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 66),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 67),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 68),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 69),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 70),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 71),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 72),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 73),
(0, '14', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'si', 74),
(0, '0', 'Daniel Cano Ramirez', NULL, NULL, NULL, NULL, 75),
(0, '0', 'Daniel Cano Ramirez', NULL, NULL, NULL, NULL, 76),
(0, '14', 'Daniel Cano Ramirez', NULL, NULL, NULL, NULL, 77),
(0, '14', 'Daniel Cano Ramirez', NULL, NULL, NULL, NULL, 78),
(0, '14', NULL, NULL, NULL, NULL, NULL, 79),
(0, '14', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'si', 80),
(0, '14', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'no', 'no', 81),
(0, '14', 'Pamplona', 'si', 'adf@gamil.com', 'si', NULL, 82),
(0, '14', 'Pamplona', 'si', 'adf@gamil.com', 'si', 'no', 83),
(0, '14', 'Pamplona', 'si', 'adf@gamil.com', 'si', 'no', 84),
(0, '14', 'julio carrillo aleman', 'si', 'jcr@gg.cdf', 'no', 'no', 85),
(0, '11', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', NULL, 86),
(0, '11', 'Pamplona', 'si', 'P@gmail.com', 'no', 'no', 87),
(0, '11', 'Agustin Esquivel', 'no', 'adjcastellanos@gmail.com', 'no', 'si', 88),
(0, '11', 'julio carrillo aleman', 'si', 'jcr@gg.cdf', 'no', 'si', 89),
(0, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 90),
(0, '11', 'Pamplona', 'si', 'P@gmail.com', 'si', 'no', 91),
(0, '11', 'Pamplona', 'si', 'P@gmail.com', 'si', 'no', 92),
(0, '11', 'Pamplona', 'si', 'P@gmail.com', 'si', 'no', 93),
(0, '11', 'Pamplona', 'si', 'P@gmail.com', 'si', 'no', 94),
(0, '11', 'Pamplona', 'si', 'adf@gamil.com', 'si', 'no', 95),
(0, '11', 'Pamplona', 'si', 'adf@gamil.com', 'si', 'no', 96),
(0, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 97),
(0, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 98),
(0, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 99),
(0, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'no', 'si', 100),
(0, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 101),
(66, '11', 'Agustin Esquivel', 'si', 'P@gmail.com', 'si', 'no', 102),
(66, '11', 'Pamplona', 'si', 'P@gmail.com', 'no', 'si', 103),
(66, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'no', 'si', 104),
(66, '11', 'Agustin Esquivel', 'si', 'P@gmail.com', 'si', 'no', 105),
(66, '11', 'Agustin Esquivel', 'si', 'P@gmail.com', 'si', 'no', 106),
(67, '11', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', NULL, 107),
(67, '11', 'Pamplona', 'si', 'P@gmail.com', 'si', 'no', 108),
(67, '11', 'Agustin Esquivel', 'si', 'adf@gamil.com', 'si', 'no', 109),
(67, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'no', 'si', 110),
(68, '19', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 111),
(68, '19', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 112),
(68, '19', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 113),
(68, '19', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 114),
(68, '19', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'si', 'no', 115),
(68, '19', 'Agustin Esquivel', 'no', 'ag@gmail.com', 'si', 'no', 116),
(68, '19', 'Agustin Esquivel', 'no', 'ag@gmail.com', 'si', 'no', 117),
(68, '19', 'julio carrillo aleman', 'si', 'jcr@gg.cdf', 'no', 'si', 118),
(68, '19', 'DIO', NULL, NULL, NULL, NULL, 119),
(68, '19', 'DIO', 'si', 'jcr@gg.cdf', 'no', 'si', 120),
(68, '19', 'Pamplona', 'si', 'ag@gmail.com', 'si', 'no', 121),
(68, '19', 'Pamplona', 'si', 'ag@gmail.com', 'no', 'si', 122),
(68, '19', 'Pamplona', 'no', 'P@gmail.com', 'no', 'si', 123),
(68, '19', 'Agustin Esquivel', 'si', 'P@gmail.com', 'no', 'si', 124),
(72, '11', 'Alan de Jesús', 'no', 'adf@dfsf.com', 'no', 'si', 131),
(72, '11', 'Dio', 'si', 'prueba2@gmail.com', 'no', 'no', 132),
(72, '11', 'YO', 'si', 'prueba2@gmail.com', 'no', 'no', 133),
(72, '11', 'YO', 'si', 'prueba2@gmail.com', 'no', 'si', 134),
(73, '11', 'Agustin Esquivel', 'si', 'ag@gmail.com', 'no', 'no', 135),
(73, '11', 'Isais', 'si', 'Isais@gmail.com', 'no', 'no', 136),
(74, '11', 'Alan de Jesus', 'no', 'prueba2@gmail.com', 'si', 'no', 137);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato2_1`
--

CREATE TABLE `formato2_1` (
  `id_formato2_1` int(100) NOT NULL,
  `id_usuario` int(100) DEFAULT NULL,
  `nombreInstitucion` text DEFAULT NULL,
  `tituloProyecto` text DEFAULT NULL,
  `resumen` text DEFAULT NULL,
  `introduccion` text DEFAULT NULL,
  `antecedentes` text DEFAULT NULL,
  `marcoTeorico` text DEFAULT NULL,
  `objetivos` text DEFAULT NULL,
  `metas` text DEFAULT NULL,
  `impactoBeneficio` text DEFAULT NULL,
  `Desarrollo_Resultados` text DEFAULT NULL,
  `Coclusiones_Observaciones` text DEFAULT NULL,
  `Referencias` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formato2_1`
--

INSERT INTO `formato2_1` (`id_formato2_1`, `id_usuario`, `nombreInstitucion`, `tituloProyecto`, `resumen`, `introduccion`, `antecedentes`, `marcoTeorico`, `objetivos`, `metas`, `impactoBeneficio`, `Desarrollo_Resultados`, `Coclusiones_Observaciones`, `Referencias`) VALUES
(2, 2, 'Tecnologico de Chetumal', 'Sensore Innovación', '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>', '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>', '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>', '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>', '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>', '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>', '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>', NULL, NULL, NULL),
(4, 2, 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'PROGRAMACIÓN ORIENTADA A OBJETOS', '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>', '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>', '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>', '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>', '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>', '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>', '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>', '<p>sadfsadfasdfsdfsdfasd</p>', '<p>sadfasdfasdfasdfasdf</p>', '<p>asdfsdfsdfsdfsdfsdfsdf</p>'),
(5, 2, 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Hector', '<p>awerwerwer</p>', '<p>erwerwereeryerthyerthg</p>', '<p>wertwergegewgrewrg</p>', '<p>wergewrgewrg</p>', '<p>gwegrewgregrew</p>', '<p>wergwergewrgwerg</p>', '<p>egrergytjtyjtyjtyjtyjtyjty</p>', NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 2, 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'prueba23', '<p>sadfsadfwqetwqertwq</p>', '<p>qwerqwerqwerqwer</p>', '<p>qwerqwerqwerqwer</p>', '<p>qwerqwerqwer</p>', '<p>qwerqwerqwerqwe</p>', '<p>qwerqwerq</p>', '<p>qwerqwerqwer<img src=\"../js/tinymce/plugins/emoticons/img/smiley-cool.gif\" alt=\"cool\" /></p>', NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 2, 'INSTITUTO TECNOLOGICO DE CHETUMAL', 'Prueba30', '<p>asfdasdfsadfasdf</p>', '<p>asdfasdfsadfsadf</p>', '<p>sdfasdfasdfsadf</p>', '<p>asdfasdfasdfsadf</p>', '<p>awefrwefasdfasdfasdf</p>', '<p>asdfasdfasdfasdfasdf</p>', '<p>asdfasdfasdfasdfasdf</p>', NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 14, 'ITCH', 'Prueba Sistema de Gestion de Proyectos', 'Prueba del sistema de Seguimiento de proyectos de investigación\n', 'Este proyecto surge debido a lo tardado que es el proceso de seguimiento y control de proyectos en el departamento de Sistemas y Computación del Instituto Tecnológico de Chetumal, por lo cual para agilizar, así como de tener un mejor control del seguimiento de  proyectos.', 'En el año 2015  en el Centro de Innovación Tecnológica del Instituto Tecnológico de Chetumal se hizo el primer intento desarrollo de sistema para llevar a cabo el control de seguimiento de los proyectos de investigación, en este proyecto de investigación participaron tres estudiantes, en el primer intento a cargo de los investigadores Wicab Álvarez Johnny y Salmoran Salmoran Alex por motivos de falta de administración de tiempo y falta de autogestión de esfuerzo, no se obtuvieron los resultados esperados en un tiempo estimado de 6 meses y con el contratiempo de no terminar el sistema planeado.(Wicab Álvarez Johnny Alberto, 2015), pero debido a que no se le dio un seguimiento para implementar el proyecto y errores en la gestión de evidencias se perdió el sistema de seguimiento y para realizar un seguimiento se tuvo que buscar y juntar versiones anteriores de este proyecto.', 'Antipatron\nMVC\nArquitectura de tres capas\n', '-Prueba', '-Comprobar la inserción de datos', '-Mejorar el control sobre los proyectos de investigación', NULL, NULL, NULL),
(58, 14, 'ITCH', 'Prueba Sistema de Gestion de Proyectos', 'Prueba del sistema de Seguimiento de proyectos de investigación\n', 'Este proyecto surge debido a lo tardado que es el proceso de seguimiento y control de proyectos en el departamento de Sistemas y Computación del Instituto Tecnológico de Chetumal, por lo cual para agilizar, así como de tener un mejor control del seguimiento de  proyectos.\n', 'En el año 2015  en el Centro de Innovación Tecnológica del Instituto Tecnológico de Chetumal se hizo el primer intento desarrollo de sistema para llevar a cabo el control de seguimiento de los proyectos de investigación, en este proyecto de investigación participaron tres estudiantes, en el primer intento a cargo de los investigadores Wicab Álvarez Johnny y Salmoran Salmoran Alex por motivos de falta de administración de tiempo y falta de autogestión de esfuerzo, no se obtuvieron los resultados esperados en un tiempo estimado de 6 meses y con el contratiempo de no terminar el sistema planeado.(Wicab Álvarez Johnny Alberto, 2015), pero debido a que no se le dio un seguimiento para implementar el proyecto y errores en la gestión de evidencias se perdió el sistema de seguimiento y para realizar un seguimiento se tuvo que buscar y juntar versiones anteriores de este proyecto.', 'Antipatron\nMVC\nArquitectura de tres capas\n', '-Prueba\n', '-Comprobar la inserción de datos\n', '-Mejorar el control sobre los proyectos de investigación', NULL, NULL, NULL),
(59, 14, 'ITCH', 'Prueba Sistema de Gestion de Proyectos', 'Ta mal', 'No sirve', 'Sirve', 'Mal', '1q2412', 'vevierjngfier', 'ry3gru2y3g', NULL, NULL, NULL),
(60, 19, 'Instituto Tecnológico de Chetumal', 'Sistema de Seguimiento', 'Test', 'TestTest', 'TestTestTest', 'Test', 'Test', 'Test', 'Test', NULL, NULL, NULL),
(61, 11, 'Instituto Tecnológico de Chetumal', 'Sistema de Seguimiento', 'Ejecutar de manera exitosa el sistema', 'Desarrollo', 'Jonny\nAlex', 'Java, MySql y Netbeans', 'Pruebas exitosa', 'Terminar esto', 'Optimizar el proceso de registro de proyectos de investigación', NULL, NULL, NULL),
(62, 11, 'Instituto Tecnológico de Chetumal', 'Sistema de Seguimiento', 'fsfsd', 'sdgsdg', 'sdgsdg', 'sdgsdg', 'sdgsd', NULL, 'sdgs', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato3`
--

CREATE TABLE `formato3` (
  `id_formato1_1` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `nombre` varchar(500) DEFAULT NULL,
  `programa_academico` varchar(500) DEFAULT NULL,
  `id_alum_parti` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formato3`
--

INSERT INTO `formato3` (`id_formato1_1`, `id_usuario`, `nombre`, `programa_academico`, `id_alum_parti`) VALUES
(2, 2, 'sadfasdfasdf', 'asdfasdfsdaf', 2),
(4, 2, NULL, NULL, 4),
(5, NULL, NULL, NULL, 5),
(6, NULL, NULL, NULL, 6),
(7, NULL, NULL, NULL, 7),
(8, NULL, NULL, NULL, 8),
(9, NULL, NULL, NULL, 9),
(10, NULL, NULL, NULL, 10),
(11, NULL, NULL, NULL, 11),
(12, NULL, NULL, NULL, 12),
(13, NULL, NULL, NULL, 13),
(14, NULL, NULL, NULL, 14),
(15, NULL, NULL, NULL, 15),
(16, NULL, NULL, NULL, 16),
(17, NULL, NULL, NULL, 17),
(18, NULL, NULL, NULL, 18),
(19, NULL, NULL, NULL, 19),
(20, NULL, NULL, NULL, 20),
(21, NULL, NULL, NULL, 21),
(22, NULL, NULL, NULL, 22),
(23, NULL, NULL, NULL, 23),
(24, NULL, NULL, NULL, 24),
(25, NULL, NULL, NULL, 25),
(26, NULL, NULL, NULL, 26),
(27, NULL, NULL, NULL, 27),
(28, NULL, NULL, NULL, 28),
(29, NULL, NULL, NULL, 29),
(30, NULL, NULL, NULL, 30),
(31, NULL, NULL, NULL, 31),
(32, NULL, NULL, NULL, 32),
(33, NULL, NULL, NULL, 33),
(34, NULL, NULL, NULL, 34),
(35, NULL, NULL, NULL, 35),
(36, NULL, NULL, NULL, 36),
(37, NULL, NULL, NULL, 37),
(38, NULL, 'suchite de los santos hector manuel', 'ingenieria en sistemas computacionales', 39),
(39, NULL, 'suchite de los santos hector manuel', 'ingenieria en sistemas computacionales', 40),
(39, NULL, 'salmoran', 'twertwertwer', 41),
(41, NULL, 'salmoran', 'ingenieria en sistemas computacionales', 42),
(41, NULL, 'suchite de los santos hector manuel', 'ingenieria en sistemas computacionales', 43),
(51, NULL, 'suchite de los santos hector manuel', 'ingenieria en sistemas computacionales', 44),
(51, NULL, 'salmoran', 'ingenieria en sistemas computacionales', 45),
(54, NULL, 'suchite de los santos hector manuel', 'ingenieria en sistemas computacionales', 46),
(54, NULL, 'salmoran', 'ingenieria en sistemas computacionales', 47),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 48),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 49),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 50),
(0, 14, 'Daniel Cano Ramirez', NULL, 51),
(0, 0, 'Daniel Cano Ramirez', 'Innovacion', 52),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 53),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 54),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 55),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 56),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 57),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 58),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 59),
(0, 14, 'Daniel Cano Ramirez', 'Innovacion', 60),
(0, 14, 'irvin chan', 'itic', 61),
(0, 19, 'Alan Castellanos Sulub', 'Innovacion', 62),
(0, 19, 'Daniel Cano Ramirez', 'Innovacion', 63),
(0, 19, 'Alan Castellanos Sulub', 'Innovacion', 64),
(0, 19, 'Alan Castellanos Sulub', 'Innovacion', 65),
(0, 19, 'Daniel Cano Ramirez', 'Innovacion', 66),
(68, 19, 'Alan Castellanos Sulub', 'Innovacion', 67),
(68, 19, 'Daniel Cano Ramirez', 'Innovacion', 68),
(68, 19, 'Daniel Cano Ramirez', 'Innovacion', 69),
(73, 11, 'Alan de Jesús Castellanos Sulub', 'Innovacion', 70),
(73, 11, 'Daniel Cano Ramirez', 'Innovacion', 71),
(74, 11, 'Alan de Jesus', 'Innovacion', 75);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formato4`
--

CREATE TABLE `formato4` (
  `id_formato1_1` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `objetivo_general` text DEFAULT NULL,
  `objetivo_especifico` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `formato4`
--

INSERT INTO `formato4` (`id_formato1_1`, `id_usuario`, `objetivo_general`, `objetivo_especifico`) VALUES
(2, 2, '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>', '<ol>\r\n<li>Mencione si se hicieron modificaciones en el proyecto, indicando la referencia de la autorizaci&oacute;n del cambio de meta o partida. Describa las acciones derivadas de las modificaciones. Indique si afectaron a los objetivos, metas y metodolog&iacute;a planteados en el proyecto original (m&aacute;ximo una cuartilla). As&iacute; tambi&eacute;n, indique los cambios de los productos de la investigaci&oacute;n tanto a los inicialmente comprometidos como a los que surgieron durante la ejecuci&oacute;n del proyecto</li>\r\n</ol>'),
(4, 2, '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>', '<p>Lic. Mar&iacute;a de los &Aacute;ngeles Navarrete Marneou<br /> Jefa de Divisi&oacute;n de la Divisi&oacute;n de Estudios Superiores<br /> Presente:</p>\r\n<p>Por este medio me dirijo a usted para informarle que soy alumno de d&eacute;cimo primer semestre de Ingenier&iacute;a en Sistemas Computacionales, con la especialidad en TIC verdes. Para el semestre de agosto-diciembre 2015, debo cursar dos optativas de mi m&oacute;dulo de especialidad.</p>\r\n<p>Me he enterado que se impartir&aacute; la asignatura &ldquo;web development&rdquo; (optativa II) como una de las optativas del m&oacute;dulo de especialidad de C&oacute;mputo M&oacute;vil y Web. Dada la situaci&oacute;n anterior, le solicito me permitan cursar esa materia para cubrir con ella la optativa II de TIC verdes.</p>\r\n<p>Me despido envi&aacute;ndole un cordial saludo y agradeciendo las atenciones que se sirva prestarme.</p>\r\n<p>Atentamente:</p>'),
(5, 2, '<p>sfgfsasf</p>', '<p>asdfgasdfasedf</p>'),
(6, NULL, NULL, NULL),
(7, NULL, NULL, NULL),
(8, NULL, NULL, NULL),
(9, NULL, NULL, NULL),
(10, NULL, NULL, NULL),
(11, 2, '<p>degerfgd</p>', '<p>dfgdfgdfgfd</p>'),
(12, NULL, NULL, NULL),
(13, NULL, NULL, NULL),
(14, NULL, NULL, NULL),
(15, NULL, NULL, NULL),
(16, NULL, NULL, NULL),
(17, NULL, NULL, NULL),
(18, NULL, NULL, NULL),
(19, NULL, NULL, NULL),
(20, NULL, NULL, NULL),
(21, NULL, NULL, NULL),
(22, NULL, NULL, NULL),
(23, NULL, NULL, NULL),
(24, NULL, NULL, NULL),
(25, NULL, NULL, NULL),
(26, NULL, NULL, NULL),
(27, NULL, NULL, NULL),
(28, NULL, NULL, NULL),
(29, NULL, NULL, NULL),
(30, NULL, NULL, NULL),
(31, NULL, NULL, NULL),
(32, NULL, NULL, NULL),
(33, NULL, NULL, NULL),
(34, NULL, NULL, NULL),
(35, NULL, NULL, NULL),
(36, NULL, NULL, NULL),
(37, NULL, NULL, NULL),
(38, NULL, NULL, NULL),
(39, NULL, NULL, NULL),
(40, NULL, NULL, NULL),
(41, NULL, NULL, NULL),
(42, NULL, NULL, NULL),
(43, NULL, NULL, NULL),
(44, NULL, NULL, NULL),
(45, NULL, NULL, NULL),
(46, NULL, NULL, NULL),
(47, NULL, NULL, NULL),
(48, NULL, NULL, NULL),
(49, NULL, NULL, NULL),
(50, NULL, NULL, NULL),
(51, 2, '<p>eryt4wrtywerty</p>', '<p>ertyweryweryewryery</p>'),
(52, NULL, NULL, NULL),
(53, NULL, NULL, NULL),
(54, 2, '<p>asdasdfasdfasdf</p>', '<p>asdfasdfsadf</p>'),
(55, NULL, NULL, NULL),
(56, NULL, NULL, NULL),
(57, 14, 'Hola', 'Prueba'),
(58, 14, 'Prueba para exposición de taller', 'Ninguno'),
(59, 14, 'nnkjlkl', 'klklñkñkñlk'),
(60, 14, 'no se', 'menos'),
(61, 19, 'Prueba Exitosa', 'Prueba'),
(68, 19, 'Test', 'Test'),
(73, 11, 'Realizar un prueba exitosa de sistema de Seguimiento de Proyectos de Investigación', '-Buscar errores el sistema \n-Buscar optimizar el sistema'),
(74, 11, 'Prueba', 'Test');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(100) NOT NULL,
  `nombre` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `nombre`) VALUES
(1, 'IMG_3279160829182050.JPG'),
(2, 'IMG_3281160829182112.JPG'),
(3, 'IMG_3290160829182144.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `misionyvision`
--

CREATE TABLE `misionyvision` (
  `id` int(10) NOT NULL,
  `texto` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `porcentajeavance`
--

CREATE TABLE `porcentajeavance` (
  `Id_porcentaje` int(11) NOT NULL,
  `id_Proyecto` varchar(1000) DEFAULT NULL,
  `Porcentaje` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `Nombre_Proyecto` varchar(100) NOT NULL,
  `Fecha_Registro` date NOT NULL,
  `Tipo_Proyecto` varchar(40) NOT NULL,
  `archivo` varchar(60) NOT NULL,
  `estado` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_usuario` int(11) NOT NULL,
  `noControl` varchar(36) NOT NULL,
  `nombre` varchar(36) NOT NULL,
  `apellido` varchar(36) NOT NULL,
  `sexo` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `semestre` varchar(20) DEFAULT NULL,
  `carrera` varchar(36) DEFAULT NULL,
  `email` varchar(36) NOT NULL,
  `contrasena1` varchar(40) NOT NULL,
  `rol` varchar(30) NOT NULL,
  `institucion` varchar(36) DEFAULT NULL,
  `area` varchar(36) DEFAULT NULL,
  `notificacion` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_usuario`, `noControl`, `nombre`, `apellido`, `sexo`, `telefono`, `semestre`, `carrera`, `email`, `contrasena1`, `rol`, `institucion`, `area`, `notificacion`) VALUES
(2, '10390453', 'Jonny Alberto', 'Wicab Alvarez', 'Masculino', '988927', '4', 'Sistemas Computacionales', 'jonny-1000@hotmail.com', '123', 'Investigador', '', 'null', 'on'),
(3, '10390456', 'Blandy', 'Pamplona Solis', 'Masculino', '123123123', 'null', '', 'Blandy@hotmail.com', '123', 'Revisor', 'Instituto tecnologico de chetumal', 'Sistemas y Computacion', 'on'),
(6, '10390459', 'Agustin ', 'Esquivel Pat', 'Masculino', '9177822', 'null', '', 'Agustin@hotmail.com', '123', 'Revisor', 'Instituto tecnologico chetumal', 'Sistemas y Computacion', 'on'),
(7, '10390457', 'Isaias', 'May Canche', 'Masculino', '8917738', 'null', '', 'Isaias@hotmail.com', '123', 'Revisor', 'Instituto tecnologico chetumal', 'Sistemas y Computacion', 'on'),
(8, '1039045789', 'Lino ', 'Rangel Gomez', 'Masculino', '87652726', 'null', '', 'Lino@hotmail.com', '123', 'Revisor', 'Instituto tecnologico chetumal', 'Sistemas y Computacion', 'on'),
(9, '10390987', 'Julio ', 'Carrillo Aleman', 'Masculino', '182979182', 'null', '', 'Julio@hotmail.com', '123', 'Administrador', 'Instituto tecnologico chetumal', 'Sistemas y Computacion', 'on'),
(10, '10390393', 'Alex Ernesto', 'salmoran Salmoran', 'Masculino', '98310390393', '12', 'Sistemas Computacionales', 'Axel_salmoran@hotmail.com', '123', 'Investigador', '', 'null', 'on'),
(11, '17390319', 'Alan de Jesus', 'Castellanos Sulub', 'Masculino', '989421', '10', 'Ing. en Sistemas Computacionales', 'adjcastellanos@gmail.com', '123', 'Investigador', '', 'null', 'null'),
(18, '17390320', 'Dio', 'Zwwardo', 'Masculino', '989421', '9', 'Ing. en Sistemas Computacionales', 'icelion06@gmail.com', '123', 'Investigador', NULL, NULL, 'true'),
(19, '17390837', 'Daniel Jesus', 'Cano Ramirez', 'Masculino', '989421', '10', 'Ing. en Sistemas Computacionales', 'danywolf@gmail.com', '123', 'Investigador', NULL, NULL, 'true'),
(30, '17380319', 'Dio', 'Zwaardoo', 'Masculino', '9831039039', '6', 'Sistemas Computacionales', 'dio@gmail.com', '123', 'Investigador', 'Instituto tecnologico chetumal', 'Sistemas y Computacion', 'on'),
(41, '17390331', 'Alan de Jesús', 'Castellanos Sulub', 'Masculino', '9838385273', '9', 'Ing. en Sistemas Computacionales', 'adj@gmail.com', '123', 'Investigador', NULL, NULL, 'true'),
(42, '17390833', 'Dio', 'Zwwardo', 'Masculino', '9838385273', NULL, NULL, 'io@gmail.com', '124', 'Revisor', 'ITCH', 'Contaduria', 'true'),
(44, '17390317', 'Alan', 'Zwwardo', 'Masculino', '9838385273', '11', 'Ing. en Sistemas Computacionales', 'L173903@chetumal.tecnm.mx', '124', 'Investigador', NULL, NULL, 'true'),
(45, '17390835', 'Alan de Jesus', 'Zwwardo', 'Masculino', '9838385273', '9', 'Ing. en Sistemas Computacionales', '17390@tecnm.chetumal.mx', '124', 'Investigador', NULL, NULL, 'true'),
(48, '17390322', 'YON', 'Zwwardo', 'Masculino', '9838385273', '8', 'Ing. en Sistemas Computacionales', 'icelion@gmail.com', '124', 'Investigador', NULL, NULL, 'true'),
(50, '17390830', 'Nuevo', 'Usuario', 'Masculino', '9838385273', '8', 'Ing. en Sistemas Computacionales', 'adjf@gmail.com', '124', 'Investigador', NULL, NULL, 'true'),
(56, '17390845', 'Alan de Jesus', 'Castellanos Sulub', 'Masculino', '9838385273', '8', 'Ing. en Sistemas Computacionales', 'adjcastanos@gmail.com', '123', 'Investigador', NULL, NULL, 'true');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `Id_Reporte` int(11) NOT NULL,
  `id_Persona` int(11) NOT NULL,
  `id_proyecto` int(11) NOT NULL,
  `No_Reporte` int(11) NOT NULL,
  `Fecha_de` varchar(500) NOT NULL,
  `Fecha_Hasta` varchar(500) NOT NULL,
  `Descripcion` text NOT NULL,
  `Estado` varchar(1000) NOT NULL,
  `id_Asesor` int(11) NOT NULL,
  `Modificaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`Id_Reporte`, `id_Persona`, `id_proyecto`, `No_Reporte`, `Fecha_de`, `Fecha_Hasta`, `Descripcion`, `Estado`, `id_Asesor`, `Modificaciones`) VALUES
(1, 2, 1, 1, '2016-08-18', '2016-08-25', '<p>El presente trabajo es un informe t&eacute;cnico del desarrollo del sistema de seguimiento de proyectos de investigaci&oacute;n. Este sistema da soluci&oacute;n a la forma en la cual se llevaba a cabo el control de los proyectos.</p>\r\n<p>Este informe se ha dividido en tres grandes cap&iacute;tulos:&nbsp; Generalidades, Fundamentaci&oacute;n te&oacute;rica, procedimientos y/o descripci&oacute;n de&nbsp; actividades realizadas.</p>\r\n<p>En las generalidades se da a conocer los objetivos su justificaci&oacute;n as&iacute; como los datos de la empresa las funciones de las &aacute;reas, los servicios que ofrece y en espec&iacute;fico el &nbsp;&aacute;rea&nbsp; en donde se desarroll&oacute; el sistema. En el cap&iacute;tulo de fundamentaci&oacute;n te&oacute;rica&nbsp; se da a conocer las herramientas utilizadas, metodolog&iacute;as y pasos para el desarrollo del proyecto as&iacute; como conceptos que llevara a dar una mejor comprensi&oacute;n de lo que se est&aacute; hablando&nbsp; en este documento.</p>', 'Aceptado', 6, '<p>revisalel cronograma</p>'),
(2, 2, 1, 2, '2016-09-16', '2016-10-21', '<p>El presente trabajo es un informe t&eacute;cnico del desarrollo del sistema de seguimiento de proyectos de investigaci&oacute;n. Este sistema da soluci&oacute;n a la forma en la cual se llevaba a cabo el control de los proyectos.</p>\r\n<p>Este informe se ha dividido en tres grandes cap&iacute;tulos:&nbsp; Generalidades, Fundamentaci&oacute;n te&oacute;rica, procedimientos y/o descripci&oacute;n de&nbsp; actividades realizadas.</p>\r\n<p>En las generalidades se da a conocer los objetivos su justificaci&oacute;n as&iacute; como los datos de la empresa las funciones de las &aacute;reas, los servicios que ofrece y en espec&iacute;fico el &nbsp;&aacute;rea&nbsp; en donde se desarroll&oacute; el sistema. En el cap&iacute;tulo de fundamentaci&oacute;n te&oacute;rica&nbsp; se da a conocer las herramientas utilizadas, metodolog&iacute;as y pasos para el desarrollo del proyecto as&iacute; como conceptos que llevara a dar una mejor comprensi&oacute;n de lo que se est&aacute; hablando&nbsp; en este documento.</p>', 'Aceptado', 6, '<p>revisa el cronograma</p>'),
(3, 2, 1, 3, '2016-11-23', '2017-01-17', '<p>El presente trabajo es un informe t&eacute;cnico del desarrollo del sistema de seguimiento de proyectos de investigaci&oacute;n. Este sistema da soluci&oacute;n a la forma en la cual se llevaba a cabo el control de los proyectos.</p>\r\n<p>Este informe se ha dividido en tres grandes cap&iacute;tulos:&nbsp; Generalidades, Fundamentaci&oacute;n te&oacute;rica, procedimientos y/o descripci&oacute;n de&nbsp; actividades realizadas.</p>\r\n<p>En las generalidades se da a conocer los objetivos su justificaci&oacute;n as&iacute; como los datos de la empresa las funciones de las &aacute;reas, los servicios que ofrece y en espec&iacute;fico el &nbsp;&aacute;rea&nbsp; en donde se desarroll&oacute; el sistema. En el cap&iacute;tulo de fundamentaci&oacute;n te&oacute;rica&nbsp; se da a conocer las herramientas utilizadas, metodolog&iacute;as y pasos para el desarrollo del proyecto as&iacute; como conceptos que llevara a dar una mejor comprensi&oacute;n de lo que se est&aacute; hablando&nbsp; en este documento.</p>', 'Aceptado', 6, NULL),
(4, 2, 1, 4, '2016-12-08', '2017-02-16', '<p>El presente trabajo es un informe t&eacute;cnico del desarrollo del sistema de seguimiento de proyectos de investigaci&oacute;n. Este sistema da soluci&oacute;n a la forma en la cual se llevaba a cabo el control de los proyectos.</p>\r\n<p>Este informe se ha dividido en tres grandes cap&iacute;tulos:&nbsp; Generalidades, Fundamentaci&oacute;n te&oacute;rica, procedimientos y/o descripci&oacute;n de&nbsp; actividades realizadas.</p>\r\n<p>En las generalidades se da a conocer los objetivos su justificaci&oacute;n as&iacute; como los datos de la empresa las funciones de las &aacute;reas, los servicios que ofrece y en espec&iacute;fico el &nbsp;&aacute;rea&nbsp; en donde se desarroll&oacute; el sistema. En el cap&iacute;tulo de fundamentaci&oacute;n te&oacute;rica&nbsp; se da a conocer las herramientas utilizadas, metodolog&iacute;as y pasos para el desarrollo del proyecto as&iacute; como conceptos que llevara a dar una mejor comprensi&oacute;n de lo que se est&aacute; hablando&nbsp; en este documento.</p>', 'Aceptado', 6, NULL),
(5, 2, 4, 5, '2016-08-17', '2016-08-24', '<p>fsdfgdfgdfgdfgdfg</p>\r\n<p>dsfgdfgdf</p>\r\n<p>dfg</p>\r\n<p>dfg</p>\r\n<p>df</p>\r\n<p>gd</p>\r\n<p>fgd</p>\r\n<p>fg</p>\r\n<p>df</p>\r\n<p>gdfgdfgdfgdfgdfkjh2eb&ntilde;opujw&ntilde;orkujqw&ntilde;lkerj&ntilde;ql3wkjfgk&lt; qh 3wh123urh3qw.4</p>', 'Pendiente Para revision', 3, NULL),
(6, 2, 5, 6, '', '', '<p>werqwdfasdfasdfasdfsd</p>', 'Aceptado', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportesfinales`
--

CREATE TABLE `reportesfinales` (
  `id` int(11) NOT NULL,
  `id_persona` text NOT NULL,
  `id_proyecto` text NOT NULL,
  `id_asesor` text NOT NULL,
  `nombre` text NOT NULL,
  `Estado` text NOT NULL,
  `modificaciones` text DEFAULT NULL,
  `ReporteFinal` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reportesfinales`
--

INSERT INTO `reportesfinales` (`id`, `id_persona`, `id_proyecto`, `id_asesor`, `nombre`, `Estado`, `modificaciones`, `ReporteFinal`) VALUES
(1, '2', '1', '6', 'Formato_Informe_Final (9)160816060022.doc', 'Aceptado', NULL, 'Formato_Informe_Final (8)160816060115.doc'),
(2, '2', '4', '3', 'TERMINO DE UDACITY160826191830.docx', 'Aceptado', NULL, 'AuricularesHistoria160826191918.docx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repositorio`
--

CREATE TABLE `repositorio` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `Nombre_Archivo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repotefinal1`
--

CREATE TABLE `repotefinal1` (
  `id_reporte` int(11) NOT NULL,
  `id_persona` text NOT NULL,
  `institucion` text NOT NULL,
  `director_proyecto` text NOT NULL,
  `titulo_proyecto` text NOT NULL,
  `nivel_academico` text NOT NULL,
  `nombre_posgrado` text NOT NULL,
  `nombre_licenciatura` text NOT NULL,
  `linea_investigacion` text NOT NULL,
  `tipo_investigacion` text NOT NULL,
  `fecha_inicio` text NOT NULL,
  `fecha_termino` text NOT NULL,
  `resumen_proyecto` text NOT NULL,
  `alcance_objetivo` text NOT NULL,
  `objetivos_programados` text NOT NULL,
  `metas_propuestas` text NOT NULL,
  `modificaciones_enProyecto` text NOT NULL,
  `Clave_Proyecto` text NOT NULL,
  `Estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisores`
--

CREATE TABLE `revisores` (
  `id` int(11) NOT NULL,
  `Nombre_Revisor` varchar(60) NOT NULL,
  `Apellidos` varchar(60) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Area` varchar(50) NOT NULL,
  `Institucion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `revisores`
--

INSERT INTO `revisores` (`id`, `Nombre_Revisor`, `Apellidos`, `Email`, `Phone`, `Area`, `Institucion`) VALUES
(1, 'Blandy', 'Pamplona Solis', 'Blandy@hotmail.com', '123123123', 'Sistemas y Computacion', 'Instituto tecnologico de chetumal'),
(2, 'Agustin ', 'Esquivel Pat', 'Agustin@hotmail.com', '9177822', 'Sistemas y Computacion', 'Instituto tecnologico chetumal'),
(3, 'Lino ', 'Rangel Gomez', 'Lino@hotmail.com', '87652726', 'Sistemas y Computacion', 'Instituto tecnologico chetumal'),
(4, 'Isaias', 'May Canche', 'Isaias@hotmail.com', '8917738', 'Sistemas y Computacion', 'Instituto tecnologico chetumal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `revisor_proyecto`
--

CREATE TABLE `revisor_proyecto` (
  `id` int(11) NOT NULL,
  `proyecto` varchar(500) NOT NULL,
  `revisor` varchar(50) NOT NULL,
  `fechaEntrega` date DEFAULT NULL,
  `valoracion` varchar(50) DEFAULT NULL,
  `observacion` longtext DEFAULT NULL,
  `banddera` int(11) DEFAULT NULL,
  `Encargado` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `revisor_proyecto`
--

INSERT INTO `revisor_proyecto` (`id`, `proyecto`, `revisor`, `fechaEntrega`, `valoracion`, `observacion`, `banddera`, `Encargado`) VALUES
(4, '2', 'Blandy', '2016-08-16', 'Aceptado con modificaciones', '\r\n\r\nsdfsadft\r\nsdfgsdfgsdfgsdf\r\nsdfg\r\nsdfg\r\nsdf\r\ngsd\r\nfgsdfgdsfgsdfgsdfg\r\n\r\n', 0, 'Encargado'),
(5, '2', 'Agustin ', '2016-08-16', NULL, NULL, 0, '0'),
(6, '2', 'Isaias', '2016-08-16', NULL, NULL, 0, '0'),
(10, '4', 'Blandy', '2016-08-17', 'Aceptado', '\r\nnull\r\n\r\n', 0, 'Encargado'),
(11, '4', 'Agustin ', '2016-08-17', NULL, NULL, 0, '0'),
(12, '4', 'Isaias', '2016-08-17', NULL, NULL, 0, '0'),
(13, '6', 'Blandy', '2016-08-23', NULL, NULL, 0, 'Encargado'),
(14, '6', 'Agustin ', '2016-08-23', NULL, NULL, 0, '0'),
(15, '6', 'Isaias', '2016-08-23', NULL, NULL, 0, '0'),
(16, '5', 'Blandy', '2016-08-31', 'Aceptado', '\r\nnull\r\n\r\n', 0, 'Encargado'),
(17, '5', 'Agustin ', '2016-08-31', NULL, NULL, 0, '0'),
(18, '5', 'Isaias', '2016-08-31', NULL, NULL, 0, '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnoproyecto`
--
ALTER TABLE `alumnoproyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `anexos_reporte_final`
--
ALTER TABLE `anexos_reporte_final`
  ADD PRIMARY KEY (`id_reporte`);

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `convenios`
--
ALTER TABLE `convenios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cronograma`
--
ALTER TABLE `cronograma`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `formato1`
--
ALTER TABLE `formato1`
  ADD PRIMARY KEY (`id_formato1_1`);

--
-- Indices de la tabla `formato2`
--
ALTER TABLE `formato2`
  ADD PRIMARY KEY (`id_profe_col`);

--
-- Indices de la tabla `formato2_1`
--
ALTER TABLE `formato2_1`
  ADD PRIMARY KEY (`id_formato2_1`);

--
-- Indices de la tabla `formato3`
--
ALTER TABLE `formato3`
  ADD PRIMARY KEY (`id_alum_parti`);

--
-- Indices de la tabla `formato4`
--
ALTER TABLE `formato4`
  ADD PRIMARY KEY (`id_formato1_1`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `misionyvision`
--
ALTER TABLE `misionyvision`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `porcentajeavance`
--
ALTER TABLE `porcentajeavance`
  ADD PRIMARY KEY (`Id_porcentaje`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `noControl` (`noControl`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`Id_Reporte`),
  ADD UNIQUE KEY `No_Reporte` (`No_Reporte`);

--
-- Indices de la tabla `reportesfinales`
--
ALTER TABLE `reportesfinales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `repositorio`
--
ALTER TABLE `repositorio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `repotefinal1`
--
ALTER TABLE `repotefinal1`
  ADD PRIMARY KEY (`id_reporte`);

--
-- Indices de la tabla `revisores`
--
ALTER TABLE `revisores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `revisor_proyecto`
--
ALTER TABLE `revisor_proyecto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnoproyecto`
--
ALTER TABLE `alumnoproyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anexos_reporte_final`
--
ALTER TABLE `anexos_reporte_final`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contactanos`
--
ALTER TABLE `contactanos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `convenios`
--
ALTER TABLE `convenios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formato1`
--
ALTER TABLE `formato1`
  MODIFY `id_formato1_1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `formato2`
--
ALTER TABLE `formato2`
  MODIFY `id_profe_col` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `formato2_1`
--
ALTER TABLE `formato2_1`
  MODIFY `id_formato2_1` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `formato3`
--
ALTER TABLE `formato3`
  MODIFY `id_alum_parti` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `misionyvision`
--
ALTER TABLE `misionyvision`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `porcentajeavance`
--
ALTER TABLE `porcentajeavance`
  MODIFY `Id_porcentaje` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `Id_Reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `reportesfinales`
--
ALTER TABLE `reportesfinales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `repositorio`
--
ALTER TABLE `repositorio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `repotefinal1`
--
ALTER TABLE `repotefinal1`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `revisores`
--
ALTER TABLE `revisores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `revisor_proyecto`
--
ALTER TABLE `revisor_proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
