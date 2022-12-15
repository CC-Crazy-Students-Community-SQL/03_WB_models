DROP DATABASE IF EXISTS mydb;
CREATE DATABASE IF NOT EXISTS mydb;

CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `catName` VARCHAR(45) NOT NULL,
  `catColor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`servants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `servantName` VARCHAR(45) NOT NULL,
  `servantTime` INT NOT NULL,
  `cats_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_servants_cats_idx` (`cats_id` ASC),
  UNIQUE INDEX `cats_id_UNIQUE` (`cats_id` ASC),
  CONSTRAINT `fk_servants_cats`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`) VALUES (default, "Beauty", "black");
INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`) VALUES (default, "Blacky", "gray");
INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`) VALUES (default, "Buster", "red");
INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`) VALUES (default, "Bearly", "striped");

INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`, `cats_id`) VALUES (default, "Mia", 3, 1);
INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`, `cats_id`) VALUES (default, "Mike", 7, 2);
INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`, `cats_id`) VALUES (default, "Harry", 9, 3);
INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`, `cats_id`) VALUES (default, "George", 1, 4);

SELECT * FROM `mydb`.`cats`;
SELECT * FROM `mydb`.`servants`;