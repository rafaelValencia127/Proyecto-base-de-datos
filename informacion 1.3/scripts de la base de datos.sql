-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema InformacionConstructora
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema InformacionConstructora
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `InformacionConstructora` DEFAULT CHARACTER SET utf8 ;
USE `InformacionConstructora` ;

-- -----------------------------------------------------
-- Table `InformacionConstructora`.`Permiso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`Permiso` (
  `Estado` VARCHAR(10) NOT NULL,
  `FechaPermiso` DATE NULL,
  `IdPermiso` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IdPermiso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`TipoLugar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`TipoLugar` (
  `idTipoLugar` INT NOT NULL,
  `Nombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idTipoLugar`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`IdsPlanoLugar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`IdsPlanoLugar` (
  `IdsPlanoLugar` INT NOT NULL,
  `IdTipoLugar` INT NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  `Coordenada` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`IdsPlanoLugar`),
  INDEX `fk_IdsPlanoLugar_TipoLugar1_idx` (`IdTipoLugar` ASC) VISIBLE,
  CONSTRAINT `fk_IdsPlanoLugar_TipoLugar1`
    FOREIGN KEY (`IdTipoLugar`)
    REFERENCES `InformacionConstructora`.`TipoLugar` (`idTipoLugar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`Factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`Factura` (
  `idFactura` INT NOT NULL,
  `Valor` DOUBLE NOT NULL,
  `Estado` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idFactura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`Comprador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`Comprador` (
  `idComprador` INT NOT NULL,
  `NombreComprador` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idComprador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`TablaOBra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`TablaOBra` (
  `IdOBra` INT NOT NULL AUTO_INCREMENT,
  `Nombe` VARCHAR(60) NOT NULL,
  `FechaInicioObra` DATE NOT NULL,
  `FechaFinObra` VARCHAR(45) NULL,
  `IdPermiso` INT NOT NULL,
  `IdsPlanoLugar` INT NOT NULL,
  `IdFactura` INT NOT NULL,
  `IdComprador` INT NOT NULL,
  `Estado` VARCHAR(15) NOT NULL,
  `Costo` DOUBLE NOT NULL,
  PRIMARY KEY (`IdOBra`, `IdComprador`),
  INDEX `fk_TablaOBra_Permisos1_idx` (`IdPermiso` ASC) VISIBLE,
  INDEX `fk_TablaOBra_IdsPlanoLugar1_idx` (`IdsPlanoLugar` ASC) VISIBLE,
  INDEX `fk_TablaOBra_Factura1_idx` (`IdFactura` ASC) VISIBLE,
  INDEX `fk_TablaOBra_Comprador1_idx` (`IdComprador` ASC) VISIBLE,
  CONSTRAINT `fk_TablaOBra_Permisos1`
    FOREIGN KEY (`IdPermiso`)
    REFERENCES `InformacionConstructora`.`Permiso` (`IdPermiso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TablaOBra_IdsPlanoLugar1`
    FOREIGN KEY (`IdsPlanoLugar`)
    REFERENCES `InformacionConstructora`.`IdsPlanoLugar` (`IdsPlanoLugar`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TablaOBra_Factura1`
    FOREIGN KEY (`IdFactura`)
    REFERENCES `InformacionConstructora`.`Factura` (`idFactura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TablaOBra_Comprador1`
    FOREIGN KEY (`IdComprador`)
    REFERENCES `InformacionConstructora`.`Comprador` (`idComprador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`TipoPlano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`TipoPlano` (
  `idTipoPlano` INT NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idTipoPlano`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`EspecificacionPlano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`EspecificacionPlano` (
  `idEspecificacionPlano` INT NOT NULL,
  `Escala` VARCHAR(15) NOT NULL,
  `FechaRealizacionPlano` DATE NOT NULL,
  `IdTipoPlano` INT NOT NULL,
  PRIMARY KEY (`idEspecificacionPlano`),
  INDEX `fk_EspecificacionPlano_TipoPlano1_idx` (`IdTipoPlano` ASC) VISIBLE,
  CONSTRAINT `fk_EspecificacionPlano_TipoPlano1`
    FOREIGN KEY (`IdTipoPlano`)
    REFERENCES `InformacionConstructora`.`TipoPlano` (`idTipoPlano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`TablaOBra_has_EspecificacionPlano`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`TablaOBra_has_EspecificacionPlano` (
  `IdOBra` INT NOT NULL,
  `IdEspecificacionPlano` INT NOT NULL,
  PRIMARY KEY (`IdOBra`, `IdEspecificacionPlano`),
  INDEX `fk_TablaOBra_has_EspecificacionPlano_EspecificacionPlano1_idx` (`IdEspecificacionPlano` ASC) VISIBLE,
  INDEX `fk_TablaOBra_has_EspecificacionPlano_TablaOBra1_idx` (`IdOBra` ASC) VISIBLE,
  CONSTRAINT `fk_TablaOBra_has_EspecificacionPlano_TablaOBra1`
    FOREIGN KEY (`IdOBra`)
    REFERENCES `InformacionConstructora`.`TablaOBra` (`IdOBra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TablaOBra_has_EspecificacionPlano_EspecificacionPlano1`
    FOREIGN KEY (`IdEspecificacionPlano`)
    REFERENCES `InformacionConstructora`.`EspecificacionPlano` (`idEspecificacionPlano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`TipoEmpleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`TipoEmpleado` (
  `idTipoEmpleado` INT NOT NULL,
  `NombreTipoEmpleado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoEmpleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`Empleado` (
  `idEmpleado` INT NOT NULL,
  `Nombre` VARCHAR(50) NOT NULL,
  `IdTipoEmpleado` INT NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  INDEX `fk_Empleado_TipoEmpleado1_idx` (`IdTipoEmpleado` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_TipoEmpleado1`
    FOREIGN KEY (`IdTipoEmpleado`)
    REFERENCES `InformacionConstructora`.`TipoEmpleado` (`idTipoEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `InformacionConstructora`.`TablaOBra_has_Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `InformacionConstructora`.`TablaOBra_has_Empleado` (
  `IdOBra` INT NOT NULL,
  `IdEmpleado` INT NOT NULL,
  `Dias` INT NULL,
  `EstadoEmpleado` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`IdOBra`, `IdEmpleado`),
  INDEX `fk_TablaOBra_has_Empleado_Empleado1_idx` (`IdEmpleado` ASC) VISIBLE,
  INDEX `fk_TablaOBra_has_Empleado_TablaOBra1_idx` (`IdOBra` ASC) VISIBLE,
  CONSTRAINT `fk_TablaOBra_has_Empleado_TablaOBra1`
    FOREIGN KEY (`IdOBra`)
    REFERENCES `InformacionConstructora`.`TablaOBra` (`IdOBra`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TablaOBra_has_Empleado_Empleado1`
    FOREIGN KEY (`IdEmpleado`)
    REFERENCES `InformacionConstructora`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
