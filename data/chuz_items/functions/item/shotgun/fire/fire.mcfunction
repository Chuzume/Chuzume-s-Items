# 弾を召喚
    execute anchored eyes run summon marker ^-0.25 ^ ^ {Tags:["S.Rif_Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init"],data:{ChuzData:{BodyDamage:2.0,HeadDamage:3.0,Speed:45,Range:160,Distance:10.0f,Spread:2.0f}}}

# 弾丸にInit処理
    tag @e[type=marker,tag=Chuz.Projectile_Init,limit=1] add S.Rif_Shell
    execute as @e[type=marker,tag=Chuz.Projectile_Init,limit=1] at @s run function chuz_items:entity/projectile_common/init