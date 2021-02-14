/* This give all "creature" (weenie type 10) quest givers a green Aegis shield so that they are easy to find
   while leaving vendors and other types of quest givers without the shield so that there quests are secret 
   and are harder to find giving more since of acomplishment when you discover theses. */

/* If the questgivers have the green Aegis sheild delete it */
DELETE
FROM `ace_world`.`weenie_properties_create_list`
WHERE `destination_Type` = 2
AND `weenie_Class_Id` = 2630
AND `stack_Size`= 0
AND `palette` = 88
AND `shade` = 0
AND `try_To_Bond` = FALSE 
AND `object_id` IN 
(
 SELECT DISTINCT 
	a.`class_Id` AS object_Id
  FROM ace_world.weenie a 
  INNER JOIN 
	(
		SELECT DISTINCT a.object_Id, c.`name`
		FROM ace_world.weenie_properties_emote a
		LEFT JOIN ace_world.weenie_properties_emote_action b
		ON a.id = b.emote_Id
		LEFT JOIN ace_world.quest c 
		ON b.message = c.`name`	
		WHERE b.`type` in (21,22)
	) b ON a.class_Id = b.object_id
  where `name` is not null AND a.`type` = 10
)
;

/* give the green Aegis to these quest givers -- only "Creature", vendors and other could secretly be holding a quest */
INSERT INTO `ace_world`.`weenie_properties_create_list`
(`object_Id`,
`destination_Type`,
`weenie_Class_Id`,
`stack_Size`,
`palette`,
`shade`,
`try_To_Bond`)
SELECT DISTINCT 
	a.`class_Id` AS object_Id
    ,2 AS destination_Type
    ,2630 AS weenie_Class_Id /* green Aegis for Wield */
    ,0 AS stack_Size
    ,88 AS palette
    ,0 AS shade
    ,False AS try_To_Bond
FROM ace_world.weenie a 
INNER JOIN 
	(
		SELECT DISTINCT a.object_Id, c.`name`
		FROM ace_world.weenie_properties_emote a
		LEFT JOIN ace_world.weenie_properties_emote_action b
		ON a.id = b.emote_Id
		LEFT JOIN ace_world.quest c 
		ON b.message = c.`name`	
		WHERE b.`type` in (21,22)
	) b ON a.class_Id = b.object_id
where `name` is not null AND a.`type` = 10; -- 10 is a "creature" 12 is a "vender" ect, only want creatures... ;
