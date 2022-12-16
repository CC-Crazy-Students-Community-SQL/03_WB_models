-- Inner Join 7 - Wer bekommt den Lachs
SELECT
	concat( catName, " bakam Lachs." ) AS Lachsertrag
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
    INNER JOIN `mydb`.`cats` ON `mydb`.`cats`.`id` = `mydb`.`servants`.`cats_id`
WHERE 
	prodName LIKE "%Lachs%"
;
SELECT
	concat( catName, " bakam den meisten Lachs." ) AS Lachsertrag
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
    INNER JOIN `mydb`.`cats` ON `mydb`.`cats`.`id` = `mydb`.`servants`.`cats_id`
WHERE 
	prodName LIKE "%Lachs%"
GROUP BY
	catName
ORDER BY
	COUNT(prodName) ASC
LIMIT
    1
;