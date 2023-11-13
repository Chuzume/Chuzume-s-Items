#> chuzitems:item/shooting_star_longbow/common/chargeshot/count_lock
#
# ロック数をチェック
#

# ロック対象として実行
$execute at @e[scores={ChuzItems.LockedBy.$(LockID)=0..}] run scoreboard players add @s ChuzItems.ShootingStar.LockCount 1
