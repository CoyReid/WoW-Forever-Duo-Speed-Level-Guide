local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale()
if L and RXP.enabledLocale[L] then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance Human Warlock/Alliance Human Paladin
#group RestedXP Forever Guide (A)
#subgroup Duo Leveling Guide
#name 1-22 Alliance Lock-Pally Duo

step
    +DRAFT: Shared route for a Human Warlock and Human Paladin. These custom route notes are manual checkboxes for now; quest automation and custom waypoint arrows are not yet implemented.
    +Waypoint pass TODO: verify and add coordinates for the custom travel legs. No coordinates have been guessed in this draft.
step
    +Starting zone: push farther toward the Kobold area while killing wolves for better spawns.
step << Warlock
    +Split briefly from the Paladin and complete the Warlock imp quest. Regroup afterward.
step << Paladin
    +While the Warlock completes the imp quest, stay safe and regroup with the Warlock before continuing the shared route.
step
    #include RestedXP Forever Guide (A)\1-6 Northshire

step
    +After Northshire, go straight to the campfire quest in Goldshire.
step
    +Do the Kobold and farm quests as in the normal Human route. Account for having less bag space as a duo.
    +In Goldtooth's mine, Nifty is upstairs and Goldtooth is downstairs.
    +Farm at least four total Chunks of Boar Meat per player for the planned cooking step.
step
    #optional
    +OPTIONAL: Skip the Fishing Nets quest if the area is heavily contested or the route is going poorly.
step
    +Learn Fishing, but do not buy a fishing rod yet.
    +Run directly to the Mage Tower and pick up the Geomancer quest.
    +After the cave, return to Northshire for the turn-in, then go back and finish the Geomancers.
step << Warlock
    +At the Lumber Camp, learn Tailoring. Track Linen Cloth for the planned bag crafts.
step << Paladin
    +At the Lumber Camp, kill enemies northeast of the camp while the Warlock handles Tailoring.
step
    #optional
    +OPTIONAL: The Lumber Camp quest may be skipped.
step
    +Craft up to eight bags, depending on drops; each bag needs six Linen Cloth (48 total for eight).
    +The quest-reward bag may be sold for 8s 25c if you do not need it.
step
    #optional
    +OPTIONAL: The Murloc Tools quest may be skipped.
step
    +Meet at the Defias camp and finish the Bandanas quest together.
    +Kill Princess and try to obtain the Deed.
    +Finish the turn-ins, then Hearth to Stormwind.

step
    +If there is enough time and First Aid materials, train First Aid to 20 now so the Campfire quest can be turned in.
    +Complete the remaining turn-ins, go south for the additional turn-ins, then head southwest to the Gnolls.
step
    +Follow the route toward Westfall, then fly to Stormwind.
step << Warlock
    +In Stormwind, learn Enchanting and train it to 10 to learn the Wand and Wizard Oil recipes. The required Essence comes from the Dun Morogh quests.
step
    +The First Aid turn-in in Goldshire is estimated at about 270 XP; compare that with the time saved by crafting while riding the Tram.
step
    +If Princess dropped the Deed, pick up Manhunt while travelling to the Voidwalker quest.
    +Pick up the Redridge quest and Flight Path, then fly back to Stormwind.

step
    +From Stormwind, travel to Ironforge and then continue to Loch Modan.
    +Skip the rats.
    +Kite the Yeti down to the quest giver; this may not be practical if the area is crowded.
step << Paladin
    +Get a shield, train one-handed maces and swords, then Hearth to Stormwind.
    +Do the Resurrection quest; the notes estimate about 20 minutes of downtime.
step << Warlock
    +Stay behind to grind more cloth and keep up on XP. Fly back to Ironforge when the Paladin is turning in.

step
    +Ironforge Dungeon (level 14+): collect the three quests outside the entrance, the quest inside, and the quest from Dun Morogh.
    +The last room should contain enough idols for both players.
    +Pull extra quest mobs in the first room and avoid the Engineer bombs.
    +Be prepared to kill extra ghosts on the way out.
    +Turn in the dungeon quests together.
step << Paladin
    #optional
    +OPTIONAL: Train one-handed axes after the dungeon only if you obtained an axe upgrade.
step << Paladin
    +Train level 16 abilities in Stormwind, not Ironforge.
step
    +Before leaving Ironforge, accept Knowledge in the Deeps from the far north. The notes list its minimum level as 10.

step
    +Hearth to Stormwind and bank items.
step << Warlock
    +Catch up on turn-ins and XP if unsynced. Consider picking up the Deadmines quests here if they have not been collected.
step
    +Both players train their available abilities, then travel to the docks and take the boat to Darkshore.

