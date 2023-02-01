tag @s add ChuzItems.ReloadSuccess
title @s actionbar {"text":"| Success |","color":"green"}
playsound minecraft:block.note_block.bell player @s ~ ~ ~ 2 2
execute anchored eyes run particle glow ^-0.5 ^ ^0.5 0 0 0 0.2 5
execute in overworld run function chuzitems:item/shotgun/reload/finish