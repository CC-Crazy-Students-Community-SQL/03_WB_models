DROP TABLE IF EXISTS `mydb`.`cats`;
CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `catName` VARCHAR(45) NOT NULL,
  `catColor` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

DROP TABLE IF EXISTS `mydb`.`kitten`;
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