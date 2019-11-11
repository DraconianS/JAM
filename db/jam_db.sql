-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema jam_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema jam_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jam_db` DEFAULT CHARACTER SET utf8 ;
USE `jam_db` ;

-- -----------------------------------------------------
-- Table `jam_db`.`animes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jam_db`.`animes` (
  `idanimes` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL DEFAULT NULL,
  `alt_name` VARCHAR(100) NULL DEFAULT NULL,
  `last_watched_ep` INT(11) NULL DEFAULT NULL,
  `release_date` DATETIME NULL DEFAULT NULL,
  `total_ep` INT(11) NULL DEFAULT NULL,
  `genere` INT(11) NULL DEFAULT NULL,
  `category` INT(11) NULL DEFAULT NULL,
  `ongoing` TINYINT(3) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `total_rating` DECIMAL(2,0) NULL DEFAULT NULL COMMENT 'Personal rating deve ser um nxm com o usuario',
  `animescol` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idanimes`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COMMENT = 'Anime Stuff';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
