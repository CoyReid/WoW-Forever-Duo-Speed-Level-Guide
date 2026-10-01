local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 11 Blackfathom Deeps (24). Previous: 10 Duskwood (22-24). Next: 12 Wetlands (24-26).
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
#name 11 Blackfathom Deeps (24)
#next 12 Wetlands (24-26)

--==============================================================================
-- 11 BLACKFATHOM DEEPS (24)
-- PLACEHOLDER: no reference guide yet. Duo notes:
--   Quests -> 4 (5th in dungeon): (~44k xp in total)
--   Knowledge in the Deeps (turn in Ironforge, 10k xp)
--   Researching the Corruption (turn in Darkshore, 2.4k xp)
--   Twilight Falls (turn in Darnassus, 9.5k xp)
--   In search of Thaelrid (Turn in Dungeon, 9k xp)
--   Blackfathom Villainy (Accept in dungeon, turn in Darnassus, 12.4k xp)
--   Lock class quest?
--==============================================================================
step
    +|cRXP_WARN_Section 11 is not routed yet. See the notes at the top of this guide file.|r
step -- end of section 11 (placeholder)
    #label S11_End
]])
