#> chuzitems:entity/projectile/beam/recursive/check_wall/
#
# 壁を探す 
#
# @within chuzitems:entity/projectile/beam/recursive/check_wall/detect

# 壁についたらサイズ変更
    execute unless block ~ ~ ~ #chuzitems:no_collision run function chuzitems:entity/projectile/beam/recursive/check_wall/transform

# 限界越えてもサイズ変更
    execute unless entity @s[distance=..60] run function chuzitems:entity/projectile/beam/recursive/check_wall/transform

# 今いるところは壁？
    execute if entity @s[distance=..60] if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^1 run function chuzitems:entity/projectile/beam/recursive/check_wall/detect
