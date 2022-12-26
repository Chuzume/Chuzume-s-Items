#> chuz_items:item/mozambique/gun/shot/
#
# 射撃モード時のメイン処理
#
# @within function chuz_items:item/mozambique/gun/

# 演出
    execute positioned ^ ^-0.4 ^0.5 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.5
    execute positioned ^ ^-0.4 ^0.5 run playsound minecraft:block.chain.break player @a ~ ~ ~ 4 2
    execute positioned ^ ^-0.4 ^0.5 run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 5 2
    execute positioned ^ ^-0.4 ^0.5 run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 5 1.5

# タグ付与: 通常射撃
    tag @s add ChuzItems.Shot.Normal

# クールタイム設定
    scoreboard players set @s ChuzItems.CoolTime 7

# 弾を召喚
    # 上
        summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","ChuzItems.RecursiveBullet","ChuzItems.Projectile.Mozambique","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:2.5,HeadDamage:4.0,Speed:10,Range:200,Spread:0.0f}}}
        summon marker ^ ^0.25 ^10 {Tags:["SpreadMarker"]}
        execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/projectile/common/init

    # 下
        summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","ChuzItems.RecursiveBullet","ChuzItems.Projectile.Mozambique","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:2.5,HeadDamage:4.0,Speed:10,Range:200,Spread:0.0f}}}
        summon marker ^0.25 ^-0.25 ^10 {Tags:["SpreadMarker"]}
        execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/projectile/common/init

    # 下2
        summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","ChuzItems.RecursiveBullet","ChuzItems.Projectile.Mozambique","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:2.5,HeadDamage:4.0,Speed:10,Range:200,Spread:0.0f}}}
        summon marker ^-0.25 ^-0.25 ^10 {Tags:["SpreadMarker"]}
        execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/projectile/common/init

# 弾が減る
    execute in overworld run function chuz_items:item/consume_ammo

