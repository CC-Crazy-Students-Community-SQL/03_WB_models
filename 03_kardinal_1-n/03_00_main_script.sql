DROP DATABASE IF EXISTS mydb;
CREATE DATABASE IF NOT EXISTS mydb;

CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `catName` VARCHAR(45) NOT NULL,
  `catColor` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`kitten` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `kittenName` VARCHAR(45) NOT NULL,
  `kittenColor` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `cats_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_kitten_cats_idx` (`cats_id` ASC),
  CONSTRAINT `fk_kitten_cats`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`, `age`) VALUES (default, "Beauty", "black", 5);
INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`, `age`) VALUES (default, "Beasty", "gray", 7);
INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`, `age`) VALUES (default, "Buster", "striped", 4);

INSERT INTO `mydb`.`kitten` (`id`, `kittenName`, `kittenColor`, `age`, `cats_id`) VALUES (default, "Rick", "gray", 1, 1);
INSERT INTO `mydb`.`kitten` (`id`, `kittenName`, `kittenColor`, `age`, `cats_id`) VALUES (default, "Rose", "black", 2, 1);
INSERT INTO `mydb`.`kitten` (`id`, `kittenName`, `kittenColor`, `age`, `cats_id`) VALUES (default, "Steve", "green", 3, 2);
INSERT INTO `mydb`.`kitten` (`id`, `kittenName`, `kittenColor`, `age`, `cats_id`) VALUES (default, "Rover", "striped", 4, 3);
INSERT INTO `mydb`.`kitten` (`id`, `kittenName`, `kittenColor`, `age`, `cats_id`) VALUES (default, "Nolen", "red", 2, 3);

SELECT * FROM `mydb`.`cats`;
SELECT * FROM `mydb`.`kitten`;