#> chuzitems:item/shooting_star_longbow/common/lockon/hit/check
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/hit/

# スコアボード作成
    $scoreboard objectives add ChuzItems.Lockon.$(LockID) dummy
    $scoreboard objectives add ChuzItems.LockonTime.$(LockID) dummy
    $scoreboard objectives add ChuzItems.LockedBy.$(LockID) dummy

# ロック成功
    $execute unless score @s ChuzItems.LockedBy.$(LockID) matches 0.. run function chuzitems:item/shooting_star_longbow/common/lockon/hit/success with storage chuz:context