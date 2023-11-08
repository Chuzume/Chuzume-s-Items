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
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=!ChuzItems.Entity.Lockon,dx=0] at @s run function chuzitems:item/shooting_star_longbow/common/lockon/hit_victim