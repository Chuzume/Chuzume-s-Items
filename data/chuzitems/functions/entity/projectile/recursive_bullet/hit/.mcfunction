#> chuzitems:entity/projectile/recursive_bullet/hit/
#
# 
#
# @within function chuzitems:entity/projectile/recursive_bullet/move

# OMD宣言
    function oh_my_dat:please

# ターゲットを特定
    tag @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={Invulnerable:0b},dx=0,sort=nearest,limit=1] add Chuz.TargetEntity

# もし使用者自身に当たったなら、なかったことにする
    execute store success score @s Chuz.HitCheck if score @s Chuz.EntityID = @e[type=!#chuzitems:unhurtable,tag=Chuz.TargetEntity,sort=nearest,limit=1] Chuz.PlayerID

# ダメージの数値を移す
    execute store result storage lib: ChuzDamage.Body int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.BodyDamage
    execute store result storage lib: ChuzDamage.Head int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.HeadDamage

# ダメージ
    execute if score @s Chuz.HitCheck matches 0 at @s as @e[type=!#chuzitems:unhurtable,tag=Chuz.TargetEntity,sort=nearest,limit=1] at @s run function chuzitems:entity/projectile/recursive_bullet/hit/damage

# ヒット時イベント
    execute if score @s Chuz.HitCheck matches 0 run function chuzitems:entity/projectile/event/hit

# 消失
    execute if score @s Chuz.HitCheck matches 0 at @s run function chuzitems:entity/projectile/recursive_bullet/break

# リセット
    data remove storage lib: ChuzDamage
    tag @e[type=!#chuzitems:unhurtable,tag=Chuz.TargetEntity,sort=nearest,limit=1] remove Chuz.TargetEntity