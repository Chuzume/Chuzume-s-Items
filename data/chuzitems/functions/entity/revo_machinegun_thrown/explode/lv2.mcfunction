#> chuzitems:entity/revo_machinegun_thrown/explode/lv2
#
# 中爆発
#
# @within function chuzitems:entity/revo_machinegun_thrown/explode/active

# パーティクル
    particle explosion ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..50]
    particle explosion ~ ~0.75 ~ 0.7 0.7 0.7 0 3 force @a[distance=..50]
    particle minecraft:dust 0.3 1 1 1.3 ~ ~0.75 ~ 0.7 0.7 0.7 0 25 force @a[distance=..50]
    particle minecraft:dust 0 0.75 1 1 ~ ~0.75 ~ 0.7 0.7 0.7 0 25 force @a[distance=..50]
    particle end_rod ~ ~0.75 ~ 0.3 0.3 0.3 0.2 20 force @a[distance=..50]

# サウンド
    playsound minecraft:entity.zombie.attack_iron_door neutral @a ~ ~ ~ 2 2
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 3 2

# キルログ設定
    data modify storage chuz:context DeathMessage set value '{"translate": "%1$sは%2$sに%3$sをぶつけられた","with":[{"selector":"@s"},{"selector":"@p[tag=This]"},{"text":"Techkit: Revomachine Gun","color":"#37CDFF"}]}'

# ダメージ設定
    data modify storage csr_score_damage: Damage set value 10.0f

# ダメージを与える
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={Invulnerable:0b},dx=0] as @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={Invulnerable:0b},distance=..2] at @s run function csr_score_damage:api/attack
    data remove storage csr_score_damage: Damage

# キル
    kill @s