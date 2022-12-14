DROP DATABASE IF EXISTS mydb;
CREATE DATABASE IF NOT EXISTS mydb;

DROP TABLE IF EXISTS `mydb`.`servants`;
CREATE TABLE IF NOT EXISTS `mydb`.`servants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `servantName` VARCHAR(45) NOT NULL,
  `servantTime` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

DROP TABLE IF EXISTS `mydb`.`products`;
CREATE TABLE IF NOT EXISTS `mydb`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `prodName` VARCHAR(45) NOT NULL,
  `prodPrice` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

DROP TABLE IF EXISTS `mydb`.`prod_has_servants`;
CREATE TABLE IF NOT EXISTS `mydb`.`prod_has_servants` (
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

INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`) VALUES (default, "Mia", 7);
INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`) VALUES (default, "Meik", 2);
INSERT INTO `mydb`.`servants` (`id`, `servantName`, `servantTime`) VALUES (default, "Fred", 4);

INSERT INTO `mydb`.`products` (`id`, `prodName`, `prodPrice`) VALUES (default, "Whiskas | Lachs", "2,75");
INSERT INTO `mydb`.`products` (`id`, `prodName`, `prodPrice`) VALUES (default, "Whiskas | Huhn", "2,80");
INSERT INTO `mydb`.`products` (`id`, `prodName`, `prodPrice`) VALUES (default, "Felix | Rind", "2,20");
INSERT INTO `mydb`.`products` (`id`, `prodName`, `prodPrice`) VALUES (default, "Felix | Schwein", "2,00");

INSERT INTO `mydb`.`prod_has_servants` (`servants_id`, `products_id`) VALUES (1, 1);
INSERT INTO `mydb`.`prod_has_servants` (`servants_id`, `products_id`) VALUES (1, 3);
INSERT INTO `mydb`.`prod_has_servants` (`servants_id`, `products_id`) VALUES (1, 4);
INSERT INTO `mydb`.`prod_has_servants` (`servants_id`, `products_id`) VALUES (2, 2);
INSERT INTO `mydb`.`prod_has_servants` (`servants_id`, `products_id`) VALUES (2, 3);
INSERT INTO `mydb`.`prod_has_servants` (`servants_id`, `products_id`) VALUES (2, 1);
INSERT INTO `mydb`.`prod_has_servants` (`servants_id`, `products_id`) VALUES (3, 1);
INSERT INTO `mydb`.`prod_has_servants` (`servants_id`, `products_id`) VALUES (3, 3);

SELECT * FROM `mydb`.`servants`;
SELECT * FROM `mydb`.`products`;
SELECT * FROM `mydb`.`prod_has_servants`;