step
    +Darkshore: pick up For Love Eternal on the docks.
    +At the inn, pick up the Buzzbox quest for Crawler Legs.
    +At the Flight Master, pick up the Thresher quest and kill the first Thresher on the beach to the south.
    +Run back up the ramp and pick up the Dwarf's Crab Chunk quest.
    +Return to the Flight Master, then swim out to the underwater turtle.
    +Swim back and turn in at the Flight Master.
step
    +Pick up both Wanted Poster quests.
step
    #optional
    +OPTIONAL: Skip the male Night Elf cave mushroom quest.
step
    +Pick up The Red Crystal from the female Night Elf.
    +Pick up The Absent Minded Prospector from the Dwarf near the fire.
step
    #optional
    +OPTIONAL: Skip the Bashal'Aran quest from the male Night Elf; the notes flag its return to Stormwind as low XP.
    +OPTIONAL: Skip the Strider Meat quest.
step
    +Pick up Deep Ocean, Vast Sea at the Dwarf camp for the sunken-ship Murloc quest.
    +Pick up the Blackfathom Deeps quest in the middle of the hut.
    +TODO: Confirm the quest giver for The Tower of Althalaxx.
    +Pick up Plagued Lands outside the house and How Big a Threat? inside the house.
step
    +Darkshore route 1: head north to Bashal'Aran.
    +Route 2: go northeast to the Tower of Althalaxx.
    +Route 3: go northwest to the beached turtle and kill the crabs.
    +Route 4: continue west to the other beached turtle.
    +Route 5: go southeast to the Red Crystal.
    +Route 6: go south to the Owl quest.
    +Route 7: check for Anaya, then run to the road and pick up the Stone Tiles quest from the female Night Elf.
    +Route 8: split up; the Warlock gets the north stone and the Paladin gets the south stone.
    +Route 9: turn in the stones, then run west to the beached Thresher.
    +Route 10: go south and collect four beached turtles.
    +Route 11: go west and pick up One Shot. One Kill. from the female Night Elf.
    +Route 12: go north for the Rabid Bear, then continue north to discover the Furbolg camp.
step
    +Before leaving Darkshore at level 18, pick up Researching the Corruption and the Blackfathom Deeps quest noted in the route.
    +The notes list level 18 as the requirement; verify quest availability in game.

step
    +Ruins of Lordaeron (level 17+): take the boat from Auberdine to Wetlands and stay aboard to Southshore.
step
    #optional
    +OPTIONAL: Stop at Southshore to sleep and continue the route the next day.
step
    +Run along the road to the Human camp in West Hillsbrad, continue north past Dalaran, and swim across to Undercity.
step
    +Ruins of Lordaeron: collect four quests. One starts at the dungeon entrance and can be turned in after the second boss, after a wipe, or at the end.
    +One quest drops from random mobs and turns in in Stormwind.
    +One quest item is on the ground near the final boss and turns in in Stormwind.
    +One quest is on the ramparts after the final boss and turns in in Stormwind.
    +The route image and exact quest names are not present in the notes; confirm dungeon navigation and pickups in game.
step
    +Expect two gauntlets: one for the bottom-left boss and one before the final boss.
    +Warn the healer to spam heals between waves; the group may otherwise wipe.
    +Go up the tower near the final boss for the Crest.
    +Before hearthing, confirm the entrance quest has been turned in.

step
    +Stormwind after Lordaeron: turn in the quests, train abilities, and pick up Deadmines quests if needed.
    +The notes expect level 19 or higher here. Bank and handle any remaining tasks.
    +The route notes suggest logging off here on the first night.

step
    +Westfall to Redridge: accept the first Defias Brotherhood (DB) quest to Redridge.
    +Do Humble Beginnings to the west and pick up the charred quest item at the farm.
step
    +Fly to Redridge. Pick up Assessing the Threat, The Lost Tools, Messenger to Stormwind, and A Free Lunch.
    +Turn in DB to Redridge and accept DB to Westfall.
    +Do the boar objective for An Unwelcome Guest.
step
    +At the docks, pick up Hillary's Necklace.
    +Get the Necklace and the toolbox in the water, then swim to the south shore.
    +Kill Gnolls for Assessing the Threat on the way south to the guard. Skip this if the area is not hyperspawning.
step
    +Turn in A Free Lunch and accept its follow-up.
    +Turn in The Lost Tools and the Herbalist quest.
    +Turn in Hillary's Necklace.
    +Accept Messenger to Stormwind as listed in the route notes.
step
    +Fly to Westfall. Turn in DB to Westfall and accept DB to Stormwind.
    +Fly to Stormwind, turn in DB to Stormwind, and accept DB back to Westfall.
    +Turn in Messenger to Stormwind and accept its follow-up.
    +Turn in Humble Beginnings.
