#> chuzitems:item/weapon/rod_of_light/left/shoot
#
# 
#
# @within function chuzitems:item/weapon/rod_of_light/main


# 使用者です
    tag @s add This

# 演出
    execute positioned ^ ^ ^1 run playsound chuzume:blaster2 player @a ~ ~ ~ 2.5 2
    execute positioned ^ ^ ^1 run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 2.5 2
    execute positioned ^ ^ ^1 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2.5 2

# 輪っかパーティクル
    execute positioned ^ ^ ^1 rotated ~ ~90 run function chuzitems:item/weapon/rod_of_light/left/particle

# 射撃攻撃
    execute summon marker run function chuzitems:item/weapon/rod_of_light/left/init

# 使用者解除
    tag @s remove This