/* 
   Created By: Jon Sampson
   Site: https://www.asheron4fun.com
   Discord: https://discord.gg/afnQNXj
   Date: 2021-02-13
   Notes: Removing old spell trainers so that I can replace them with custome.
   This is Edward Razoric - will be placed in the house they are in fromt of and will give/sell spells
   How to use: Add the entire contents of the "Spell Instructor upgrades" into your server contents folder
   example: C:\ACE\Server\Content\Spell Instructor upgrades
*/

-- *******************************************************************
-- Delete old spell trainers so I can replace them with my custom ones
-- *******************************************************************
DELETE FROM landblock_instance WHERE weenie_Class_Id = 53381;
DELETE FROM landblock_instance WHERE weenie_Class_Id = 53382;
DELETE FROM landblock_instance WHERE weenie_Class_Id = 53383;
DELETE FROM landblock_instance WHERE weenie_Class_Id = 53384;
DELETE FROM landblock_instance WHERE weenie_Class_Id = 53385;
