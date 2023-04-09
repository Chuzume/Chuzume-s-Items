#> chuzitems:entity/projectile/beam/recursive/
#
# 
#
# @within function
#   chuzitems:entity/projectile/beam/recursive/
#   chuzitems:entity/projectile/beam/tick/

# ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run say yo

    particle dust 0.3 1 1 2 ~ ~ ~ 0.15 0.15 0.15 0 2 force @a[distance=..60]

# 壁に煙
    execute unless block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^-0.5 run function chuzitems:entity/projectile/beam/recursive/hit_wall

# 今いるところは壁？
    execute if entity @s[distance=..60] if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^1 run function chuzitems:entity/projectile/beam/recursive/