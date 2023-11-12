#> chuzitems:item/shooting_star_longbow/common/marker/macro
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/marker/

# リセット
    $scoreboard players reset @e[scores={ChuzItems.Lockon.$(LockID)=0..}] ChuzItems.Lockon.$(LockID)
    scoreboard players reset @s ChuzItems.ShootingStar.LockCount 

# スコアID
    #execute as @e[tag=Test,sort=nearest] unless score @s Test matches 0.. run function chuzitems:item/shooting_star_longbow/common/marker/test2
#   
    $execute as @e[scores={ChuzItems.LockedBy.$(LockID)=0..}] unless score @s ChuzItems.Lockon.$(LockID) matches 0.. at @s run function chuzitems:item/shooting_star_longbow/common/marker/main with storage chuz:context