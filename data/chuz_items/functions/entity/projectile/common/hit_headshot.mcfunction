

# 何で攻撃されたのかタグ付与
    tag @s remove ChuzItems.Hit.Bullet
    tag @s add ChuzItems.Hit.BulletHS

# 当てるといい音が鳴る
    execute as @e[tag=ChuzItems.Projectile,tag=!ChuzItems.Shell,sort=nearest,limit=1] at @a if score @s Chuz.EntityID = @p Chuz.PlayerID run playsound entity.arrow.hit_player player @p ~ ~ ~ 2 1
    execute as @e[tag=ChuzItems.Projectile,tag=ChuzItems.Shell,sort=nearest,limit=1] at @a if score @s Chuz.EntityID = @p Chuz.PlayerID run playsound entity.arrow.hit_player player @p ~ ~ ~ 0.5 1

# 胴体ダメージ削除
    data remove storage csr_score_damage: ChuzDamage.Body

# ダメージを設定
    execute store result storage csr_score_damage: Damage int 1 run data get storage csr_score_damage: ChuzDamage.Head

# サウンドなど
    execute at @s anchored eyes run particle end_rod ^ ^ ^ 0 0 0 0.1 3 force