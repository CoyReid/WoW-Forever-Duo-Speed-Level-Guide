# Lock/Pally duo guide (WoW Forever, levels 1-30)

Custom RestedXP guide for a Human Paladin + Human Warlock leveling together. One RXP guide per route
section; each section's `#next` loads the following one automatically.

In game: RestedXP guide list → **RestedXP Forever Guide (A)** → **Duo Leveling Guide** → `01 Starting Zone (1-6)`.

| File | Section | Status |
| --- | --- | --- |
| 01-StartingZone.lua | 01 Starting Zone (1-6) | routed |
| 02-ElwynnForest.lua | 02 Elwynn Forest (6-10) | routed |
| 03-DunMorogh-LochModan.lua | 03 Dun Morogh/Loch Modan (10-14) | routed |
| 04-HallOfThanes.lua | 04 Hall of Thanes (14+) | routed |
| 05-Darkshore.lua | 05 Darkshore (14-17) | routed |
| 06-RuinsOfLordaeron.lua | 06 Ruins of Lordaeron (17+) | routed |
| 07-Westfall-Redridge-LochModan.lua | 07 Westfall/Redridge/Loch Modan (17-20+) | routed |
| 08-Deadmines.lua | 08 Deadmines (20+) | routed |
| 09-PaladinClassWeapon.lua | 09 Paladin Class Weapon (22) | routed, partly researched |
| 10-16 | Duskwood, BFD, Wetlands, Stockades, Excavation Site, Dalaran, Gnomeregan | placeholders (route notes in comments) |

All files are registered in `Guides/GuideList-forever.xml`.

## How the files are built

- Steps are **copied** from the existing guides in this repo (mostly `Guides/Forever/Alliance-1-13_Human.lua`,
  `Alliance-11-20.lua` and `dungeon/Alliance-11-20.lua`) and narrowed to Paladin/Warlock. Each file's header
  comment names its source blocks. No `#include`.
- Our route notes are `#sticky` steps titled `Duo notes: ...` with `#completewith SNN_End`, so they stay on
  screen until the section's end marker (`#label SNN_End`, last step of every file). Note lines start with `+`
  (a step with only `*` lines completes itself immediately).
- Flags in comments:
  - `ERA`: copied from a Classic Era/SoD guide; its `#xprate`/`#era`/`.dungeon` tags were removed so it shows on Forever.
  - `RESEARCHED`: written from Wowhead quest data; verify in the beta.
  - `TODO coords`: no arrow yet. Don't guess coordinates; reuse ones from an existing step for the same NPC.
- Softcore only (no `#hardcore` steps). Manual guide selection (no `#defaultfor`).
- Labels are scoped to one file, so the same label name can appear in two sections.
- Files use CRLF line endings.

## Route decisions applied so far

- Darkshore: skipped Easy Strider Living (2178) and Cave Mushrooms (947); Bashal'Aran only the first quest (954),
  follow-ups 955-957 skipped.
- Deeprun Rat Roundup (6661) is optional: only if you can group up and the tram isn't crowded. Walking into
  Ironforge without it skips the step.
- Lighthouse (Westfall): both classes do The Coastal Menace; Keeper of the Flame skipped.

## Open audit items

- Reference order doesn't always match our route (e.g. Ruins of Lordaeron assumes you start in Ironforge).
- The Earthseer Farsen / Old Ironforge Incursion chain appears in both 03 and 04 on purpose; pick one.
- Researched steps still to verify: Kor Gem, Whitestone Oak Lumber, Smithing Hammer sources; Stepping Stones turn-in location.
- Quests that are only notes so far (no steps): One Shot. One Kill., Researching the Corruption, Knowledge in the Deeps, Anaya, Manhunt.

## Testing a change

1. `/reload` in game.
2. Watch chat for `Error parsing guide` messages.
3. Load the section you changed and check the first step has its arrow and the notes sticky disappears at the section end.
