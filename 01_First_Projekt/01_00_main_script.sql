
DROP DATABASE IF EXISTS mydb;
CREATE DATABASE IF NOT EXISTS mydb;

CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `userName` VARCHAR(45) NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL,
  `createTime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `userName_UNIQUE` (`userName` ASC))
ENGINE = InnoDB;

INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (default, "Beauty", 4);
INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (default, "Blacky", 2);
INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (default, "Blinky", 5);
INSERT INTO `mydb`.`cats` (`id`, `name`, `age`) VALUES (default, "Brainy", 5);

INSERT INTO `mydb`.`users` (`id`, `userName`, `firstName`, `lastName`, `createTime`) VALUES (default, "sandro", "Sandro", "Simperl", default);
INSERT INTO `mydb`.`users` (`id`, `userName`, `firstName`, `lastName`, `createTime`) VALUES (default, "peter", "Peter", "Schmidt", default);

SELECT * FROM `mydb`.`cats`;
SELECT * FROM `mydb`.`users`;