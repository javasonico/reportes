-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.6.24-log - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test`;

-- Volcando estructura para tabla test.equipos
CREATE TABLE IF NOT EXISTS `equipos` (
  `codi_equi` int(11) NOT NULL AUTO_INCREMENT,
  `nomb_equi` varchar(255) DEFAULT NULL,
  `desc_equi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codi_equi`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla test.equipos: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `equipos` DISABLE KEYS */;
INSERT INTO `equipos` (`codi_equi`, `nomb_equi`, `desc_equi`) VALUES
	(3, 'Equipo A', 'El mejor'),
	(4, 'Equipo B', 'El segundo mejor'),
	(5, 'Equipo C', 'El tercero'),
	(6, 'TestWeb', 'Desc Web'),
	(7, 'Otro', 'XXX'),
	(9, 'AA', 'AAAA'),
	(10, 'BB', 'BBBB'),
	(11, 'CC', 'CCCC');
/*!40000 ALTER TABLE `equipos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
