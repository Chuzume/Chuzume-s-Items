#> chuzitems:entity/photon_glaive/tick/quick_return/discharge
#
# チャネリングボム
#
# @within function chuzitems:entity/photon_glaive/tick/quick_return/

# パーティクル
    execute rotated 0 0 run function chuzitems:entity/photon_glaive/tick/quick_return/discharge_shape
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 2 force @a[distance=..30]

# サウンド
    playsound chuzume:blaster1 neutral @a ~ ~ ~ 3 1.7
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 3 1.5
