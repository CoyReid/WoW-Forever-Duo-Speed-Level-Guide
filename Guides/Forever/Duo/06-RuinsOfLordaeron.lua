local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 06 Ruins of Lordaeron (17+). Previous: 05 Darkshore (14-17). Next: 07 Westfall/Redridge/Loch Modan (17-20+).
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
#name 06 Ruins of Lordaeron (17+)
#next 07 Westfall/Redridge/Loch Modan (17-20+)

--==============================================================================
-- 06 RUINS OF LORDAERON (17+)
-- Source: Forever/dungeon/Alliance-11-20.lua "16-18 Ruins of Lordaeron".
-- AUDIT: that guide travels from Ironforge via Wetlands; the duo arrives by boat from Auberdine.
--==============================================================================
step
    #sticky
    #title Duo notes: Ruins of Lordaeron
    #completewith S06_End
    +Boat from Auberdine to Wetlands, stay on boat to get to Southshore.
    +POTENTIALLY GET OFF HERE AND SLEEP, CONTINUE DAY 2
    +Run on road until human camp in West Hillsbrad, then go north past Dalaran, swim across water to UC
    +4 quests: 1 at front of dungeon (turn in at front of dungeon)
    +Can turn this in after second boss, after a wipe, or at end (probably wipe on purpose for speed)
    +1 dropped by random mobs (turn in SW)
    +1 on ground near final boss (turn in SW)
    +1 up on ramparts after final boss (turn in SW)
    +Enemies pop up out of ground at parts
    +2 gauntlets, 1 for bottom left boss and 1 before last boss
    +Warn healer to spam heal between waves or probably wipe
    +Go up tower near last boss to get crest
    +Check to make sure 1st quest at front of dungeon is turned in before hearthing out, see notes above
step
    #completewith EnterRoL
    +|cRXP_WARN_You will now run Ruins of Lordaeron|r
    >>|cRXP_WARN_All the quests are picked up inside the dungeon|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_If you do not have the Wetlands flight path, skip this step|r
    .fly Wetlands >> Fly to Wetlands
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >> |cRXP_WARN_Exit Ironforge. Travel to the Dun Morogh -> Wetlands deathskip location|r
    .zoneskip Wetlands
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    .subzone 207 >>|cRXP_WARN_Climb the mountain, then walk down past the jagged pattern until your zone changes to the Wetlands|r
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1415/0,254.0285,-4708.3416,-1
    .goto 1437/0,-874.700,-3341.400,-1
    >>|cRXP_WARN_Jump off the mountain toward the north or north-west|r
    .deathskip >> Die and respawn at the Baradin Bay |cRXP_FRIENDLY_Spirit Healer|r
    .target Spirit Healer
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >> Swim over to Menethil Harbor
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Get the Wetlands flight path
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >> Take the boat to Southshore
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Get the Southshore flight path
    .target Darla Harris
    .subzoneskip 16611 -- ruins of lordaeron
step
    #label EnterRoL
    .goto 1424/0,-272.000,-381.800,100,0
    .goto 1424/0,-47.400,-249.400,100,0
    .goto 1416/0,68.400,-46.200,130,0
    .goto 1416/0,45.300,257.100,150,0
    .goto 1416/0,-54.700,812.600,100,0
    .goto 1420/0,7.600,1530.500,70,0
    .goto 1420/0,-21.800,1668.600,20,0
    .goto 1420/0,-56.600,1692.000,10,0
    .goto 1420/0,-55.200,1779.600,15,0
    .goto 1420/0,6.300,1791.500,25,0
    .goto 1420/0,4.300,1847.500,10,0
    .goto 1458/0,238.400,1872.200,20,0
    .goto 1458/0,170.700,1804.700
    .subzone 16611 >>Travel to the Ruins of Lordaeron in Undercity. Enter the dungeon
    >>|cRXP_WARN_Be careful of higher level |cRXP_ENEMY_Cats|r, |cRXP_ENEMY_Bears|r, |cRXP_ENEMY_Spiders|r or |cRXP_ENEMY_Murlocs|r as you run over|r
    >>|cRXP_WARN_As soon as you enter Undercity you will be automatically PVP flagged, becoming attackable by|r |cRXP_ENEMY_Horde|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Truman|r
    .accept 95250 >> Accept Abominable Creatures
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>Kill |cRXP_ENEMY_The Baron|r. Loot him for the |cRXP_LOOT_Head of the Baron|r
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>Loot all mobs for the |T133328:0|t[|cRXP_LOOT_Bloodied Insignia|r]
    .use 268535 >> |cRXP_WARN_Use the|r |T133328:0|t[|cRXP_LOOT_Bloodied Insignia|r] |cRXP_WARN_to start the quest|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)
    .accept 95195 >> Accept Bloodied Insignia
step
    #sticky
    #label BloodiedInsignia
    >>Loot all mobs for their |cRXP_LOOT_Bloodied Insignias|r
    .complete 95195,1 -- Bloodied Insignia (10)
step
    #sticky
    #label CrestofLordaeron
    >>Loot the |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] on the ground or hanging on a wall
    >>|cRXP_WARN_Keep an eye out for this. It can spawn in many different locations and be hard to see|r
    .use 268579 >> |cRXP_WARN_Use the|r |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] |cRXP_WARN_to start the quest|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >> Accept Crest of Lordaeron
step
    #sticky
    #label CrumpledPaper
    >>Click the |cRXP_PICK_Crumpled Paper|r on the ground near |cRXP_ENEMY_Rath'mael|r
    >>|cRXP_WARN_You can do this after you've killed him|r
    .accept 92415 >> Accept Remember That I Love You
step
    #requires BaronHead
step
    #requires BloodiedInsignia
step
    #requires CrestofLordaeron
step
    #requires CrumpledPaper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Truman|r
    >>|cRXP_FRIENDLY_Captain Truman|r |cRXP_WARN_is back at the start of the dungeon|r
    .turnin 95250 >> Turn in Abominable Creatures
    .target Captain Truman
step
    .hs >> Hearth to Stormwind
    >>|cRXP_WARN_If your Hearthstone was not set at Stormwind, make your way there|r
    .zoneskip Stormwind City
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .turnin 92415 >> Turn in Remember That I Love You
    .accept 95161 >> Accept Remember That I Love You
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orphan Matron Nightingale|r
    .accept 95161 >> Accept Remember That I Love You
    .target Orphan Matron Nightingale
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >> Travel to the Stormwind Library
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Dena Kennedy|r
    >>|cRXP_WARN_She walks around slightly in the Royal Gallery|r
    .turnin 95189 >> Turn in Crest of Lordaeron
    .target Lady Dena Kennedy
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 95195 >> Turn in Bloodied Insignia
    .target General Marcus Jonathan
step -- end of section 06
    #label S06_End
]])
