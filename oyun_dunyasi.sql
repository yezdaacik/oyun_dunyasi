-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- korsan_oyun_dunyasi için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `korsan_oyun_dunyasi` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `korsan_oyun_dunyasi`;

-- tablo yapısı dökülüyor korsan_oyun_dunyasi.oyun
CREATE TABLE IF NOT EXISTS `oyun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL DEFAULT '0',
  `fiyat` double NOT NULL DEFAULT 0,
  `tur_id` int(11) NOT NULL DEFAULT 0,
  `yas` tinyint(4) NOT NULL DEFAULT 0,
  `boyut` int(11) NOT NULL DEFAULT 0,
  `sistem` text NOT NULL,
  `yayinci_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `FK__tur` (`tur_id`),
  KEY `FK__yayinci` (`yayinci_id`),
  CONSTRAINT `FK__tur` FOREIGN KEY (`tur_id`) REFERENCES `tur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK__yayinci` FOREIGN KEY (`yayinci_id`) REFERENCES `yayinci` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyun_dunyasi.oyun: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `oyun` DISABLE KEYS */;
/*!40000 ALTER TABLE `oyun` ENABLE KEYS */;

-- tablo yapısı dökülüyor korsan_oyun_dunyasi.tur
CREATE TABLE IF NOT EXISTS `tur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyun_dunyasi.tur: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `tur` DISABLE KEYS */;
/*!40000 ALTER TABLE `tur` ENABLE KEYS */;

-- tablo yapısı dökülüyor korsan_oyun_dunyasi.yayinci
CREATE TABLE IF NOT EXISTS `yayinci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ktarih` date NOT NULL,
  `personel` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyun_dunyasi.yayinci: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `yayinci` DISABLE KEYS */;
/*!40000 ALTER TABLE `yayinci` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
