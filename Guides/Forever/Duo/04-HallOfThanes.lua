local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 04 Hall of Thanes (14+). Previous: 03 Dun Morogh/Loch Modan (10-14). Next: 05 Darkshore (14-17).
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
#name 04 Hall of Thanes (14+)
#next 05 Darkshore (14-17)

--==============================================================================
-- 04 HALL OF THANES (14+)
-- Source: Forever/dungeon/Alliance-11-20.lua "15-16 Hall of Thanes".
--==============================================================================
step
    #sticky
    #title Duo notes: Ironforge Dungeon
    #completewith S04_End
    +3 quests outside entrance, 1 inside, 1 from dun morogh
    +Last room has enough idols for everyone
    +Pull extra mobs for quest (first room), dodge engineer bombs
    +May have to kill extra ghosts on the way out
    +Turn in quests, Pally train 1h axes (optional, only if got drop)
    +Pally train lvl 16 abilities in SW (Not IF)
    +Before leaving -> Accept Knowledge in the Deeps (far north, BFD quest req lvl 10)
step
    #completewith OII
    +|cRXP_WARN_You will now complete a pre-quest for the Hall of Thanes, then run the dungeon|r
step
    #completewith OII
    .zone Dun Morogh >> Travel to Dun Morogh
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .accept 96392 >> Accept Farsen's Watch
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Talk to |cRXP_FRIENDLY_Earthseer Farsen|r to view his farsight
    >>|cRXP_WARN_You can cancel the Farsight once the objective completes|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Press ESCAPE to cancel the Farsight|r
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Press ESCAPE to cancel the Farsight|r
    .turnin 96392 >> Turn in Farsen's Watch
    .accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Kill |cRXP_ENEMY_Dark Iron Spies|r. Loot them for the |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    .use 274268 >>|cRXP_WARN_Use the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r] |cRXP_WARN_to start the quest|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Accept Underground Map
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Turn in Nip 'Em in the Bud
    .turnin 96391 >> Turn in Underground Map
    .accept 96393 >> Accept Old Ironforge Incursion
    .target Earthseer Farsen
step
    #completewith EnterHoT
    +|cRXP_WARN_Start looking for a group for the Hall of Thanes|r
step
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >> Travel down into Old Ironforge via |cRXP_FRIENDLY_King Magni's|r room
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .accept 96394 >> Accept The Restless Dead
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >> |cRXP_WARN_Drop down onto the ramp below|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >> Accept Important Heirlooms
    .target Thom Filch
step
    #label EnterHoT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >> Enter the Hall of Thanes
step
    #completewith FaldrimAnvilmar
    >>Loot the |cRXP_PICK_Dwarven Heirlooms|r on the ground through the Hall of Thanes
    >>|cRXP_WARN_You can collect plenty of these at the end of the dungeon as well|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    #completewith FaldrimAnvilmar
    >>Kill |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghostly Attendant|r
    .accept 96395 >> Accept An Ancient Grudge
    .target Ghostly Attendant
step
    #label FaldrimAnvilmar
    >>Kill |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 -- Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    #completewith next
    +|cRXP_WARN_Return to the|r |cRXP_FRIENDLY_Ghostly Attendant|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghostly Attendant|r
    .turnin 96395 >> Turn in An Ancient Grudge
    .target Ghostly Attendant
step
    >>Kill |cRXP_ENEMY_Enraged Apparitions|r and |cRXP_ENEMY_Tormented Souls|r
    >>|cRXP_WARN_Complete this now as you may not have a chance to finish it later|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    #completewith ToU
    >>Loot the |cRXP_PICK_Dwarven Heirlooms|r on the ground through the Hall of Thanes
    >>|cRXP_WARN_You can collect plenty of these at the end of the dungeon as well|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>Kill |cRXP_ENEMY_Durgen Dirgehammer|r. Loot him for |cRXP_LOOT_Durgen Dirgehammer's Head|r
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    #label ToU
    >>Click the |cRXP_PICK_Treaty of Understanding|r
    .accept 98423 >> Accept The Treaty of Understanding
step
    >>Loot the |cRXP_PICK_Dwarven Heirlooms|r on the ground through the Hall of Thanes
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >> |cRXP_WARN_Exit the Hall of Thanes. Fastest way is running straight down the corridor from the final boss room|r
    .subzoneskip 16919,1
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Turn in Important Heirlooms
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >> Return to |cRXP_FRIENDLY_Afadra Dunwall|r up the ramp
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >> Turn in The Restless Dead
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >> Travel up to ramp to toward |cRXP_FRIENDLY_King Magni Bronzebeard|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 96393 >> Turn in Old Ironforge Incursion
    .turnin 98423 >> Turn in The Treaty of Understanding
    .target King Magni Bronzebeard
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >> Train your class spells
    .target Brandur Ironhammer << Paladin
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .trainer >> Train your class spells
    .target Briarthorn << Warlock
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoire of Sacrifice (Rank 1)]
    .target Jubahl Corpseseeker
    .train 20381,1
step -- end of section 04
    #label S04_End
]])
