-- Inner Join Aufgabe - Wer bekommt den Lachs mit VIEWS
DROP VIEW IF EXISTS `mydb`.`salmon`;
CREATE VIEW  `mydb`.`salmon` AS
	SELECT
		catName,
        cats_id,
        prodName
	FROM 
		`mydb`.`purchases` 
		INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
		INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
		INNER JOIN `mydb`.`cats` ON `mydb`.`cats`.`id` = `mydb`.`servants`.`cats_id`
	;
;

SELECT
	concat( catName, " bakam Lachs." ) AS Lachsertrag
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`salmon` 
WHERE 
	prodName LIKE "%Lachs%"
;
SELECT
	concat( catName, " bakam den meisten Lachs." ) AS Lachsertrag
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`salmon` 
WHERE 
	prodName LIKE "%Lachs%"
GROUP BY
	catName
ORDER BY
	COUNT(prodName) ASC
LIMIT
    1
;