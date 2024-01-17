#> chuzitems:item/ricochet_glaive/common/charge/
#
# 
#
# @within function chuzitems:item/ricochet_glaive/common/main

# パーティクル
    execute if score @s ChuzItems.Charge matches ..14 run particle dust_color_transition 0 0.5 0 0.7 0 1 0 ~ ~0.1 ~ 0.3 0 0.3 0 5 force @a[distance=..30]
    execute if score @s ChuzItems.Charge matches 15.. run particle dust_color_transition 0 1 0 1 1 1 1 ~ ~0.1 ~ 0.3 0 0.3 0 5 force @a[distance=..30]

# チャージ1
    execute if score @s ChuzItems.Charge matches 15 positioned ~ ~0.1 ~ run function chuzitems:item/ricochet_glaive/common/charge/1