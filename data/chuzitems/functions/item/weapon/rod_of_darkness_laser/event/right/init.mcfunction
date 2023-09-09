#> chuzitems:item/weapon/rod_of_darkness_laser/event/right/init
#
# 
#
# @within function chuzitems:item/weapon/rod_of_darkness_laser/event/right/

# 向き
    data modify entity @s Rotation set from entity @p[tag=This] Rotation

# データのマージ
    data merge entity @s {shadow_strength:0f,Tags:["Chuz.Projectile","ChuzItems.Projectile.Beam"],brightness:{sky:15,block:15}}

## カラー決定
    # 疑似乱数生成
        execute store result score @s Chuz.Temporary run function forward_spreader:core/random/
    # ほしい範囲に剰余算
        scoreboard players operation @s Chuz.Temporary %= $7 Chuz.Const
    # カラー設定
        execute if score @s Chuz.Temporary matches 0 run tag @s add ChuzItems.Color.Red
        execute if score @s Chuz.Temporary matches 1 run tag @s add ChuzItems.Color.Orange
        execute if score @s Chuz.Temporary matches 2 run tag @s add ChuzItems.Color.Yellow
        execute if score @s Chuz.Temporary matches 3 run tag @s add ChuzItems.Color.Green
        execute if score @s Chuz.Temporary matches 4 run tag @s add ChuzItems.Color.Sky
        execute if score @s Chuz.Temporary matches 5 run tag @s add ChuzItems.Color.Blue
        execute if score @s Chuz.Temporary matches 6 run tag @s add ChuzItems.Color.Purple
    # リセット
        scoreboard players reset @s Chuz.Temporary