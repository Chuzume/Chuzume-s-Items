#> chuzitems:item/shooting_star_longbow/common/marker/test
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/marker/

# リセット
    execute as @e[tag=Test,sort=nearest] if score @s Test matches 0.. run scoreboard players reset @s Test
    scoreboard players reset $CoreCore Test 

# スコアID
    execute as @e[tag=Test,sort=nearest] unless score @s Test matches 0.. run function chuzitems:item/shooting_star_longbow/common/marker/test2
