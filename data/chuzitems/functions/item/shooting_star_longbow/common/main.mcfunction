#> chuzitems:item/shooting_star_longbow/common/main
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/mainhand/standby/

# 弓を撃ったことを検知
    execute if score @s ChuzItems.Bow matches 1.. run function chuzitems:item/shooting_star_longbow/common/shoot
