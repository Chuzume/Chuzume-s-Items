#> chuzitems:entity/photon_glaive/tick/tp_return/hit_wall
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/

# 飛距離0に 
    scoreboard players set @s Chuz.Range 0

# 演出
    playsound chuzume:blaster3 neutral @a ~ ~ ~ 3 2
    playsound minecraft:entity.item.break neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.hurt neutral @a ~ ~ ~ 2 2
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10