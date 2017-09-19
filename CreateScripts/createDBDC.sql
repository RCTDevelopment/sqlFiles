CREATE TABLE `andru_dev`.`dbdc` (
  `iddbdc` INT NOT NULL AUTO_INCREMENT,
  `Date` VARCHAR(45) NULL,
  `Company` VARCHAR(45) NULL,
  `Day` VARCHAR(45) NULL,
  `Week` VARCHAR(45) NULL,
  `Month` VARCHAR(45) NULL,
  `Year` VARCHAR(45) NULL,
  `Plant` VARCHAR(45) NULL,
  `Time` VARCHAR(45) NULL,
  `Dozer` VARCHAR(45) NULL,
  `Area` VARCHAR(45) NULL,
  `Material` VARCHAR(45) NULL,
  `Dozing_Time` VARCHAR(45) NULL,
  `Perc_Worked` VARCHAR(45) NULL,
  `Cubes` VARCHAR(45) NULL,
  `Shift` VARCHAR(45) NULL,
  `Haul_To` VARCHAR(45) NULL,
  `Month_Period` VARCHAR(45) NULL,
  `Year_Period` VARCHAR(45) NULL,
  PRIMARY KEY (`iddbdc`));

//Alter

ALTER TABLE `andru_dev`.`dbdc`
ADD COLUMN `Team` VARCHAR(45) NULL AFTER `Year_Period`;
