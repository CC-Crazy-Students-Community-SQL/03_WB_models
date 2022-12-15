-- Inner Join 2 - X ist der Diener von Y
SELECT
	CONCAT ( servantName, " dient ", catName, "." ) AS Dienstverhältnis
FROM 
	`mydb`.`cats` INNER JOIN `mydb`.`servants`
ON 
	`mydb`.`cats`.`id` = `mydb`.`servants`.`cats_id`
;