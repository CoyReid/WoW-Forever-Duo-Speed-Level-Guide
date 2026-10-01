local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 15 City of Dalaran (29). Previous: 14 Excavation Site: Wetlands (26). Next: 16 Gnomeregan (30).
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
#name 15 City of Dalaran (29)
#next 16 Gnomeregan (30)

--==============================================================================
-- 15 CITY OF DALARAN (29)
-- PLACEHOLDER: no reference guide yet. Duo notes:
--   Quests???
--   Would like do to, unsure how to route
--==============================================================================
step
    +|cRXP_WARN_Section 15 is not routed yet. See the notes at the top of this guide file.|r
step -- end of section 15 (placeholder)
    #label S15_End
]])
