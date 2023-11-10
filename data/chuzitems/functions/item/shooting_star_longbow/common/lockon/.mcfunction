#> chuzitems:item/shooting_star_longbow/common/lockon/
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/main

# 実行者です
    tag @s add This

# パーティクル
    #execute positioned ^0.5 ^-0.5 ^5 run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @s[distance=..30]
    #execute positioned ^0.5 ^-0.2 ^5 run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @s[distance=..30]
    #execute positioned ^0.3 ^-0.5 ^5 run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @s[distance=..30]

# 
    execute positioned ^ ^ ^1 run function chuzitems:item/shooting_star_longbow/common/lockon/beam

# リセット
    tag @s remove This