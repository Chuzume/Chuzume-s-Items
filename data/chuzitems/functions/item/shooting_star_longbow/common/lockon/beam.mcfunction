#> chuzitems:item/shooting_star_longbow/common/lockon/beam
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/

# パーティクル
    #particle minecraft:dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @s[distance=..80]

# 接触時判定
    execute if entity @s[distance=..80] positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[team=!null,tag=!ChuzItems.Entity.Lockon,tag=!This,dx=0] positioned ~0.5 ~0.5 ~0.5 run function chuzitems:item/shooting_star_longbow/common/lockon/hit

# 再帰
    execute if entity @s[distance=..80] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[team=!null,tag=!ChuzItems.Entity.Lockon,tag=!This,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^0.5 run function chuzitems:item/shooting_star_longbow/common/lockon/beam
