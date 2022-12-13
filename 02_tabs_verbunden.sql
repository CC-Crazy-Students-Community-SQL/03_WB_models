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
  CONSTRAINT `fk_servants_cats`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

DESCRIBE mydb.cats;
DESCRIBe mydb.servants;