step
    +Fly back to Westfall, turn in DB back to Westfall, and accept the next quest. The notes identify this as the Messenger quest; verify this chain during testing.
    +Go to the town outside Deadmines and finish Bandanas and the Messenger objective.
    +Continue to the lighthouse and do its quests. Skip the Oil quest and do the kill quests.
step
    +At about level 20, start the Paladin class quest at the far south of Westfall.
    +Run back to town, turn in the Messenger/DB quest, and accept DB to the dungeon.

step
    +Fly to Stormwind and train level 20 abilities.
step << Paladin
    +Turn in part two of the Paladin class quest, pick up the next part, and take the Tram to Ironforge for part three.
step
    +Travel together to Loch Modan for the Ore Shipment section of the Paladin quest.
    +Pick up Bailor's Ore Shipment (quest 1655).
    +Pick up the report prerequisite for The Algaz Gauntlet from Thelsamar. The nearby kill quest is The Algaz Gauntlet (quest 455); skip it if the route is unfavorable.
step
    #optional
    +OPTIONAL: Start A Dark Threat Looms (quest 250) and do only the first two quick quests; do not do the full chain.
    +OPTIONAL: Consider accepting the third quest for a later Wetlands turn-in.
step
    #optional
    +OPTIONAL: Wanted: Chok'sul (quest 256) is a difficult elite-area quest. Look for another player if attempting it; the reward is good.
step
    #optional
    +OPTIONAL: A Hunter's Boast (quest 257) opens after the two timed kill quests and leads to Vyrin's Revenge (quest 531) for a 10-slot bag.
    +The notes estimate 4,150 XP total but flag the running as potentially not worthwhile.
step
    +Turn in Ore Shipment and Thelsamar Wanted on the way to the Hunter Lodge if doing those quests, then Hearth to Stormwind.
    +Fly to Westfall for Deadmines.

step
    +Deadmines (level 20+): the route lists five quests, about 26,000 XP total.
    +Stormwind pickups: Collecting Memories (outside the dungeon; skippable), Oh Brother (outside the dungeon; skippable), and Underground Assault.
    +Sentinel Hill pickups: Red Silk Bandanas and The Defias Brotherhood.
    +In the dungeon: collect The Unsent Letter from the final boss.
step
    +After Deadmines, run to Sentinel Hill and turn in the two quests (about 15,000 XP total).
    +Fly to Stormwind for the remaining turn-ins (about 12,000 XP); train level 22 abilities if XP timing allows.

step
    +Rush the Paladin weapon at level 22+: the goals are to get the Paladin class-quest weapon for Duskwood, start the Warlock class quest, and collect the Blackfathom Deeps quests.
    +Take the boat to Darkshore.
step
    +Split briefly: the Paladin goes to Darnassus for the Blackfathom Deeps quests; the Warlock goes to Astranaar for The Zoram Strand (quest 1008).
    +Meet at Zoram Strand and share the Blackfathom Deeps quests and The Zoram Strand.
step << Paladin
    +In Darnassus, pick up In Search of Thaelrid (quest 1198) and Twilight Falls (quest 1199).
    +Fly back to Auberdine, pick up the Paladin class quest, then run to Zoram Strand.
step << Warlock
    +Run to Astranaar, pick up The Zoram Strand (quest 1008), then run to Zoram Strand.
step
    +At Zoram Strand, pick up The Ancient Statuette (quest 1007). Naga heads are expected to have a 100% drop rate in this version; verify while testing.
    +Collect the item, turn in The Ancient Statuette, and accept the follow-up Ruuzel (quest 1009).
step << Paladin
    +Complete the Paladin class quest using the Purified Kor Gem (item 7083).
step
    +Leave the area, kill Ruuzel, and turn in the quest.
    +Grind to Astranaar, get the Flight Path, and turn in The Zoram Strand.
step << Warlock
    +Run to the Barrens and pick up The Orb of Soranruk (quest 1740).
    +Turn in Stepping Stones (quest 79192).
step
    +Run to Ratchet, fly to Auberdine, and take the boat to Southshore.

step
    +Run to Shadowfang Keep and complete both class quests. The Paladin should bring water if healing the Voidwalker.
step
    +Hearth to Stormwind.
step << Paladin
    +Trade any extra cloth to the Warlock, then go to Ironforge to turn in the class quest and receive the weapon.
step << Warlock
    +In Stormwind, check whether crafting eight-slot Wool Bags is practical with the remaining Linen Cloth and available Wool Cloth.
    +Prioritize First Aid through Wool Bandages over crafting bags.
step
    +Meet in Stormwind and fly to Darkshire.

step
    +Duskwood (22-24+): route not yet planned. Stop here until the Duskwood steps and waypoints are added.
]])