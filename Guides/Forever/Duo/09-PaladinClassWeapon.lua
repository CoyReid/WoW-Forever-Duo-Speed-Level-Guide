local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 09 Paladin Class Weapon (22). Previous: 08 Deadmines (20+). Next: 10 Duskwood (22-24).
-- Steps are copied from the reference guides named below, narrowed to Paladin/Warlock.
-- Flags: ERA = copied from a Classic Era/SoD guide (its #xprate/#era/.dungeon tags removed so the steps
--        show on Forever); RESEARCHED = written from Wowhead quest data; TODO coords = no arrow yet.
RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance Human Warlock/Alliance Human Paladin
#group RestedXP Forever Guide (A)
#subgroup Duo Leveling Guide
#name 09 Paladin Class Weapon (22)
#next 10 Duskwood (22-24)

--==============================================================================
-- 09 PALADIN CLASS WEAPON (22)
-- Sources: Zoram Strand steps (1008/1007/1009) from Forever/Alliance-11-20.lua "19-21 Darkshore/Ashenvale";
-- ERA Orb of Soran'ruk (1740) from SoD/Warlock.lua; ERA Stepping Stones (79192) from SoD/Neutral.lua;
-- RESEARCHED: Darnassus BFD quests (1198, 1199), Kor Gem, SFK and Ironforge Test of Righteousness steps.
--==============================================================================
step
    #sticky
    #title Duo notes: Rush Pally Weapon
    #completewith S09_End
    +Goal is to rush Pally class quest weapon for Duskwood questing, start Lock class quest, and grab BFD quests
    +Take boat to Darkshore
    +Split up here very briefly. Goal is one person to get Darnassus BFD quests and other person goes to Astrannar to get Naga quest. All are sharable. Meet up at Zoram strand to do Pally quest along with 2 Zoram Strand quests.
    +Share BFD quests and The Zoram Strand
    +At Zoram Strand Naga heads should be 100% drop rate so it's really just a kill quest
    +Grind to Astrannar. Grab flight path. Turn in The Zoram Strand.
    +Run to SFK and do both Pally and Lock class quest (make sure Pally has water if healing VW)
    +Hearth to SW
    +Pally trade any extra cloth to Lock. Then go to Ironforge turn in and get GIGA weapon
    +Lock stay in SW check if crafting 8 slot wool bags is viable. Using up any remaining linen cloth to level and enough wool cloth to craft bags. Leveling first aid to wool bandages should be a priority over this
    +Meet up in SW to trade bags and fly to Darkshire
-- RESEARCHED (Wowhead Forever quests 1198, 1199): both start in Darnassus. In Search of Thaelrid ends at
-- Argent Guard Thaelrid in BFD; Twilight Falls (10 Twilight Pendants) turns in to Argent Guard Manados. TODO coords.
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawnwatcher Shaedlass|r in Darnassus
    .accept 1198 >> Accept In Search of Thaelrid
    .target Dawnwatcher Shaedlass
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argent Guard Manados|r in Darnassus
    .accept 1199 >> Accept Twilight Falls
    .target Argent Guard Manados
-- Zoram Strand steps copied from Forever/Alliance-11-20.lua "19-21 Darkshore/Ashenvale" (a Hunter guide; steps themselves are ungated).
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .accept 1008 >> Accept The Zoram Strand
step
    #label StatuetteStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .accept 1007 >> Accept The Ancient Statuette
step
    #completewith nagas
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_Don't go out of your way to complete this yet|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto 1440/1,881.13,3879.57
    >>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 22,The Ancient Statuette RP
    .accept 1009 >> Accept Ruuzel
