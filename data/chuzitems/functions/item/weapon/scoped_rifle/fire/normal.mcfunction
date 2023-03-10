# 俺が実行者だ
    tag @s add This
    
# リコイル
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 run data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-1.17f],Smooth:5,WaitTick:0}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 run function yv_recoil:

# 発砲
    execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5 2
    execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:block.chain.break player @a ~ ~ ~ 4 1.5
    execute positioned ^ ^-0.2 ^1.0 run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 5 1
    execute positioned ^ ^-0.2 ^1.0 run playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.7

# 弾を召喚
    # 腰だめ
        execute if entity @s[tag=!Chuz.UsingSpyglass] run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
        execute if entity @s[tag=!Chuz.UsingSpyglass] run summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","ChuzItems.Projectile.Normal","ChuzItems.RecursiveBullet","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:7.0,HeadDamage:14.0,Speed:90,Range:800,Distance:10.0f,Spread:1.0f}}}

    # スコープ！
        execute if entity @s[tag=Chuz.UsingSpyglass] run particle smoke ^ ^ ^0.7 0 0 0 0.05 2
        execute if entity @s[tag=Chuz.UsingSpyglass] run summon marker ^ ^-0.15 ^ {Tags:["Chuz.Projectile","ChuzItems.Projectile.Normal","ChuzItems.RecursiveBullet","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:7.0,HeadDamage:14.0,Speed:90,Range:800,Distance:10.0f,Spread:0.0f}}}
        execute if entity @s[tag=Chuz.UsingSpyglass] run summon marker ^ ^-0.15 ^10 {Tags:["SpreadMarker"]}

# 弾丸にInit処理
    execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuzitems:entity/projectile/recursive_bullet/init

# 弾が減る
    function chuzitems:item/consume_ammo

# 

# もう実行者ではない
    tag @s remove This