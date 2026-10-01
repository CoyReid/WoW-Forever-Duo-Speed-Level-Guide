local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 13 The Stockades (26). Previous: 12 Wetlands (24-26). Next: 14 Excavation Site: Wetlands (26).
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
#name 13 The Stockades (26)
#next 14 Excavation Site: Wetlands (26)

--==============================================================================
-- 13 THE STOCKADES (26)
-- PLACEHOLDER: no reference guide yet. Duo notes:
--   Quests -> 6: (~37k+ xp in total)
--   1 Requires pre-requisite in Wetlands. Both pre-req and followup only give 2.5k xp each
--   Optionally do some Wetlands questing shenanigans here for xp?
--   1 From Redridge (6.4k xp)
--   1 From Duskwood (6.7k xp)
--   2 in SW (16k xp in total)
--   Have to save 3 silk cloth each for one of the follow up quests
--   1 in dungeon (8.5k xp)
--==============================================================================
step
    +|cRXP_WARN_Section 13 is not routed yet. See the notes at the top of this guide file.|r
step -- end of section 13 (placeholder)
    #label S13_End
]])
