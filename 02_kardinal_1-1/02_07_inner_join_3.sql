-- Inner Join 3 - X ist der Diener von Y seit wie lange
SELECT
	CONCAT ( servantName, " dient ", catName, " seit ", servantTime, " Jahren." ) AS Dienstverhältnis
FROM 
	`mydb`.`cats` INNER JOIN `mydb`.`servants`
ON 
	`mydb`.`cats`.`id` = `mydb`.`servants`.`cats_id`
;