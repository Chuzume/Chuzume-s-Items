#> chuz_items:item/wingman/reload/finish
#
# リロード完了
#
# @within function chuz_items:item/wingman/reload/reloading

# アイテムを渡す
    loot replace entity @s weapon.mainhand loot chuz_items:item/wingman/

# 演出
    playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2

# スコアリセット
    scoreboard players reset @s ChuzItems.Reload

# マガジン式リロード
    # 弾薬を使う
        execute if score $ChuzItems.Setting1 Chuz.Rule matches 1 run function chuz_items:common/reload/magazine/
    # 弾薬を使わない
        execute if score $ChuzItems.Setting1 Chuz.Rule matches 0 run function chuz_items:common/reload/magazine/no_ammo_need