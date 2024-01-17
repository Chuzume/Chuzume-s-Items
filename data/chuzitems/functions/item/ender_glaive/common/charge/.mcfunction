#> chuzitems:item/ender_glaive/common/charge/
#
# 
#
# @within function chuzitems:item/ender_glaive/common/main

# パーティクル
    execute if score @s ChuzItems.Charge matches ..9 run particle dust_color_transition 0.5 0 0.5 0.7 1 0.3 1 ~ ~0.1 ~ 0.3 0 0.3 0 5 force @a[distance=..30]
    execute if score @s ChuzItems.Charge matches 10.. run particle dust_color_transition 1 0 1 1 1 1 1 ~ ~0.1 ~ 0.3 0 0.3 0 5 force @a[distance=..30]

# チャージ1
    execute if score @s ChuzItems.Charge matches 10 positioned ~ ~0.1 ~ run function chuzitems:item/ender_glaive/common/charge/1