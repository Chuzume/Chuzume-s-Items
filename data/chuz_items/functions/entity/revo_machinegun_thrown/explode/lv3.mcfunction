#> chuz_items:entity/revo_machinegun_thrown/explode/lv3
#
# 大爆発
#
# @within function chuz_items:entity/revo_machinegun_thrown/explode/active

# パーティクル
    particle explosion_emitter ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..50]
    particle minecraft:dust 0.3 1 1 2 ~ ~0.75 ~ 2 2 2 0 50 force @a[distance=..50]
    particle minecraft:dust 0 0.75 1 1.5 ~ ~0.75 ~ 2 1 2 0 50 force @a[distance=..50]
    particle end_rod ~ ~0.75 ~ 0.5 0.5 0.5 0.3 30 force @a[distance=..50]


# サウンド
    playsound minecraft:entity.zombie.attack_iron_door neutral @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 4 2
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 4 1.5

# 何で攻撃されたのかタグ付与
    #tag @s add ChuzItems.Hit.Bullet

# ダメージ設定
    data modify storage csr_score_damage: Damage set value 15.0f

# ダメージを与える
    execute as @e[type=!#chuz_items:unhurtable,nbt={Invulnerable:0b},distance=..4] at @s run function csr_score_damage:api/attack
    data remove storage csr_score_damage: Damage

# キル
    kill @s