#> chuzitems:item/shooting_star_longbow/common/chargeshot/give_id
#
# 
#

# 数値IDを割り振る
    scoreboard players add @p[tag=This] ChuzItems.ShootingStar.LockCount 1
    scoreboard players operation @s ChuzItems.Lockon.1 = @p[tag=This] ChuzItems.ShootingStar.LockCount