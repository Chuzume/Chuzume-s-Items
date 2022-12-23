#> chuz_items:item/mozambique/gun/shot/ads
#
# 
#
# @within function chuz_items:item/mozambique/gun/

# 演出
    execute at @s run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.5
    execute at @s run playsound minecraft:block.chain.break player @a ~ ~ ~ 4 2
    execute at @s run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 5 2
    execute at @s run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 5 1.5

# タグ付与: ADS射撃
    tag @s add ChuzItems.Shot.ADS

# クールタイム設定
    scoreboard players set @s ChuzItems.CoolTime 7

# 弾を召喚
    # 上
        execute anchored eyes run summon marker ^ ^ ^ {Tags:["ChuzItems.Projectile","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:2.5,HeadDamage:4.0,Speed:10,Range:200,Spread:0.0f}}}
        execute anchored eyes run summon marker ^ ^0.25 ^10 {Tags:["SpreadMarker"]}
        tag @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] add ChuzItems.Projectile.Mozambique
        execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/projectile/common/init

    # 下
        execute anchored eyes run summon marker ^ ^ ^ {Tags:["ChuzItems.Projectile","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:2.5,HeadDamage:4.0,Speed:10,Range:200,Spread:0.0f}}}
        execute anchored eyes run summon marker ^0.15 ^-0.15 ^10 {Tags:["SpreadMarker"]}
        tag @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] add ChuzItems.Projectile.Mozambique
        execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/projectile/common/init

    # 下2
        execute anchored eyes run summon marker ^ ^ ^ {Tags:["ChuzItems.Projectile","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:2.5,HeadDamage:4.0,Speed:10,Range:200,Spread:0.0f}}}
        execute anchored eyes run summon marker ^-0.15 ^-0.15 ^10 {Tags:["SpreadMarker"]}
        tag @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] add ChuzItems.Projectile.Mozambique
        execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuz_items:entity/projectile/common/init

# 弾が減る
    execute in overworld run function chuz_items:item/consume_ammo

