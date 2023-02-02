#> chuzitems:item/weapon/mozambique/reload/start
#
# リロード開始
#
# @within function
#   chuzitems:item/weapon/mozambique/gun/
#   chuzitems:item/weapon/mozambique/main


# アイテム変更
    loot replace entity @s weapon.mainhand loot chuzitems:item/weapon/mozambique/reload

# 演出
    execute at @s run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute at @s run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5

# 射撃のポーズ戻す
    tag @s remove ChuzItems.Shot.ADS
    tag @s remove ChuzItems.Shot.Normal

# スコア
    scoreboard players reset @s ChuzItems.CoolTime
    tag @s remove ChuzItems.ReloadStart