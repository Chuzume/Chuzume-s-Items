#> chuzitems:item/directional_jump_boots/out_of_fallresist
#
# 落下無敵の時間切れ
#
# @within function chuzitems:item/directional_jump_boots/main

# 演出
    particle minecraft:smoke ~ ~0.1 ~ 0.3 0 0.3 0 20

# リセット
    scoreboard players reset @s ChuzItems.FallResistTime
    tag @s add ChuzItems.JumpBoots.TimeOut