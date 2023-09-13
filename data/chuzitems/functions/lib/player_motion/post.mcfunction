#> chuzitems:lib/player_motion/post
#
# 
#
# @within chuzitems:player_motion/post

#
    advancement revoke @s only chuzitems:player_motion/post

# ゲームモードを戻す
    gamemode survival @s[scores={Chuz.Motion.Gamerule=0}]
    gamemode creative @s[scores={Chuz.Motion.Gamerule=1}]
    gamemode adventure @s[scores={Chuz.Motion.Gamerule=2}]
    gamemode spectator @s[scores={Chuz.Motion.Gamerule=3}]

#
    execute positioned as @e[type=marker,tag=BackTo,sort=nearest,limit=1] run tp @s ~ ~ ~
    kill @e[type=marker,tag=BackTo]

    #say 2