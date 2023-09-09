#> chuzitems:item/weapon/rod_of_darkness_laser/event/right/
#
# 
#
# @within function chuzitems:item/weapon/rod_of_darkness_laser/main

# 使用者です
    tag @s add This

# ビーム
    execute anchored eyes positioned ^ ^ ^2 summon item_display run function chuzitems:item/weapon/rod_of_darkness_laser/event/right/init

# 演出
    playsound chuzume:blaster2 neutral @a ~ ~ ~ 2 2
    #playsound chuzume:blaster2 neutral @a ~ ~ ~ 5 2
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 2 1.6

# タグ解除
    tag @s remove This
