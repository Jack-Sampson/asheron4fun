/* 
   Created By: Jon Sampson
   Site: https://www.asheron4fun.com
   Discord: https://discord.gg/afnQNXj
   Date: 2021-02-12
   Notes: Creating currency to be used to buy level one spells from the new Professor's of Magic
   also released with this content expansion
   How to use: Add the entire contents of the "Spell Instructor upgrades" into your server contents folder
   example: C:\ACE\Server\Content\Spell Instructor upgrades
*/

DELETE FROM `weenie` WHERE `class_Id` = 4000013;

INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4000013, 'Jon4000013-lvl4SpellVoucher', 51, '2021-02-12 00:00:00') /* Stackable */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4000013,   1,        128) /* ItemType - Misc */
     , (4000013,   5,          1) /* EncumbranceVal */
     , (4000013,  11,       1000) /* MaxStackSize */
     , (4000013,  12,          1) /* StackSize */
     , (4000013,  13,          1) /* StackUnitEncumbrance */
	 , (4000013,  14,          1) /* StackUnitMass */
     , (4000013,  15,          0) /* StackUnitValue */
     , (4000013,  16,          1) /* ItemUseable - No */
     , (4000013,  19,          0) /* Value */
     , (4000013,  33,          1) /* Bonded - Bonded */
     , (4000013,  65,        101) /* Placement - Resting */
     , (4000013,  93,       1044) /* PhysicsState - Ethereal, IgnoreCollisions, Gravity */
     , (4000013, 114,          1) /* Attuned - Attuned */;

INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4000013,   1, False) /* Stuck */
     , (4000013,  11, True ) /* IgnoreCollisions */
     , (4000013,  13, True ) /* Ethereal */
     , (4000013,  14, True ) /* GravityStatus */
     , (4000013,  19, True ) /* Attackable */
     , (4000013,  69, False) /* IsSellable */;

INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4000013,   1, 'Level 4 Spell Voucher') /* Name */
     , (4000013,  15, 'A level four spell voucher. This may be turned in at any Spell Instructor.') /* ShortDesc */;

INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4000013,   1,   33554659) /* Setup */
     , (4000013,   3,  536870932) /* SoundTable */
     , (4000013,   8,  100692712) /* Icon */
     , (4000013,  22,  872415275) /* PhysicsEffectTable */;
