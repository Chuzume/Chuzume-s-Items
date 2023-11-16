#> chuzitems:item/shooting_star_longbow/common/lockon/beam
#
# 
#
# @within function
#   chuzitems:item/shooting_star_longbow/common/lockon/
#   chuzitems:item/shooting_star_longbow/common/lockon/beam

# 接触時判定
    execute if entity @s[distance=..100] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=!Chuz.Projectile,tag=!ChuzItems.Entity.Lockon,tag=!This,dx=0] unless entity @s[dx=0] run function chuzitems:item/shooting_star_longbow/common/lockon/hit/

# 再帰
    execute if entity @s[distance=..100] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=!Chuz.Projectile,tag=!ChuzItems.Entity.Lockon,tag=!This,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^0.5 run function chuzitems:item/shooting_star_longbow/common/lockon/beam
