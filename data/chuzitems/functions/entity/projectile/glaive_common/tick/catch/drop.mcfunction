#> chuzitems:entity/photon_glaive/tick/catch/drop
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/catch/death

# その場に落とす
    loot spawn ~ ~ ~ loot chuzitems:item/photon_glaive

# 演出
    playsound minecraft:block.note_block.bit neutral @a ~ ~ ~ 1 0.5
    playsound minecraft:block.note_block.bit neutral @a ~ ~ ~ 1 0.6
    particle crit ~ ~ ~ 0 0 0 0.5 10
