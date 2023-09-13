#> chuzitems:lib/player_motion/post
#
# 
#
# @within chuzitems:player_motion/post

#
    advancement revoke @s only chuzitems:player_motion/post

# 難易度ピースフルだったのなら戻す
    execute if score $Difficulty Chuz.Motion.Difficulty matches 0 run difficulty peaceful

# ゲームモードを戻す
    gamemode survival @s[scores={Chuz.Motion.Gamerule=0}]
    gamemode creative @s[scores={Chuz.Motion.Gamerule=1}]
    gamemode adventure @s[scores={Chuz.Motion.Gamerule=2}]
    gamemode spectator @s[scores={Chuz.Motion.Gamerule=3}]

# リセット
    scoreboard players reset $Difficulty Chuz.Motion.Difficulty
    execute positioned as @e[type=marker,tag=Chuz.Motion.BackMarker,sort=nearest,limit=1] run tp @s ~ ~ ~
    kill @e[type=marker,tag=Chuz.Motion.BackMarker]
    tp @e[tag=Chuz.Motion.Bat] ~ ~-300 ~
    kill @e[tag=Chuz.Motion.Bat]
