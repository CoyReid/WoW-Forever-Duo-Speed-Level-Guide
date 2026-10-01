# RXP Guide Syntax

Local VS Code extension that highlights RestedXP guide text inside
`RXPGuides.RegisterGuide([[ ... ]])` strings, using your theme's colors.

| Guide element | Scope (theme picks the color) |
| --- | --- |
| `step` | `keyword.control.step.rxp` |
| `#tag` / args | `keyword.other.directive.rxp` / `entity.name.label.rxp` |
| `.command` | `support.function.command.rxp` |
| `<<` filter | `keyword.operator.filter.rxp` + `entity.name.type.filter.rxp` |
| `>>` | `keyword.operator.arrow.rxp` |
| `\|cRXP_FRIENDLY_…\|r` | `variable.other.constant.friendly.rxp` |
| `\|cRXP_ENEMY_…\|r` | `string.regexp.enemy.rxp` |
| `\|cRXP_WARN_…\|r` | `constant.character.escape.warn.rxp` |
| `\|cRXP_LOOT_…\|r` | `entity.name.tag.loot.rxp` |
| `\|cRXP_BUY_…\|r` | `constant.numeric.buy.rxp` |
| `\|cRXP_PICK_…\|r` | `keyword.control.pick.rxp` |
| `\|T…\|t` textures, color-code markers | `comment.block.*.rxp` |
| `[Item Name]` | `string.quoted.link.rxp` |
| `-- comment` | `comment.line.double-dash.rxp` |

Override any color in settings.json, e.g.:

```json
"editor.tokenColorCustomizations": {
  "textMateRules": [
    { "scope": "string.regexp.enemy.rxp", "settings": { "foreground": "#ff5555" } }
  ]
}
```

Rebuild/reinstall: `npx @vscode/vsce package --allow-missing-repository` then
`code --install-extension rxp-guide-syntax-0.0.1.vsix --force`.
