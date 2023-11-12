#> chuzitems:item/shooting_star_longbow/common/lockon/hit/init
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/hit/

# プレイヤーと同IDにする
    execute store result score @s Chuz.EntityID run scoreboard players get @p[tag=This] Chuz.PlayerID
    execute store result score @s ChuzItems.LockonID run scoreboard players get @p[tag=This] ChuzItems.LockonID

# 
