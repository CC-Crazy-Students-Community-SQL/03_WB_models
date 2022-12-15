-- Inner Join 3 - X ist der Diener von Y seit wie lange

-- Beispiel 1 - Limit quick and dirty
SELECT
	CONCAT ( "1: ", servantName, " dient ", catName, " seit ", servantTime, " Jahren am längsten." ) AS Dienstverhältnis
FROM 
	`mydb`.`cats` INNER JOIN `mydb`.`servants`
ON 
	`mydb`.`cats`.`id` = `mydb`.`servants`.`cats_id`
ORDER BY
	`mydb`.`servants`.`servantTime` DESC
LIMIT
	1
;

-- Beispiel 2 - MAX als Subquery
SELECT
	CONCAT ( "2: ", servantName, " dient ", catName, " seit ", servantTime, " Jahren am längsten." ) AS Dienstverhältnis
FROM 
	`mydb`.`cats` INNER JOIN `mydb`.`servants`
ON 
	`mydb`.`cats`.`id` = `mydb`.`servants`.`cats_id`
WHERE
	servantTime = (
		SELECT
			MAX( servantTime ) AS Zeit
		FROM
			`mydb`.`cats` INNER JOIN `mydb`.`servants`
	)
;