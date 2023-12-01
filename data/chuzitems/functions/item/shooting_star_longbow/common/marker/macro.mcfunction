#> chuzitems:item/shooting_star_longbow/common/marker/macro
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/marker/

# リセット
    scoreboard players reset @s ChuzItems.ShootingStar.LockLimit

# ID付与
    $execute as @e[scores={ChuzItems.LockedBy.$(LockID)=0..}] at @s run function chuzitems:item/shooting_star_longbow/common/marker/main with storage chuz:context

# 誰もロックしてないときはスコアボードを片付ける
    $execute unless entity @e[scores={ChuzItems.LockedBy.$(LockID)=0..}] run function chuzitems:item/shooting_star_longbow/common/marker/remove_scoreboard with storage chuz:context