local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 12 Wetlands (24-26). Previous: 11 Blackfathom Deeps (24). Next: 13 The Stockades (26).
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
#name 12 Wetlands (24-26)
#next 13 The Stockades (26)

--==============================================================================
-- 12 WETLANDS (24-26)
-- PLACEHOLDER: no reference guide yet. Duo notes:
--   No notes yet.
--==============================================================================
step
    +|cRXP_WARN_Section 12 is not routed yet. See the notes at the top of this guide file.|r
step -- end of section 12 (placeholder)
    #label S12_End
]])
