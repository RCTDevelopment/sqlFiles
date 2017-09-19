CREATE TABLE `andru_dev`.`user` (
  `iduser` INT NOT NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `role` SET('ADMIN', 'DIRECTOR', 'MANAGER') NULL,
  `Plant` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`iduser`));

//alter
ALTER TABLE `andru_dev`.`user`
CHANGE COLUMN `iduser` `iduser` INT(11) NOT NULL AUTO_INCREMENT ;
