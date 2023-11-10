#> chuzitems:item/shooting_star_longbow/common/lockon/hit/success
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/hit/

# ロックオン遅延
    scoreboard players add @p[tag=This] ChuzItems.ShootingStar.LockDelay 10

# サウンド
    execute at @p[tag=This] run playsound minecraft:block.note_block.xylophone neutral @p ~ ~ ~ 1 2
    execute at @p[tag=This] run playsound minecraft:block.iron_door.open player @p ~ ~ ~ 1 2

# ヒット者として実行
    execute as @p[tag=This] run function chuzitems:item/shooting_star_longbow/common/lockon/hit/summon_marker

# ロックカウント加算
    scoreboard players add @p[tag=This] ChuzItems.ShootingStar.LockCount 1

