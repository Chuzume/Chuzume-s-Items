#> chuzitems:entity/projectile/recursive_bullet/hit/headshot
#
# 
#
# @within function chuzitems:entity/projectile/recursive_bullet/hit/damage


# 持ち主にヘッドショットタグ付与
    execute as @e[tag=Chuz.Projectile,distance=..100,sort=nearest,limit=1] at @a if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add ChuzItems.HeadShot 

# ヒット者にしか見えないパーティクル
    execute at @s anchored eyes run particle end_rod ^ ^ ^ 0 0 0 0.1 3 force @p[tag=ChuzItems.HeadShot,distance=..120]

# ダメージタイプを移す
    data modify storage lib: DamageType set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Head

# ダメージを設定
    execute store result storage lib: Damage int 1 run data get storage lib: ChuzDamage.Head