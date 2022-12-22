#トグル
gamerule sendCommandFeedback false
scoreboard players add $ChuzItems.Setting2 Chuz.Rule 1
execute if score $ChuzItems.Setting2 Chuz.Rule matches 2.. run scoreboard players set $ChuzItems.Setting2 Chuz.Rule 0
function chuz_items:settings
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2
gamerule sendCommandFeedback true