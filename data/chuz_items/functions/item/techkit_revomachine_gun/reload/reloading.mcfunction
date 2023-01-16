#> chuz_items:item/techkit_revomachine_gun/reload/reloading
#
# 
#
# @within function chuz_items:item/techkit_revomachine_gun/main

# スコア増やしてく、一定値で完了
    scoreboard players add @s ChuzItems.Reload 1
    execute if score @s ChuzItems.Reload matches 45.. run function chuz_items:item/techkit_revomachine_gun/reload/finish

# 音
    execute if score @s ChuzItems.Reload matches 15 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 30 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 43 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 43 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1.75