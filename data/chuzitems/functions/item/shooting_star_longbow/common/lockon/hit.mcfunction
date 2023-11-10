#> chuzitems:item/shooting_star_longbow/common/lockon/hit
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/beam

particle explosion

# ロックオン遅延
    scoreboard players add @s ChuzItems.ShootingStar.LockDelay 5

# サウンド
    execute at @s run playsound minecraft:block.note_block.xylophone neutral @s ~ ~ ~ 1 2
    execute at @s run playsound minecraft:block.iron_door.open player @s ~ ~ ~ 1 2

# ヒット者として実行
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[tag=!ChuzItems.Entity.Lockon,dx=0] run function chuzitems:item/shooting_star_longbow/common/lockon/summon_marker
    execute as @e[type=marker,tag=ChuzItems.Entity.Lockon,tag=Chuz.Init] store result score @s Chuz.EntityID run scoreboard players get @p[tag=This] Chuz.PlayerID
