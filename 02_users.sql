-- Anlegen der Tabelle

CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userName` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `userName_UNIQUE` (`userName` ASC))
ENGINE = InnoDB;

-- Tabellen einfügen

INSERT INTO `mydb`.`users` (`id`, `userName`, `firstName`, `lastName`, `createTime`) VALUES (default, "sandro", "Sandro", "Simperl", default);
INSERT INTO `mydb`.`users` (`id`, `userName`, `firstName`, `lastName`, `createTime`) VALUES (default, "peter", "Peter", "Schmidt", default);

-- Tabelle anzeigen lassen

SELECT * FROM mydb.users;