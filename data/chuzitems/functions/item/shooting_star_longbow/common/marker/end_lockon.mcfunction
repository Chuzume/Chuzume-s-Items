#> chuzitems:item/shooting_star_longbow/common/marker/end_lockon
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/marker/main

# スコア解除
    $scoreboard players reset @s ChuzItems.LockedBy.$(LockID)
    $scoreboard players reset @s ChuzItems.Lockon.$(LockID)
    $scoreboard players reset @s ChuzItems.LockonTime.$(LockID)

# 持ち主の位置で音を鳴らす
    execute at @p[tag=This] run playsound minecraft:block.note_block.xylophone player @p ~ ~ ~ 0.5 0.5