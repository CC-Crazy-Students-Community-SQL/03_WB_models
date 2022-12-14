-- Anlegen der Tabelle

CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

-- Tabellen einfügen

INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (default, "Beauty", 4);
INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (default, "Blacky", 2);
INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (default, "Blinky", 5);
INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (default, "Brainy", 5);

-- Tabelle anzeigen lassen

SELECT * FROM mydb.cats;