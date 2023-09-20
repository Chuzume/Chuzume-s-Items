#> chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/
#
# 
#
# @within function
#   chuzitems:entity/projectile/ambassador_beam/tick/
#   chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/detect
#   chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/active


# 壁についたらサイズ変更
    #execute unless block ~ ~ ~ #chuzitems:no_collision run function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/transform

# 限界越えてもサイズ変更
    #execute unless entity @s[distance=..120] run function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/transform

# 今いるところは壁？
    execute if entity @s[distance=..120] if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^1 run function chuzitems:entity/projectile/ambassador_beam/recursive/check_wall/detect
