local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 16 Gnomeregan (30). Previous: 15 City of Dalaran (29).
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
#name 16 Gnomeregan (30)

--==============================================================================
-- 16 GNOMEREGAN (30)
-- PLACEHOLDER: no reference guide yet. Duo notes:
--   Quests -> 8 (9 counting prereq): (~46k+ xp in total)
--   All quest pickups in IF, SW, Dun Morogh or in dungeon
--==============================================================================
step
    +|cRXP_WARN_Section 16 is not routed yet. See the notes at the top of this guide file.|r
step -- end of section 16 (placeholder)
    #label S16_End
]])
