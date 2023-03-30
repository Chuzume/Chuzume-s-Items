#> chuzitems:entity/projectile/recursive_bullet/hit
#
# 弾がエンティティに当たったときの処理
#
# @within function chuzitems:entity/projectile/recursive_bullet/move

# OMD宣言
    function oh_my_dat:please

# ターゲットを特定
    tag @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={Invulnerable:0b},dx=0,sort=nearest,limit=1] add Chuz.TargetEntity

# もし使用者自身に当たったなら、なかったことにする
    execute store success score @s Chuz.HitCheck if score @s Chuz.EntityID = @e[type=!#chuzitems:unhurtable,tag=Chuz.TargetEntity,sort=nearest,limit=1] Chuz.PlayerID
    #scoreboard players set @s Chuz.HitCheck 0

# ダメージの数値を移す
    execute store result storage csr_score_damage: ChuzDamage.Body int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.BodyDamage
    execute store result storage csr_score_damage: ChuzDamage.Head int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.HeadDamage

# ダメージを与える
    execute if score @s Chuz.HitCheck matches 0 at @s as @e[type=!#chuzitems:unhurtable,tag=Chuz.TargetEntity,sort=nearest,limit=1] at @s run function chuzitems:entity/projectile/recursive_bullet/hit_damage

# 消失
    execute if score @s Chuz.HitCheck matches 0 at @s run function chuzitems:entity/projectile/recursive_bullet/break