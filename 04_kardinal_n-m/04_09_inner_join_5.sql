-- Wer hat das Produkt X gekauft?  
-- Irgendwas mit Lachs / Irgendwas mit Sauce LIKE
-- Spalten --> Diener / Produkt
-- WHERE / LIKE

SELECT 
    servantName AS Diener,
    prodName AS "Irgenwas mit Rind oder Lachs"
FROM 
	`mydb`.`purchases` 
    INNER JOIN `mydb`.`products` ON `mydb`.`products`.`id` = `mydb`.`purchases`.`products_id`
    INNER JOIN `mydb`.`servants` ON `mydb`.`servants`.`id` = `mydb`.`purchases`.`servants_id`
WHERE 
	prodName LIKE "%Lachs%" OR prodName LIKE "%Souce%"
HAVING servantName = "Sandro"
;