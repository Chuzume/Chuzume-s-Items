#> chuzitems:entity/projectile/photon_glaive/tick/quick_return/discharge
#
# チャネリングボム
#
# @within function chuzitems:entity/projectile/photon_glaive/tick/quick_return/

# パーティクル
    execute rotated 0 0 run function chuzitems:entity/projectile/photon_glaive/tick/quick_return/discharge_shape
    particle minecraft:explosion ~ ~ ~ 0 0 0 1 2 force @a[distance=..30]

# サウンド
    playsound chuzume:blaster1 neutral @a ~ ~ ~ 2 1.7
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 2 1.5

# ダメージ
    execute as @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,distance=..2.5] run damage @s 10 minecraft:player_attack by @p[tag=Chuz.ID.Target]