#> chuzitems:item/shooting_star_longbow/common/chargeshot/count_lock
#
# ロック数をチェック
#

# リセット
    $execute as @e[scores={ChuzItems.LockedBy.$(LockID)=0..}] run scoreboard players reset @s ChuzItems.Lockon.$(LockID)
    scoreboard players reset @p[tag=This] ChuzItems.ShootingStar.LockCount

# 対象にロック順を割り振る
    $execute as @e[scores={ChuzItems.LockedBy.$(LockID)=0..},sort=nearest] unless score @s ChuzItems.Lockon.$(LockID) matches 0.. run function chuzitems:item/shooting_star_longbow/common/chargeshot/give_id with storage chuz:context