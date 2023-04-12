#> chuzitems:item/weapon/rod_of_darkness_laser/event/left/shoot
#
# 
#
# @within function chuzitems:item/weapon/rod_of_darkness_laser/main

# 使用者です
    tag @s add This

# 演出
    execute positioned ^ ^-0.4 ^1.0 run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/sound

# 再帰スタート
    #execute anchored eyes positioned ^ ^-0.5 ^2 run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/

# 再帰スタート(直接座標)
    execute anchored eyes positioned ^ ^-0.5 ^2 facing 0 115 0 run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/

# ビーム
    #execute anchored eyes positioned ^ ^-0.5 ^2 summon item_display run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/init

# タグ解除
    tag @s remove This