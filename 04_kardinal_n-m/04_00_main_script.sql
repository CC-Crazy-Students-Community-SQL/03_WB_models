DROP DATABASE IF EXISTS mydb;
CREATE DATABASE IF NOT EXISTS mydb;

CREATE TABLE IF NOT EXISTS `mydb`.`cats` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `catName` VARCHAR(45) NOT NULL,
  `catColor` VARCHAR(45) NOT NULL,
  `catAge` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `prodName` VARCHAR(45) NOT NULL,
  `prodPrice` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`servants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `servantName` VARCHAR(45) NOT NULL,
  `servantTime` INT NOT NULL,
  `cats_id` INT NOT NULL,
  PRIMARY KEY (`id`, `cats_id`),
  INDEX `fk_servants_cats1_idx` (`cats_id` ASC),
  UNIQUE INDEX `cats_id_UNIQUE` (`cats_id` ASC),
  CONSTRAINT `fk_servants_cats1`
    FOREIGN KEY (`cats_id`)
    REFERENCES `mydb`.`cats` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`purchases` (
  `servants_id` INT NOT NULL,
  `products_id` INT NOT NULL,
  PRIMARY KEY (`servants_id`, `products_id`),
  INDEX `fk_table2_products1_idx` (`products_id` ASC),
  CONSTRAINT `fk_table2_servants`
    FOREIGN KEY (`servants_id`)
    REFERENCES `mydb`.`servants` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_table2_products1`
    FOREIGN KEY (`products_id`)
    REFERENCES `mydb`.`products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`, `catAge`) VALUES (default, "Beauty", "black", 4);
INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`, `catAge`) VALUES (default, "Buster", "gray", 3);
INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`, `catAge`) VALUES (default, "Blinky", "striped", 7);
INSERT INTO `mydb`.`cats` (`id`, `catName`, `catColor`, `catAge`) VALUES (default, "Bumper", "red", 3);

INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`, `cats_id`) VALUES (default, "Manfred", 7, 3);
INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`, `cats_id`) VALUES (default, "Sandro", 2, 1);
INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`, `cats_id`) VALUES (default, "Peter", 4, 2);

INSERT INTO `mydb`.`products` (`id`, `prodName`, `prodPrice`) VALUES (default, "Whiskas | Lachs", "2,75");
INSERT INTO `mydb`.`products` (`id`, `prodName`, `prodPrice`) VALUES (default, "Whiskas | Huhn", "2,80");
INSERT INTO `mydb`.`products` (`id`, `prodName`, `prodPrice`) VALUES (default, "Felix | Rind", "2,20");
INSERT INTO `mydb`.`products` (`id`, `prodName`, `prodPrice`) VALUES (default, "Felix | Schwein", "2,00");

INSERT INTO `mydb`.`purchases` (`servants_id`, `products_id`) VALUES (1, 1);
INSERT INTO `mydb`.`purchases` (`servants_id`, `products_id`) VALUES (1, 3);
INSERT INTO `mydb`.`purchases` (`servants_id`, `products_id`) VALUES (1, 4);
INSERT INTO `mydb`.`purchases` (`servants_id`, `products_id`) VALUES (2, 2);
INSERT INTO `mydb`.`purchases` (`servants_id`, `products_id`) VALUES (2, 3);
INSERT INTO `mydb`.`purchases` (`servants_id`, `products_id`) VALUES (2, 1);
INSERT INTO `mydb`.`purchases` (`servants_id`, `products_id`) VALUES (3, 1);
INSERT INTO `mydb`.`purchases` (`servants_id`, `products_id`) VALUES (3, 3);

SELECT * FROM `mydb`.`servants`;
SELECT * FROM `mydb`.`cats`;
SELECT * FROM `mydb`.`products`;
SELECT * FROM `mydb`.`purchases`;