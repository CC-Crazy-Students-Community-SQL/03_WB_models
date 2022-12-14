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