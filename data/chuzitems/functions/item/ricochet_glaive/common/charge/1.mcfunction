#> chuzitems:item/ricochet_glaive/common/charge/1
#
# 
#
# @within function chuzitems:item/ricochet_glaive/common/charge/

# パーティクル
    execute rotated 0 0 run function chuzitems:item/ricochet_glaive/common/charge/shape/1
    execute rotated 0 0 run function chuzitems:item/ricochet_glaive/common/charge/shape/0

# サウンド
    playsound chuzume:cyber19_1 player @s ~ ~ ~ 1 2
    playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1.5 2
    playsound minecraft:block.iron_trapdoor.open player @a ~ ~ ~ 1 2