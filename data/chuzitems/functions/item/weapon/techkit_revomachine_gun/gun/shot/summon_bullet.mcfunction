#> chuzitems:item/weapon/techkit_revomachine_gun/gun/shot/summon_bullet
#
# 弾丸を召喚する
#
# @within function chuzitems:item/weapon/techkit_revomachine_gun/gun/shot/

summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.RecursiveBullet","ChuzItems.Projectile.RevoBullet","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:4.0,HeadDamage:5.0,Speed:20,Range:400,Distance:3.0f,Spread:0.1f}}}
execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuzitems:entity/projectile/recursive_bullet/init