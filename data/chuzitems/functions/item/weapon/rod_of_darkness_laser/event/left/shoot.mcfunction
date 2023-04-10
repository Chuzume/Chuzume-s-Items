#> chuzitems:item/weapon/rod_of_darkness_laser/event/left/shoot
#
# 
#
# @within function chuzitems:item/weapon/rod_of_darkness_laser/main

# 使用者です
    tag @s add This

# 演出
    execute positioned ^ ^-0.4 ^1.0 run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/sound

# ビーム
    execute anchored eyes positioned ^ ^-0.5 ^2 summon item_display run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/init

# タグ解除
    tag @s remove This