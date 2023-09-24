#> chuzitems:entity/photon_glaive/tick/ricochet/hit_wall
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/ricochet/

# これで向きを変える
    tp @s ~ ~ ~ ~ ~

# 演出
    playsound minecraft:block.note_block.bit neutral @a ~ ~ ~ 3 1
    playsound chuzume:blaster3 neutral @a ~ ~ ~ 3 2
    particle crit ~ ~0.5 ~ 0 0 0 0.5 10

# すぐさま移動しないようにタグ付与
    tag @s add ChuzItems.Reflected