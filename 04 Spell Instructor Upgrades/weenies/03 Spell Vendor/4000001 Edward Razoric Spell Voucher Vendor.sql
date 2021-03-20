/* 
   Created By: Jon Sampson
   Site: https://www.asheron4fun.com
   Discord: https://discord.gg/afnQNXj
   Date: 2021-02-12
   Notes: Creating new Vendor of Magic Vouchers which will sell/give you a voucher to handed in.
   This is Edward Razoric - a really nice person who like to talk way too much.
   How to use: Add the entire contents of the "Spell Instructor upgrades" into your server contents folder
   example: C:\ACE\Server\Content\Spell Instructor upgrades
*/

-- ****************************************************
-- Delete in case it exists
-- ****************************************************
DELETE FROM `weenie` WHERE `class_Id` = 4000001;

-- ****************************************************
-- Create the weenie
-- ****************************************************
INSERT INTO `weenie` (`class_Id`, `class_Name`, `type`, `last_Modified`)
VALUES (4000001, 'Jon4000001-EdwardRazoric', 12, '2020-07-01 10:00:00') /* Vendor */;

INSERT INTO `weenie_properties_int` (`object_Id`, `type`, `value`)
VALUES (4000001,   1,         16) /* ItemType - Creature */
     , (4000001,   2,         31) /* CreatureType - Human */
     , (4000001,   6,         -1) /* ItemsCapacity */
     , (4000001,   7,         -1) /* ContainersCapacity */
     , (4000001,   8,        120) /* Mass */
     , (4000001,  16,         32) /* ItemUseable - Remote */
     , (4000001,  25,         76) /* Level */
     , (4000001,  27,          0) /* ArmorType - None */
     , (4000001,  74,     831488) /* MerchandiseItemTypes - SpellComponents, Writable, Caster, PromissoryNote, ManaStone */
     , (4000001,  75,          0) /* MerchandiseMinValue */
     , (4000001,  76,     100000) /* MerchandiseMaxValue */
     , (4000001,  93,    2098200) /* PhysicsState - ReportCollisions, IgnoreCollisions, Gravity, ReportCollisionsAsEnvironment */
     , (4000001, 126,       2000) /* VendorHappyMean */
     , (4000001, 127,       1000) /* VendorHappyVariance */
     , (4000001, 133,          4) /* ShowableOnRadar - ShowAlways */
     , (4000001, 134,         16) /* PlayerKillerStatus - RubberGlue */
     , (4000001, 146,        346) /* XpOverride */;
	 
INSERT INTO `weenie_properties_bool` (`object_Id`, `type`, `value`)
VALUES (4000001,   1, True ) /* Stuck */
     , (4000001,   6, False) /* AiUsesMana */
     , (4000001,  11, True ) /* IgnoreCollisions */
     , (4000001,  12, True ) /* ReportCollisions */
     , (4000001,  13, False) /* Ethereal */
     , (4000001,  14, True ) /* GravityStatus */
     , (4000001,  19, False) /* Attackable */
     , (4000001,  39, True ) /* DealMagicalItems */
     , (4000001,  41, True ) /* ReportCollisionsAsEnvironment */
     , (4000001,  50, True ) /* NeverFailCasting */
     , (4000001,  51, True ) /* VendorService */
     , (4000001,  52, True ) /* AiImmobile */;
	 
