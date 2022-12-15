-- Inner Join 4 - Wieviel Geld hat ein Diner ausgegeben
SELECT
	concat( servantName, " bezahlte ", SUM( prodPrice ), " Euro für ", COUNT( prodName ), "Prdoukte." ) AS Kaufhandlung
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
WHERE 
	servantName = "Sandro"
;

-- Inner Join 4 - Beispiel ohne CONCAT
SELECT 
    servantName AS Diener, 						-- organisch
    count(servantName) AS Artikelanzahl, 		-- aggregiert / f()
    sum(prodPrice) AS Gesamtkosten 				-- aggregiert / f()
FROM 
	`mydb`.`purchases` 
	INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
GROUP BY servantName
HAVING servantName = "Sandro"
;