#> chuzitems:item/shooting_star_longbow/common/lockon/hit/check
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/hit/


# 既にロックしてたら失敗
    #$execute if score @s ChuzItems.Lockon.$(LockID) matches 0.. run say yo

# ロック成功
    $execute unless score @s ChuzItems.Lockon.$(LockID) matches 0.. run function chuzitems:item/shooting_star_longbow/common/lockon/hit/success with storage chuz:context