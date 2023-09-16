#> chuzitems:item/mozambique/mainhand/reload/finish
#
# 
#
# @within function chuzitems:item/mozambique/mainhand/reload/

# アイテムを渡す
    loot replace entity @s weapon.mainhand loot chuzitems:item/mozambique/

# 演出
    playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2

# スコアリセット
    scoreboard players reset @s ChuzItems.Reload

# マガジン式リロード
    # 弾薬を使う
        execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 run function chuzitems:common/reload/magazine/
    # 弾薬を使わない
        execute if score $Gamerule.AmmoRequire Chuz.Rule matches 0 run function chuzitems:common/reload/magazine/no_ammo_need