INSERT INTO `weenie_properties_float` (`object_Id`, `type`, `value`)
VALUES (4000001,   1,       5) /* HeartbeatInterval */
     , (4000001,   2,       0) /* HeartbeatTimestamp */
     , (4000001,   3,    0.16) /* HealthRate */
     , (4000001,   4,       5) /* StaminaRate */
     , (4000001,   5,       1) /* ManaRate */
     , (4000001,  11,     300) /* ResetInterval */
     , (4000001,  13,     0.9) /* ArmorModVsSlash */
     , (4000001,  14,       1) /* ArmorModVsPierce */
     , (4000001,  15,     1.1) /* ArmorModVsBludgeon */
     , (4000001,  16,     0.4) /* ArmorModVsCold */
     , (4000001,  17,     0.4) /* ArmorModVsFire */
     , (4000001,  18,       1) /* ArmorModVsAcid */
     , (4000001,  19,     0.6) /* ArmorModVsElectric */
     , (4000001,  37,     0.9) /* BuyPrice */
     , (4000001,  38,       1) /* SellPrice */
     , (4000001,  54,       3) /* UseRadius */
     , (4000001,  64,       1) /* ResistSlash */
     , (4000001,  65,       1) /* ResistPierce */
     , (4000001,  66,       1) /* ResistBludgeon */
     , (4000001,  67,       1) /* ResistFire */
     , (4000001,  68,       1) /* ResistCold */
     , (4000001,  69,       1) /* ResistAcid */
     , (4000001,  70,       1) /* ResistElectric */
     , (4000001,  71,       1) /* ResistHealthBoost */
     , (4000001,  72,       1) /* ResistStaminaDrain */
     , (4000001,  73,       1) /* ResistStaminaBoost */
     , (4000001,  74,       1) /* ResistManaDrain */
     , (4000001,  75,       1) /* ResistManaBoost */
     , (4000001, 104,      10) /* ObviousRadarRange */
     , (4000001, 125,       1) /* ResistHealthDrain */;
	 
INSERT INTO `weenie_properties_string` (`object_Id`, `type`, `value`)
VALUES (4000001,   1, 'Edward Razoric') /* Name */
     , (4000001,   3, 'Male') /* Sex */
     , (4000001,   4, 'Aluvian') /* HeritageGroup */
     , (4000001,   5, 'Master Trader') /* Template */
     , (4000001,  24, 'Arwic') /* TownName */;
	 
INSERT INTO `weenie_properties_d_i_d` (`object_Id`, `type`, `value`)
VALUES (4000001,   1,   33554433) /* Setup */
     , (4000001,   2,  150994945) /* MotionTable */
     , (4000001,   3,  536870913) /* SoundTable */
     , (4000001,   4,  805306368) /* CombatTable */
     , (4000001,   8,  100667446) /* Icon */;
	 
