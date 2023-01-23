-- MySQL Script generated by MySQL Workbench
-- Mon Jan 23 16:34:38 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_pi_build_eco
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_pi_build_eco
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_pi_build_eco` DEFAULT CHARACTER SET utf8 ;
USE `db_pi_build_eco` ;

-- -----------------------------------------------------
-- Table `db_pi_build_eco`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pi_build_eco`.`tb_produto` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `preco` DECIMAL(9,2) NOT NULL,
  `cor` VARCHAR(255) NOT NULL,
  `quantidade` INT NOT NULL,
  `tamanho` DECIMAL(5,2) NOT NULL,
  `peso` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pi_build_eco`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pi_build_eco`.`tb_categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `telhados e construções` VARCHAR(255) NOT NULL,
  `materiais` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pi_build_eco`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pi_build_eco`.`tb_usuario` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome_usuario` VARCHAR(255) NULL,
  `usuario` VARCHAR(255) NULL,
  `senha` VARCHAR(255) NULL,
  `foto` VARCHAR(255) NULL,
  `email` VARCHAR(255) NOT NULL,
  `tb_produto_id` BIGINT NOT NULL,
  `tb_categoria_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_usuario_tb_produto_idx` (`tb_produto_id` ASC) VISIBLE,
  INDEX `fk_tb_usuario_tb_categoria1_idx` (`tb_categoria_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_usuario_tb_produto`
    FOREIGN KEY (`tb_produto_id`)
    REFERENCES `db_pi_build_eco`.`tb_produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_usuario_tb_categoria1`
    FOREIGN KEY (`tb_categoria_id`)
    REFERENCES `db_pi_build_eco`.`tb_categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
