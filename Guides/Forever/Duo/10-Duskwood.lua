local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end

-- Lock-Pally duo guide (Human Paladin + Human Warlock, WoW Forever, levels 1-30).
-- Section 10 Duskwood (22-24). Previous: 09 Paladin Class Weapon (22). Next: 11 Blackfathom Deeps (24).
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
#name 10 Duskwood (22-24)
#next 11 Blackfathom Deeps (24)

--==============================================================================
-- 10 DUSKWOOD (22-24)
-- PLACEHOLDER: no reference guide yet. Duo notes:
--   Duskwood quests (tbd will route next)
--==============================================================================
step
    +|cRXP_WARN_Section 10 is not routed yet. See the notes at the top of this guide file.|r
step -- end of section 10 (placeholder)
    #label S10_End
]])
