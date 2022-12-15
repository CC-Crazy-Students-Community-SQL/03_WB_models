-- Inner Join 1 - Wer dient wem?
SELECT
	catName AS Herrschaft,
    servantName AS Diener
FROM 
	`mydb`.`cats` INNER JOIN `mydb`.`servants`
ON 
	`mydb`.`cats`.`id` = `mydb`.`servants`.`cats_id`
WHERE 
	-- Wer dient Beauty
		catName = "Beauty";
    -- Wem dient George
		-- servantName = "George"
;