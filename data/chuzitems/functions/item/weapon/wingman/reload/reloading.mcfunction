#> chuzitems:item/weapon/wingman/reload/reloading
#
# リロードモードのメイン処理
#
# @within function chuzitems:item/weapon/wingman/main

# スコア増やしてく、一定値で完了
    scoreboard players add @s ChuzItems.Reload 1
    execute if score @s ChuzItems.Reload matches 45.. run function chuzitems:item/weapon/wingman/reload/finish

# 音
    execute if score @s ChuzItems.Reload matches 15 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 30 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 43 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 43 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1.75