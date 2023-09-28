#> chuzitems:entity/photon_glaive/tick/pull/player
#
# プレイヤー側の処理
#
# @within function chuzitems:entity/photon_glaive/tick/pull/


# 飛ばす
    scoreboard players set $strength delta.api.launch 3000
    execute positioned ~ ~ ~ run function delta:api/launch_looking

# 落下耐性
    scoreboard players set @s ChuzItems.FallResistTime 30

# 落下速度を抑える
    summon area_effect_cloud ~ ~ ~ {Particle:"crit",Radius:0.1f,Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:0b,duration:2,show_particles:0b}]}

# 持ち主の胴体を狙う
    execute anchored eyes positioned ^ ^-0.5 ^ run summon marker ~ ~ ~ {Tags:["Chuz.BodyMarker"]}