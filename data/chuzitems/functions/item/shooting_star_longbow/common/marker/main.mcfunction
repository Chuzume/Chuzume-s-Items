#> chuzitems:item/shooting_star_longbow/common/marker/main
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/marker/macro

# パーティクル
    execute anchored eyes positioned ^ ^ ^ run particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0.1 1 force @a[distance=..200]

# スコア減らす
    $scoreboard players remove @s ChuzItems.LockonTime.$(LockID) 1

# 0になったらロックオン状態を解除
    $execute if entity @s[scores={ChuzItems.LockonTime.$(LockID)=..0}] run function chuzitems:item/shooting_star_longbow/common/marker/end_lockon with storage chuz:context

# ロックリミット設定
    scoreboard players add @p[tag=This] ChuzItems.ShootingStar.LockLimit 1