#> chuzitems:item/ricochet_glaive/common/main
#
# 
#
# @within function
#   chuzitems:item/ricochet_glaive/mainhand/standby/
#   chuzitems:item/ricochet_glaive/offhand/standby/

# チャージ中のパーティクル
    execute if score @s ChuzItems.Charge matches 1.. run function chuzitems:item/ricochet_glaive/common/charge/
