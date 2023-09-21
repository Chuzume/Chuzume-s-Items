#> chuzitems:entity/revo_machinegun_thrown/explode/lv1
#
# 小爆発
#
# @within function chuzitems:entity/revo_machinegun_thrown/explode/active

# パーティクル
    particle explosion ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..50]
    particle minecraft:dust 0.3 1 1 1 ~ ~0.75 ~ 0.5 0.5 0.5 0 25 force @a[distance=..50]
    particle minecraft:dust 0 0.75 1 0.75 ~ ~0.75 ~ 0.5 0.5 0.5 0 25 force @a[distance=..50]
    particle end_rod ~ ~0.75 ~ 0.3 0.3 0.3 0.2 20 force @a[distance=..50]

# サウンド
    playsound minecraft:entity.zombie.attack_iron_door neutral @a ~ ~ ~ 2 2
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 3 2

# ダメージタイプを移す
    data modify storage lib: DamageType set value "chuzitems:thrown_gun"

# ダメージ設定
    data modify storage lib: Damage set value 5

# ダメージを与える
    execute as @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={Invulnerable:0b},distance=..4] at @s run function chuzitems:lib/storage_damage with storage lib:
    data remove storage lib: Damage

# キル
    kill @s