#> chuzitems:entity/revo_machinegun_thrown/explode/lv3
#
# 大爆発
#
# @within function chuzitems:entity/revo_machinegun_thrown/explode/active

# パーティクル
    particle explosion_emitter ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..50]
    particle minecraft:dust 0.3 1 1 2 ~ ~0.75 ~ 2 2 2 0 50 force @a[distance=..50]
    particle minecraft:dust 0 0.75 1 1.5 ~ ~0.75 ~ 2 1 2 0 50 force @a[distance=..50]
    particle end_rod ~ ~0.75 ~ 0.5 0.5 0.5 0.3 30 force @a[distance=..50]


# サウンド
    playsound minecraft:entity.zombie.attack_iron_door neutral @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 4 2
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 4 1.5

# キルログ設定
    #data modify storage chuz:context DeathMessage set value '{"translate": "%2$sが投げた%3$sは、%1$sを消し飛ばした","with":[{"selector":"@s"},{"selector":"@p[tag=This]"},{"text":"Techkit: Revomachine Gun","color":"#37CDFF"}]}'

# ダメージタイプを移す
    data modify storage lib: DamageType set value "chuzitems:thrown_gun"

# ダメージ設定
    data modify storage lib: Damage set value 15

# ダメージを与える
    execute as @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={Invulnerable:0b},distance=..4] at @s run function chuzitems:lib/storage_damage with storage lib:
    data remove storage lib: Damage

# キル
    kill @s