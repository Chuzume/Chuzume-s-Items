# 俺が実行者だ
    tag @s add Chuz.This
    
# 発砲
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 0.5
    playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 3 2
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.8
    playsound minecraft:block.chain.break player @a ~ ~ ~ 2 2

# 弾を召喚
    # 腰だめ
        execute anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
        execute unless score @s S.Rif_Burst matches 1.. anchored eyes run summon marker ^-0.25 ^ ^ {Tags:["S.Rif_Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init"],data:{ChuzData:{BodyDamage:6.0,HeadDamage:8.0,Speed:60,Range:400,Distance:10.0f,Spread:0.1f}}}
        execute if score @s S.Rif_Burst matches 1.. anchored eyes run summon marker ^-0.25 ^ ^ {Tags:["S.Rif_Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init"],data:{ChuzData:{BodyDamage:6.0,HeadDamage:8.0,Speed:60,Range:400,Distance:10.0f,Spread:1.0f}}}

# 弾丸にInit処理
    tag @e[type=marker,tag=Chuz.Projectile_Init,limit=1] add S.Rif_Bullet
    execute as @e[type=marker,tag=Chuz.Projectile_Init,limit=1] at @s run function chuz_items:entity/projectile_common/init

# 弾が減る
    execute in overworld run function chuz_items:item/consume_ammo

# リセット
    scoreboard players remove @s[scores={S.Rif_Burst=1..}] S.Rif_Burst 1
    scoreboard players reset @s S.Rif_Charge
    scoreboard players reset @s S.Rif_Ready
    scoreboard players reset @s S.Rif_Reload
    tag @s remove Chuz.This