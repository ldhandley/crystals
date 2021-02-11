crystals
========
`crystals` is a CodeSpells mod! Learn more at https://codespells.org.

### Installation

Clone this repo

```
cd crystals
raco pkg install
raco codespells-install
```

Open up `main.rkt` and adjust the `codespells-workspace` accordingly. Run.

### Including this Rune Collection as a Package

`(require-mod crystals)`

This gives you access to `crystals:my-mod-lang` which you can combine into your mod's rune lang with `append-rune-langs`.

### Unreal Development

If you want to start up the Unreal project (`/Unreal`), install the following:
* Real Rare Crystals Pack: https://www.unrealengine.com/marketplace/en-US/item/963c62c38abb403aa08b575584b765d0
  * Place in: `Plugins/Crystals/Content/RealRareCrystals`

### Releasing New Content

If you have only changed the Racket code, just push to Github.

If you have changed or added Unreal assets, push to Github and run `raco codespells-release`.
