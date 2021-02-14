/* Make it so that all vendors will buy anything from players */
UPDATE `ace_world`.`weenie_properties_int` AS A
INNER JOIN 
	(
    SELECT `weenie`.`class_Id`
	FROM `ace_world`.`weenie`
	WHERE `type` = 12
	) AS B ON A.`object_id` = B.`class_Id`
SET
	`value` = 1613561775
WHERE A.`type` = 74 
AND `value` != 1613561775;
