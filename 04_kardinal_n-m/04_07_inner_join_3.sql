-- Inner Join 3 - Wieveiel Produkte kaufte ein Diener
SELECT
	concat(servantName, " kaufte ", COUNT(prodName), " Produkte.") AS Kaufhandlung
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
WHERE 
	servantName = "Sandro"
;

-- Inner Join 3 - Beispiel 2 ohne CONCAT
SELECT
	concat(servantName, " kaufte ", COUNT(prodName), " Produkte.") AS Kaufhandlung
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
WHERE 
	servantName = "Sandro"
;