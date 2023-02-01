#> chuzitems:item/mozambique/reload/reloading
#
# リロードモードのメイン処理
#
# @within function chuzitems:item/mozambique/main

# スコア増やしてく、一定値で終了
    scoreboard players add @s ChuzItems.Reload 1
    execute if score @s ChuzItems.Reload matches 50.. run function chuzitems:item/mozambique/reload/finish

# 音
    execute if score @s ChuzItems.Reload matches 20 run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1
    execute if score @s ChuzItems.Reload matches 30 run playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 1
    execute if score @s ChuzItems.Reload matches 48 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2