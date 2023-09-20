#> chuzitems:entity/projectile/recursive_bullet/hit/damage
#
# 
#
# @within function chuzitems:entity/projectile/recursive_bullet/hit/

# エンドクリスタルを爆発させる
    damage @s[type=end_crystal] 0 minecraft:generic

# キルログ設定
    data modify storage chuz:context DeathMessage set value '{"translate": "%1$sは%2$sの%3$sで撃たれた","with":[{"selector":"@s"},{"selector":"@p[tag=This]"},{"nbt":"KillerItem.HoldItem","storage":"chuz:context","interpret":true}]}'

# ヒット音
    playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1

# 胴体ダメージ設定
    execute store result storage lib: Damage int 1 run data get storage lib: ChuzDamage.Body

# ダメージタイプを移す
    data modify storage lib: DamageType set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Body

# ヘッドショットかどうか
    execute anchored eyes positioned ^ ^ ^ positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=marker,tag=Chuz.Projectile,dx=0] run function chuzitems:entity/projectile/recursive_bullet/hit/headshot

# マクロでダメージ
    function chuzitems:lib/storage_damage with storage lib: