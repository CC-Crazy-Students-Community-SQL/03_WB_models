-- Inner Join 1 - X ist Elternteil von von Y
SELECT
	CONCAT ( catName, " ist Elternteil von ", kittenName, "." ) AS Familienverhältnis
FROM 
	`mydb`.`cats` INNER JOIN `mydb`.`kitten`
ON 
	`mydb`.`cats`.`id` = `mydb`.`kitten`.`cats_id`
;