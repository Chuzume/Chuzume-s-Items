#> chuzitems:entity/projectile/beam/recursive/
#
# 
#
# @within function
#   chuzitems:entity/projectile/beam/recursive/
#   chuzitems:entity/projectile/beam/tick/

# ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0] run damage @s 2 

# パーティクル
    execute if score @s ChuzItems.Tick matches 0..15 run particle dust 0.3 1 1 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..60]
    execute if score @s ChuzItems.Tick matches 15.. run particle dust 0.3 1 1 0.5 ~ ~ ~ 0.05 0.05 0.05 0 1 force @a[distance=..60]

# 壁に煙
    execute unless block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^-0.5 run function chuzitems:entity/projectile/beam/recursive/hit_wall

# 今いるところは壁？
    execute if entity @s[distance=..60] if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^1 run function chuzitems:entity/projectile/beam/recursive/