# 弾を召喚
    summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","ChuzItems.RecursiveBullet","ChuzItems.Projectile.Shell","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:2.0,HeadDamage:3.0,Speed:45,Range:160,Distance:10.0f,Spread:2.0f}}}

# 弾丸にInit処理
    execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuzitems:entity/projectile/recursive_bullet/init