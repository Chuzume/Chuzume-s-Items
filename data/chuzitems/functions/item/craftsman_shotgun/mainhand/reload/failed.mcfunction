#> chuzitems:item/craftsman_shotgun/mainhand/reload/failed
#
# リロード失敗
#
# @within function chuzitems:item/craftsman_shotgun/mainhand/reload/

tag @s add ChuzItems.ReloadFailed
title @s actionbar {"text":"| Failed |","color":"red"}
playsound minecraft:block.note_block.bass player @s ~ ~ ~ 2 1
execute anchored eyes run particle smoke ^-0.5 ^ ^0.5 0 0 0 0.2 5