INSERT INTO `weenie_properties_attribute` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`)
VALUES (4000001,   1, 100, 0, 0) /* Strength */
     , (4000001,   2, 110, 0, 0) /* Endurance */
     , (4000001,   3,  60, 0, 0) /* Quickness */
     , (4000001,   4, 120, 0, 0) /* Coordination */
     , (4000001,   5,  20, 0, 0) /* Focus */
     , (4000001,   6,  20, 0, 0) /* Self */;

INSERT INTO `weenie_properties_attribute_2nd` (`object_Id`, `type`, `init_Level`, `level_From_C_P`, `c_P_Spent`, `current_Level`)
VALUES (4000001,   1,    50, 0, 0, 105) /* MaxHealth */
     , (4000001,   3,    45, 0, 0, 155) /* MaxStamina */
     , (4000001,   5,    25, 0, 0, 45) /* MaxMana */;

INSERT INTO `weenie_properties_body_part` (`object_Id`, `key`, `d_Type`, `d_Val`, `d_Var`, `base_Armor`, `armor_Vs_Slash`, `armor_Vs_Pierce`, `armor_Vs_Bludgeon`, `armor_Vs_Cold`, `armor_Vs_Fire`, `armor_Vs_Acid`, `armor_Vs_Electric`, `armor_Vs_Nether`, `b_h`, `h_l_f`, `m_l_f`, `l_l_f`, `h_r_f`, `m_r_f`, `l_r_f`, `h_l_b`, `m_l_b`, `l_l_b`, `h_r_b`, `m_r_b`, `l_r_b`)
VALUES (4000001,  0,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0, 0.33,    0,    0) /* Head */
     , (4000001,  1,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0, 0.44, 0.17,    0) /* Chest */
     , (4000001,  2,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0,    0, 0.17,    0) /* Abdomen */
     , (4000001,  3,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 1, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0, 0.23, 0.03,    0) /* UpperArm */
     , (4000001,  4,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0,    0,  0.3,    0) /* LowerArm */
     , (4000001,  5,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 2,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0,    0,  0.2,    0) /* Hand */
     , (4000001,  6,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18,    0, 0.13, 0.18) /* UpperLeg */
     , (4000001,  7,  4,  0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6,    0,    0,  0.6) /* LowerLeg */
     , (4000001,  8,  4,  2, 0.75,    0,    0,    0,    0,    0,    0,    0,    0,    0, 3,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22,    0,    0, 0.22) /* Foot */;
	 
INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (4000001,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 1 /* Open */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Plenty of spell vouchers for sale here!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (4000001,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 2 /* Close */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Good luck in your travels, friend.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (4000001,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 3 /* Sell */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'Thank you.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (4000001,  2 /* Vendor */,    0.8, NULL, NULL, NULL, NULL, 4 /* Buy */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,  10 /* Tell */, 0, 1, NULL, 'No more components, or that dreaded research!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (4000001,  2 /* Vendor */,  0.125, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767239 /* Wave */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (4000001,  2 /* Vendor */,   0.25, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767229 /* BowDeep */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (4000001,  2 /* Vendor */,  0.375, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767238 /* Shrug */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO `weenie_properties_emote` (`object_Id`, `category`, `probability`, `weenie_Class_Id`, `style`, `substyle`, `quest`, `vendor_Type`, `min_Health`, `max_Health`)
VALUES (4000001,  2 /* Vendor */,    0.5, NULL, NULL, NULL, NULL, 5 /* Heartbeat */, NULL, NULL);

SET @parent_id = LAST_INSERT_ID();

INSERT INTO `weenie_properties_emote_action` (`emote_Id`, `order`, `type`, `delay`, `extent`, `motion`, `message`, `test_String`, `min`, `max`, `min_64`, `max_64`, `min_Dbl`, `max_Dbl`, `stat`, `display`, `amount`, `amount_64`, `hero_X_P_64`, `percent`, `spell_Id`, `wealth_Rating`, `treasure_Class`, `treasure_Type`, `p_Script`, `sound`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`, `obj_Cell_Id`, `origin_X`, `origin_Y`, `origin_Z`, `angles_W`, `angles_X`, `angles_Y`, `angles_Z`)
VALUES (@parent_id,  0,   5 /* Motion */, 0, 1, 318767235 /* Nod */, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- *****************************************************************
-- Stuff to sell/give or wear
-- *****************************************************************
INSERT INTO `weenie_properties_create_list` (`object_Id`, `destination_Type`, `weenie_Class_Id`, `stack_Size`, `palette`, `shade`, `try_To_Bond`)
VALUES (4000001, 2,  8636,  0, 0, 1, False) /* Create Hoory Mattekar Robe (8636) for Wield */
	 , (4000001, 4, 15268, -1, 0, 0, False) /* Create Foci of Enchantment (15268) for Shop */
	 , (4000001, 4, 15269, -1, 0, 0, False) /* Create Foci of Artifice (15269) for Shop */
     , (4000001, 4, 15271, -1, 0, 0, False) /* Create Foci of Strife (15271) for Shop */
	 , (4000001, 4, 15270, -1, 0, 0, False) /* Create Foci of Verdancy (15270) for Shop */
	 , (4000001, 4, 43173, -1, 0, 0, False) /* Create Foci of Shadow (43173) for Shop */
	 , (4000001, 4,   691, -1, 0, 0, False) /* Create Lead Scarab (691) for Shop */
     , (4000001, 4,   689, -1, 0, 0, False) /* Create Iron Scarab (689) for Shop */
     , (4000001, 4,   686, -1, 0, 0, False) /* Create Copper Scarab (686) for Shop */
     , (4000001, 4,   688, -1, 0, 0, False) /* Create Silver Scarab (688) for Shop */
	 , (4000001, 4,   687, -1, 0, 0, False) /* Create Gold Scarab (687) for Shop */
	 , (4000001, 4,  00690, -1, 0, 0, False) /* Create Pyreal Scarab (00690) for Shop */
	 , (4000001, 4,  8897, -1, 0, 0, False) /* Create Platinum Scarab (8897) for Shop */
     , (4000001, 4, 20631, -1, 0, 0, False) /* Create Prismatic Taper (20631) for Shop */
	 , (4000001, 4, 4000010, -1, 0, 0, False) /* Create Level 1 Spell Voucher (4000010) for Shop */
	 , (4000001, 4, 4000011, -1, 0, 0, False) /* Create Level 2 Spell Voucher (4000011) for Shop */
	 , (4000001, 4, 4000012, -1, 0, 0, False) /* Create Level 3 Spell Voucher (4000012) for Shop */
	 , (4000001, 4, 4000013, -1, 0, 0, False) /* Create Level 4 Spell Voucher (4000013) for Shop */
	 , (4000001, 4, 4000014, -1, 0, 0, False) /* Create Level 5 Spell Voucher (4000014) for Shop */
	 , (4000001, 4, 4000015, -1, 0, 0, False) /* Create Level 6 Spell Voucher (4000015) for Shop */
	 , (4000001, 4, 4000016, -1, 0, 0, False) /* Create Level 7 Spell Voucher (4000016) for Shop */
	 , (4000001, 4,  2621, -1, 0, 0, False) /* Create Trade Note (100) (2621) for Shop */
     , (4000001, 4,  2622, -1, 0, 0, False) /* Create Trade Note (500) (2622) for Shop */
     , (4000001, 4,  2623, -1, 0, 0, False) /* Create Trade Note (1,000) (2623) for Shop */
     , (4000001, 4,  2624, -1, 0, 0, False) /* Create Trade Note (5,000) (2624) for Shop */
     , (4000001, 4,  2625, -1, 0, 0, False) /* Create Trade Note (10,000) (2625) for Shop */
     , (4000001, 4,  2626, -1, 0, 0, False) /* Create Trade Note (50,000) (2626) for Shop */
     , (4000001, 4,  2627, -1, 0, 0, False) /* Create Trade Note (100,000) (2627) for Shop */
     , (4000001, 4, 20628, -1, 0, 0, False) /* Create Trade Note (150,000) (20628) for Shop */
     , (4000001, 4, 20629, -1, 0, 0, False) /* Create Trade Note (200,000) (20629) for Shop */
     , (4000001, 4, 20630, -1, 0, 0, False) /* Create Trade Note (250,000) (20630) for Shop */
	 , (4000001, 4, 136, -1, 39, 1, False) /* Create Pack (136) for Shop */
	 , (4000001, 4, 4000023, -1, 39, 1, False) /* Create 64 slot Pack (4000023) for Shop */
	 , (4000001, 4, 27331, -1, 0, 0, False) /* Create Minor Mana Stone (27331) for Shop */
     , (4000001, 4,  2434, -1, 0, 0, False) /* Create Lesser Mana Stone (2434) for Shop */
     , (4000001, 4,  2435, -1, 0, 0, False) /* Create Mana Stone (2435) for Shop */
     , (4000001, 4,  4612, -1, 0, 0, False) /* Create Tiny Mana Charge (4612) for Shop */
     , (4000001, 4,  4613, -1, 0, 0, False) /* Create Small Mana Charge (4613) for Shop */
     , (4000001, 4,  4614, -1, 0, 0, False) /* Create Moderate Mana Charge (4614) for Shop */
     , (4000001, 4,  4615, -1, 0, 0, False) /* Create High Mana Charge (4615) for Shop */
     , (4000001, 4,  4616, -1, 0, 0, False) /* Create Great Mana Charge (4616) for Shop */
	 , (4000001, 4,  8283, -1, 0, 0, False) /* Create Splitting Tool (8283) for Shop */;
	 
