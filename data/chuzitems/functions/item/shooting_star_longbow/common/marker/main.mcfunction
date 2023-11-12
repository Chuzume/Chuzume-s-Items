#> chuzitems:item/shooting_star_longbow/common/marker/main
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/marker/macro

# プレイヤーに数値IDを割り振る
    scoreboard players add @p[tag=This] ChuzItems.ShootingStar.LockCount 1
    $scoreboard players operation @s ChuzItems.Lockon.$(LockID) = @p[tag=This] ChuzItems.ShootingStar.LockCount


# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0.1 1 force @a[distance=..60]

# スコア減らす
    $scoreboard players remove @s ChuzItems.LockonTime.$(LockID) 1

# 0になったらロックオン状態を解除
    $scoreboard players reset @s[scores={ChuzItems.LockonTime.$(LockID)=..0}] ChuzItems.LockedBy.$(LockID)
    $scoreboard players reset @s[scores={ChuzItems.LockonTime.$(LockID)=..0}] ChuzItems.Lockon.$(LockID)
    $scoreboard players reset @s[scores={ChuzItems.LockonTime.$(LockID)=..0}] ChuzItems.LockonTime.$(LockID)
