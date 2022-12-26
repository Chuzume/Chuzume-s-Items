

# 何で攻撃されたのかタグ付与
    tag @s remove ChuzItems.Hit.Bullet
    tag @s add ChuzItems.Hit.BulletHS

# 持ち主にヘッドショットタグ付与
    execute as @e[tag=Chuz.Projectile,distance=..100,sort=nearest,limit=1] at @a if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add ChuzItems.HeadShot 

# 胴体ダメージ削除
    data remove storage csr_score_damage: ChuzDamage.Body

# ダメージを設定
    execute store result storage csr_score_damage: Damage int 1 run data get storage csr_score_damage: ChuzDamage.Head

# サウンドなど
    execute at @s anchored eyes run particle end_rod ^ ^ ^ 0 0 0 0.1 3 force @a[distance=..60]