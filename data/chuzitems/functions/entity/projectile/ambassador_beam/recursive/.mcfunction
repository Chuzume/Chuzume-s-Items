#> chuzitems:entity/projectile/ambassador_beam/recursive/
#
# 
#
# @within function chuzitems:entity/projectile/ambassador_beam/tick/

# 今いるところは壁？
    execute if entity @s[distance=..120] if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^1 run function chuzitems:entity/projectile/beam/recursive/