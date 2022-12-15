-- Inner Join 4 - Wie oft wurde ein Produkt gekauft
SELECT
	concat( prodName, " wurde ", COUNT( prodName ), " mal gekauft." ) AS Kaufhandlung
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
GROUP BY
	prodName
ORDER BY 
	prodName ASC
;
