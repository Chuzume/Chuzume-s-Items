#> chuzitems:entity/projectile/photon_glaive/tick/pull/player
#
# プレイヤー側の処理
#
# @within function chuzitems:entity/projectile/photon_glaive/tick/pull/


# 飛ばす
    scoreboard players set $strength delta.api.launch 6000
    execute positioned ~ ~ ~ run function delta:api/launch_looking

# 落下耐性
    scoreboard players set @s ChuzItems.FallResistTime 30

# 落下速度を抑える
    summon area_effect_cloud ~ ~ ~ {Particle:"crit",Radius:0.1f,Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:0b,duration:2,show_particles:0b}]}