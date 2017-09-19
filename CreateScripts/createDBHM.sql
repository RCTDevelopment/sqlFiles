CREATE TABLE `andru_dev`.`dbhm` (
  `iddbhm` INT NOT NULL AUTO_INCREMENT,
  `Date` VARCHAR(11) NULL,
  `Company` VARCHAR(45) NULL,
  `Day` VARCHAR(4) NULL,
  `Week` VARCHAR(4) NULL,
  `Month` VARCHAR(4) NULL,
  `Year` VARCHAR(6) NULL,
  `Plant` VARCHAR(45) NULL,
  `Type` VARCHAR(45) NULL,
  `Equipment` VARCHAR(45) NULL,
  `BOS` INT NULL,
  `EOS` INT NULL,
  `Total_Runtime` INT NULL,
  `Shift` VARCHAR(12) NULL,
  `Month_Period` VARCHAR(10) NULL,
  `Year_Period` VARCHAR(12) NULL,
  `Team` CHAR NULL,
  `Bud_Time` INT NULL,
  PRIMARY KEY (`iddbhm`));


//alter

ALTER TABLE `andru_dev`.`dbhm`
CHANGE COLUMN `BOS` `BOS` VARCHAR(45) NULL DEFAULT NULL ,
CHANGE COLUMN `EOS` `EOS` VARCHAR(45) NULL DEFAULT NULL ,
CHANGE COLUMN `Total_Runtime` `Total_Runtime` VARCHAR(45) NULL DEFAULT NULL ,
CHANGE COLUMN `Bud_Time` `Bud_Time` VARCHAR(45) NULL DEFAULT NULL ;

//alter again
ALTER TABLE `andru_dev`.`dbhm`
CHANGE COLUMN `Team` `Team` VARCHAR(10) NULL DEFAULT NULL ;
