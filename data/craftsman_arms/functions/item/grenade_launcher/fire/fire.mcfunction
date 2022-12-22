# 弾を召喚
    execute anchored eyes run summon armor_stand ^-0.25 ^ ^ {Silent:1b,Marker:1b,Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init"],ArmorItems:[{id:"minecraft:structure_void",Count:1b,tag:{ChuzData:{Damage:2.0,HeadDamage:1.0,Speed:45,Range:160}}},{},{},{}]}
    execute at @s run function craftsman_arms:item/shotgun/fire/spread

# 弾丸にInit処理
    execute as @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] at @s run function craftsman_arms:entity/shell/init
