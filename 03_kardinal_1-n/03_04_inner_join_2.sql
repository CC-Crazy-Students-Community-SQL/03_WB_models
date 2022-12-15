-- Inner Join 2 - Wieviele Kinder hat die Katze
SELECT
	catName AS Katze,					-- nicht aggregiert, organisch
    COUNT(catName) AS Kinderzahl		-- aggregiert, funktion
FROM 
	`mydb`.`cats` INNER JOIN `mydb`.`kitten`
ON 
	`mydb`.`cats`.`id` = `mydb`.`kitten`.`cats_id`
GROUP BY
	catName								-- WICHTIG bei Kombination von aggregierten und unaggregierten aNgaben
;