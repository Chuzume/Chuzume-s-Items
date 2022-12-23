#> chuz_items:item/mozambique/reload/finish
#
# リロード完了
#
# @within function chuz_items:item/mozambique/reload/reloading

# アイテムを渡す
    loot replace entity @s weapon.mainhand loot chuz_items:item/mozambique/

# 演出
    playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 2

# スコアリセット
    scoreboard players reset @s ChuzItems.Reload

# マガジン式リロード
    function chuz_items:common/reload/magazine/