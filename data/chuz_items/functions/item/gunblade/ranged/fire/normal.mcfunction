# 俺が実行者だ
    tag @s add This

# リコイル開始
    data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-1.5f],Smooth:5,WaitTick:0}
    function yv_recoil:

# 発砲
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 0.5
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 3 2
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    execute positioned ^ ^-0.4 ^1.0 run playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.8
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:block.chain.break player @a ~ ~ ~ 2 2

# 弾を召喚
    # 腰だめ
        particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
        execute unless score @s ChuzItems.BurstCount matches 1.. run summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","ChuzItems.RecursiveBullet","ChuzItems.Projectile.Normal","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:6.0,HeadDamage:8.0,Speed:60,Range:400,Distance:10.0f,Spread:0.1f}}}
        execute if score @s ChuzItems.BurstCount matches 1.. run summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","ChuzItems.RecursiveBullet","ChuzItems.Projectile.Normal","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:6.0,HeadDamage:8.0,Speed:60,Range:400,Distance:10.0f,Spread:1.0f}}}

# 弾丸にInit処理
    execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/projectile/recursive_bullet/init

# 弾が減る
    execute in overworld run function chuz_items:item/consume_ammo

# リセット
    scoreboard players remove @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstCount 1
    scoreboard players reset @s ChuzItems.Charge
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload
    tag @s remove This