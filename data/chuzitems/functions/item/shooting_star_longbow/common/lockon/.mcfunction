#> chuzitems:item/shooting_star_longbow/common/lockon/
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/main

# 実行者です
    tag @s add This

# 再帰スタート
    execute positioned ^ ^ ^1 run function chuzitems:item/shooting_star_longbow/common/lockon/beam

# リセット
    tag @s remove This