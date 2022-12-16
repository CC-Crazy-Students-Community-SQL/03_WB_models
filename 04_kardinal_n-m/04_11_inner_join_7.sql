-- Inner Join 4 - Wieviel Umsatz hat ein Produkt gebracht
SELECT
	concat( prodName, " hat mit ", COUNT( prodName ), " Verkäufen ", SUM( prodPrice ), " Euro eingebracht." ) AS Kaufhandlung
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
GROUP BY
	prodName
ORDER BY 
	prodName ASC
;