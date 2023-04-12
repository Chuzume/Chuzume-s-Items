#> chuzitems:entity/projectile/beam/recursive/
#
# 
#
# @within function
#   chuzitems:entity/projectile/beam/recursive/
#   chuzitems:entity/projectile/beam/tick/

# ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#chuzitems:projectile,dx=0] run damage @s 10 minecraft:generic by @p
## パーティクル
    # 赤
        execute if score @s[tag=ChuzItems.Color.Red] ChuzItems.Tick matches 0..10 run particle dust 1 0.302 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..60]
        execute if score @s[tag=ChuzItems.Color.Red] ChuzItems.Tick matches 10.. run particle dust 1 0.302 0.302 0.5 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]
    # 橙
        execute if score @s[tag=ChuzItems.Color.Orange] ChuzItems.Tick matches 0..10 run particle dust 1 0.569 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..60]
        execute if score @s[tag=ChuzItems.Color.Orange] ChuzItems.Tick matches 10.. run particle dust 1 0.569 0.302 0.5 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]
    # 黄
        execute if score @s[tag=ChuzItems.Color.Yellow] ChuzItems.Tick matches 0..10 run particle dust 0.988 1 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..60]
        execute if score @s[tag=ChuzItems.Color.Yellow] ChuzItems.Tick matches 10.. run particle dust 0.988 1 0.302 0.5 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]
    # 緑
        execute if score @s[tag=ChuzItems.Color.Green] ChuzItems.Tick matches 0..10 run particle dust 0.325 1 0.302 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..60]
        execute if score @s[tag=ChuzItems.Color.Green] ChuzItems.Tick matches 10.. run particle dust 0.325 1 0.302 0.5 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]
    # 空
        execute if score @s[tag=ChuzItems.Color.Sky] ChuzItems.Tick matches 0..10 run particle dust 0.302 0.894 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..60]
        execute if score @s[tag=ChuzItems.Color.Sky] ChuzItems.Tick matches 10.. run particle dust 0.302 0.894 1 0.5 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]
    # 青
        execute if score @s[tag=ChuzItems.Color.Blue] ChuzItems.Tick matches 0..10 run particle dust 0.325 0.302 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..60]
        execute if score @s[tag=ChuzItems.Color.Blue] ChuzItems.Tick matches 10.. run particle dust 0.325 0.302 1 0.5 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]
    # 紫
        execute if score @s[tag=ChuzItems.Color.Purple] ChuzItems.Tick matches 0..10 run particle dust 0.816 0.302 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..60]
        execute if score @s[tag=ChuzItems.Color.Purple] ChuzItems.Tick matches 10.. run particle dust 0.816 0.302 1 0.5 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]
    # 白
        execute if score @s[tag=ChuzItems.Color.White] ChuzItems.Tick matches 0..10 run particle dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..60]
        execute if score @s[tag=ChuzItems.Color.White] ChuzItems.Tick matches 10.. run particle dust 1 1 1 0.5 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..60]

# 壁に煙
    execute unless block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^-1 run function chuzitems:entity/projectile/beam/recursive/hit_wall

# 今いるところは壁？
    execute if entity @s[distance=..120] if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^1 run function chuzitems:entity/projectile/beam/recursive/