step
    .goto 1440/1,1323.55,4159.35
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto 1440/1,1323.55,4159.35
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    .goto 1440/1,1296.33,4088.67,0
    .goto 1440/1,866.14,4013.71,0
    .goto 1440/1,843.07,3863.42,0
    .goto 1440/1,942.84,3710.83,0
    .goto 1440/1,1072.01,3518.64,0
    .goto 1440/1,1296.33,4088.67,70,0
    .goto 1440/1,866.14,4013.71,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,1072.01,3518.64,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,866.14,4013.71,70,0
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1009 >> Turn in Ruuzel
-- RESEARCHED (Wowhead Forever quest 1654): the Paladin needs a Purified Kor Gem. Duo notes place this at
-- Zoram Strand; who purifies it in Forever is not confirmed (Thundris Windweaver coords from Forever guides).
step << Paladin
    #optional
    .goto 1439,37.394,40.128
    +|cRXP_WARN_Test of Righteousness: get the|r |cRXP_LOOT_Purified Kor Gem|r |cRXP_WARN_(verify how in beta)|r
    .isOnQuest 1654
    .target Thundris Windweaver
-- ERA (SoD): Orb of Soran'ruk steps copied from SoD/Warlock.lua (a Warlock-only guide, so gated << Warlock here).
-- SoD-only follow-ups 78680/78681 removed. Doan Karhan is in The Barrens.
step << Warlock
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Accept The Orb of Soran'ruk
    .target Doan Karhan
step << Warlock
    .train 403938,1
    >>Kill the |cRXP_ENEMY_Twilight Acolytes|r near the BFD raid entrance. Loot them for the |cRXP_LOOT_Soran'ruk Fragments|r
    *|cRXP_WARN_The |cRXP_WARN_Twilight Acolyte|r inside the raid before the 5th boss drop them as well|r
    .goto Ashenvale,14.5,14.3
    .complete 1740,1 --3/3 Soran'ruk Fragment
    .mob Twilight Acolyte
step << Warlock
    .train 403938,1
    >>Kill |cRXP_ENEMY_Shadowfang Darksouls|r inside the |cRXP_WARN_Shadowfang Keep dungeon (go right after |cRXP_ENEMY_Baron Silverlaine|r)|r. Loot them for the |cRXP_LOOT_Large Soran'ruk Fragment|r
    .complete 1740,2 --1/1 Large Soran'ruk Fragment
    .mob Shadowfang Darksoul
step << Warlock
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .turnin 1740 >>Turn in The Orb of Soran'ruk
    .target Doan Karhan
-- ERA (SoD): Stepping Stones steps copied from SoD/Neutral.lua; SoD pre-req 79008 and follow-up 79980 removed.
-- AUDIT: SoD turns this in at Stonetalon Mountains; duo notes have it in the Barrens leg.
step
    .goto The Barrens,46.361,73.904
    >>Click the |cRXP_PICK_Burned-Out Remains|r on the ground
    .accept 79192 >> Accept Stepping Stones
step
    .goto Stonetalon Mountains,40.748,52.576
    >>Click the |cRXP_PICK_Pocket Litter|r on the box
    .turnin 79192 >> Turn in Stepping Stones
-- RESEARCHED (Wowhead Forever quests 1654 -> 1806): turn in the four items to Jordan Stilwell, then
-- The Test of Righteousness (1806) rewards the weapon. Jordan's Smithing Hammer: duo notes say SFK.
-- Jordan Stilwell coords copied from Classic-Alliance-11-20.lua (outside the Ironforge gates).
step << Paladin
    #optional
    #completewith S09_JordanTurnin
    +|cRXP_WARN_Test of Righteousness: get|r |cRXP_LOOT_Jordan's Smithing Hammer|r |cRXP_WARN_in Shadowfang Keep (verify in beta)|r
    .isOnQuest 1654
step << Paladin
    #label S09_JordanTurnin
    .goto Dun Morogh,52.5,36.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1654 >> Turn in The Test of Righteousness
    .accept 1806 >> Accept The Test of Righteousness
    .target Jordan Stilwell
step << Paladin
    .goto Dun Morogh,52.5,36.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jordan Stilwell|r
    .turnin 1806 >> Turn in The Test of Righteousness
    .target Jordan Stilwell
step -- end of section 09
    #label S09_End
]])
