# 弾を召喚
    execute anchored eyes run summon marker ^-0.25 ^ ^1 {Tags:["Chuz.Projectile","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:2.0,HeadDamage:3.0,Speed:5,Range:160}}}
    execute at @s run function chuz_items:item/shotgun/fire/spread

# 弾丸にInit処理
    execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/shell_enemy/init
