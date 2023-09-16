#> chuzitems:item/wingman/mainhand/reload/start
#
# 
#
# @within function chuzitems:common/reload/start

# アイテム変更
    loot replace entity @s weapon.mainhand loot chuzitems:item/wingman/reload

# 演出
    execute at @s run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute at @s run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5

# 射撃のポーズ戻す
    tag @s remove ChuzItems.Shot.ADS
    tag @s remove ChuzItems.Shot.Normal

# スコアとタグ調整
    scoreboard players reset @s ChuzItems.CoolTime
    scoreboard players reset @s ChuzItems.Spread
    scoreboard players reset @s ChuzItems.Recoil
    scoreboard players reset @s ChuzItems.Recoil.Change
    tag @s remove ChuzItems.ReloadStart
