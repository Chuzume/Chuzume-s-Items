#> chuzitems:item/shooting_star_longbow/common/chargeshot/
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/shoot

# 連射設定
    scoreboard players set @s ChuzItems.BurstCount 5

# サウンド
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 2 2
    playsound chuzume:blaster1 player @a ~ ~ ~ 2 2