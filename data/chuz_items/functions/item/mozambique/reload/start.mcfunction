#> chuz_items:item/mozambique/reload/start
#
# リロード開始
#
# @within function
#   chuz_items:item/mozambique/gun/
#   chuz_items:item/mozambique/main


# アイテム変更
    loot replace entity @s weapon.mainhand loot chuz_items:item/mozambique/reload

# 演出
    execute at @s run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute at @s run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5

# 射撃のポーズ戻す
    tag @s remove ChuzItems.Shot.ADS
    tag @s remove ChuzItems.Shot.Normal

# スコア
    scoreboard players reset @s ChuzItems.CoolTime
    tag @s remove ChuzItems.ReloadStart