-- Inner Join 2 - Wer kauft für wen was gekauft
SELECT
	servantName AS Diener,
    prodName AS "Von Sandro gekaufte Produkte:"
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
WHERE 
	servantName = "Sandro"
;

-- Inner Join 2 - Wer kauft für wen was gekauft mit CONCAT
SELECT
	concat(servantName, " kauft ", prodName) AS Kaufhandlung
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
WHERE 
	servantName = "Sandro"
;

