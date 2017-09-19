CREATE TABLE `andru_dev`.`dblc` (
  `iddblc` INT NOT NULL AUTO_INCREMENT,
  `Date` VARCHAR(11) NULL,
  `Company` VARCHAR(45) NULL,
  `Day` VARCHAR(4) NULL,
  `Week` VARCHAR(4) NULL,
  `Month` VARCHAR(4) NULL,
  `Year` VARCHAR(6) NULL,
  `Plant` VARCHAR(45) NULL,
  `Time` VARCHAR(45) NULL,
  `Truck` VARCHAR(45) NULL,
  `Excavator` VARCHAR(45) NULL,
  `Loads` INT NULL,
  `Area` VARCHAR(45) NULL,
  `Material` VARCHAR(45) NULL,
  `Time_Lost` VARCHAR(45) NULL,
  `Truck_Type` VARCHAR(45) NULL,
  `Estimated_Tons` DECIMAL NULL,
  `Cubes` DECIMAL NULL,
  `Shift` VARCHAR(11) NULL,
  `Haul_To` VARCHAR(45) NULL,
  `Month_Period` VARCHAR(45) NULL,
  `Year_Period` VARCHAR(45) NULL,
  `Material_Type` VARCHAR(45) NULL,
  `Haul_Distance` DECIMAL NULL,
  `Team` CHAR NULL,
  `Haul_Category` CHAR NULL,
  PRIMARY KEY (`iddblc`));

  //alter
  ALTER TABLE `andru_dev`.`dblc`
CHANGE COLUMN `Estimated_Tons` `Estimated_Tons` VARCHAR(10) NULL DEFAULT NULL ,
CHANGE COLUMN `Cubes` `Cubes` VARCHAR(10) NULL DEFAULT NULL ,
CHANGE COLUMN `Haul_Distance` `Haul_Distance` VARCHAR(10) NULL DEFAULT NULL ;
