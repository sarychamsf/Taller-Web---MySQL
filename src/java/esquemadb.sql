-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.11 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for esquemadb
CREATE DATABASE IF NOT EXISTS `esquemadb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `esquemadb`;

-- Dumping structure for table esquemadb.columna
CREATE TABLE IF NOT EXISTS `columna` (
  `id_columna` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_columna` varchar(30) NOT NULL,
  `data_type` varchar(30) NOT NULL,
  `id_tabla` int(3) NOT NULL,
  PRIMARY KEY (`id_columna`),
  KEY `id_tabla` (`id_tabla`),
  CONSTRAINT `columna_ibfk_1` FOREIGN KEY (`id_tabla`) REFERENCES `tabla` (`id_tabla`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table esquemadb.columna: ~1 rows (approximately)
/*!40000 ALTER TABLE `columna` DISABLE KEYS */;
/*!40000 ALTER TABLE `columna` ENABLE KEYS */;

-- Dumping structure for table esquemadb.esquema
CREATE TABLE IF NOT EXISTS `esquema` (
  `id_esquema` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_esquema` varchar(30) NOT NULL,
  PRIMARY KEY (`id_esquema`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table esquemadb.esquema: ~5 rows (approximately)
/*!40000 ALTER TABLE `esquema` DISABLE KEYS */;
/*!40000 ALTER TABLE `esquema` ENABLE KEYS */;

-- Dumping structure for table esquemadb.tabla
CREATE TABLE IF NOT EXISTS `tabla` (
  `id_tabla` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tabla` varchar(30) NOT NULL,
  `id_esquema` int(3) NOT NULL,
  PRIMARY KEY (`id_tabla`),
  KEY `id_esquema` (`id_esquema`),
  CONSTRAINT `tabla_ibfk_1` FOREIGN KEY (`id_esquema`) REFERENCES `esquema` (`id_esquema`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table esquemadb.tabla: ~7 rows (approximately)
/*!40000 ALTER TABLE `tabla` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
