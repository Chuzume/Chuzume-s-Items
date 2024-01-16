#> chuzitems:entity/projectile/glaive_common/tick/reset
#
# 
#
# @within function chuzitems:entity/projectile/**

# リセット
    tag @s remove ChuzItems.Reflected
    tag @p[tag=Chuz.ID.Target] remove Chuz.ID.Target
    scoreboard players reset $Interval Chuz.Temporary
    scoreboard players reset $PullInterval Chuz.Temporary
    data remove storage chuz:context Glaive