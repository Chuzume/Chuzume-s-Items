#> chuzitems:lib/player_motion/pre
#
# 
#
# @within advancement chuzitems:player_motion/pre

#
    advancement revoke @s only chuzitems:player_motion/pre

# 前のゲームモードを保存
    scoreboard players set @s[gamemode=survival] Chuz.Motion.Gamerule 0
    scoreboard players set @s[gamemode=creative] Chuz.Motion.Gamerule 1
    scoreboard players set @s[gamemode=adventure] Chuz.Motion.Gamerule 2
    scoreboard players set @s[gamemode=spectator] Chuz.Motion.Gamerule 3

# ダメージ対策でクリエに
    gamemode creative

#
    summon marker ~ ~ ~ {Tags:["Chuz.Motion.BackMarker"]}
    execute positioned 0 1000 0 run tp @s ^ ^ ^

    #say 1