#> chuzitems:entity/photon_glaive/tick/pull
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/

# 飛ばす
    scoreboard players set $strength delta.api.launch 2000
    execute positioned ~ ~ ~ run function delta:api/launch_looking

# 落下速度を抑える
    summon area_effect_cloud ~ ~ ~ {Particle:"crit",Radius:0.1f,Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:0b,duration:10,show_particles:0b}]}