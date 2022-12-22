# 俺が実行者だ
    tag @s add Chuz.This
    
# 発砲
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.5
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.7
    playsound minecraft:block.chain.break player @a ~ ~ ~ 4 1.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 5 1

# 弾を召喚
    # 腰だめ
        execute if entity @s[tag=!Chuz.UsingSpyglass] anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
        execute if entity @s[tag=!Chuz.UsingSpyglass] anchored eyes run summon marker ^-0.25 ^ ^ {Tags:["ChuzItems.Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init"],data:{ChuzData:{BodyDamage:7.0,HeadDamage:14.0,Speed:90,Range:800,Distance:10.0f,Spread:0.1f}}}

    # スコープ！
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run particle smoke ^ ^ ^0.7 0 0 0 0.05 2
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run summon marker ^ ^-0.15 ^ {Tags:["ChuzItems.Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init"],data:{ChuzData:{BodyDamage:7.0,HeadDamage:14.0,Speed:90,Range:800,Distance:10.0f,Spread:0.0f}}}
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run summon marker ^ ^-0.15 ^10 {Tags:["Chuz.Spread"]}

# 弾丸にInit処理
    tag @e[type=marker,tag=Chuz.Projectile_Init,limit=1] add ChuzItems.Bullet
    execute as @e[type=marker,tag=Chuz.Projectile_Init,limit=1] at @s run function chuz_items:entity/projectile_common/init

# 弾が減る
    execute in overworld run function chuz_items:item/consume_ammo

# もう実行者ではない
    tag @s remove Chuz.This