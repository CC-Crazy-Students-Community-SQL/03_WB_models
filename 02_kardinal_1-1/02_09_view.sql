DROP VIEW IF EXISTS `mydb`.`maxTime`;

CREATE VIEW `mydb`.`maxTime` AS
	SELECT
		MAX( servantTime ) AS Zeit
	FROM
		`mydb`.`cats` INNER JOIN `mydb`.`servants`
;

SELECT * FROM `mydb`.`maxTime`;