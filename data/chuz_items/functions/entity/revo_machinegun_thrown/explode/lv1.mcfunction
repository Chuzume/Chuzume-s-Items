#> chuz_items:entity/revo_machinegun_thrown/explode/lv1
#
# 小爆発
#
# @within function chuz_items:entity/revo_machinegun_thrown/explode/active

# パーティクル
    particle explosion ~ ~0.75 ~ 0 0 0 0 0 force @a[distance=..50]
    particle minecraft:dust 0.3 1 1 1 ~ ~0.75 ~ 0.5 0.5 0.5 0 25 force @a[distance=..50]
    particle minecraft:dust 0 0.75 1 0.75 ~ ~0.75 ~ 0.5 0.5 0.5 0 25 force @a[distance=..50]
    particle end_rod ~ ~0.75 ~ 0.3 0.3 0.3 0.2 20 force @a[distance=..50]

# サウンド
    playsound minecraft:entity.zombie.attack_iron_door neutral @a ~ ~ ~ 2 2
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 3 2

# 何で攻撃されたのかタグ付与
    #tag @s add ChuzItems.Hit.Bullet

# ダメージ設定
    data modify storage csr_score_damage: Damage set value 5.0f

# ダメージを与える
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#chuz_items:unhurtable,nbt={Invulnerable:0b},dx=0] at @s run function csr_score_damage:api/attack
    data remove storage csr_score_damage: Damage

# キル
    kill @s