#> chuzitems:item/armor/directional_jump_boots/explosion/post
#
# 
#
# @within advancement chuzitems:delta_test/player_hurt_entity

#
    advancement revoke @s only chuzitems:delta_test/post

#
    execute positioned as @e[type=marker,tag=Chuz.Motion.BackMarker,sort=nearest,limit=1] run tp @s ~ ~ ~
    kill @e[type=marker,tag=Chuz.Motion.BackMarker]

    #say 2