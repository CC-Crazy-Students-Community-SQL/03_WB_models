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