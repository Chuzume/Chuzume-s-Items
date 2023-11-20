#> chuzitems:item/shooting_star_longbow/common/lockon/hit/success
#
# ロック成功時に実行
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/hit/check

# ロックオン遅延
    scoreboard players add @p[tag=This] ChuzItems.ShootingStar.LockDelay 1

# ロックカウント加算
    #scoreboard players add @p[tag=This] ChuzItems.ShootingStar.LockCount 1

# サウンド
    execute at @p[tag=This] run playsound minecraft:block.note_block.xylophone neutral @p ~ ~ ~ 1 2
    execute at @p[tag=This] run playsound minecraft:block.iron_door.open player @p ~ ~ ~ 1 2

# スコアボード設定
    #$scoreboard players set @s ChuzItems.Lockon.$(LockID) $(LockCount)
    $scoreboard players set @s ChuzItems.LockedBy.$(LockID) 1
    $scoreboard players set @s ChuzItems.LockonTime.$(LockID) 100
