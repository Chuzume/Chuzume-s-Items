#> chuzitems:item/weapon/wingman/gun/shot/
#
# 射撃モード時のメイン処理
#
# @within function chuzitems:item/weapon/wingman/gun/

# 俺が実行者だ
    tag @s add This

# 演出
    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound chuzume:rifle_shot player @a ~ ~ ~ 5 0.5
    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.5
    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 5 0.6
    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 5 1.8
    execute anchored eyes positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 3 1.5

# タグ付与: 通常射撃
    tag @s add ChuzItems.Shot.Normal

# クールタイム設定
    scoreboard players set @s ChuzItems.CoolTime 7

# リコイル
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 if entity @s[scores={ChuzItems.Recoil.Change=0..}] run data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-1.17f],Smooth:5,WaitTick:4}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 unless entity @s[scores={ChuzItems.Recoil.Change=0..}] run data modify storage yv:gun Recoil set value {Magnitude:[1.85f,-3.325f],Smooth:5,WaitTick:4}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 run function yv_recoil:

# 真上リコイルに変更
    scoreboard players set @s ChuzItems.Recoil.Change 12

# タグ付与: 通常射撃
    tag @s add ChuzItems.Shot.Normal

# 精度悪化
    #scoreboard players add @s ChuzItems.Spread 20
    #scoreboard players set @s[scores={ChuzItems.Spread=50..}] ChuzItems.Spread 50

# 弾を召喚
    execute anchored eyes run summon marker ^-0.25 ^ ^ {Tags:["Chuz.Projectile","ChuzItems.RecursiveBullet","ChuzItems.Projectile.Wingman","Chuz.UUIDAttack","Chuz.Init"],data:{ChuzData:{BodyDamage:8.0,HeadDamage:16.0,Speed:45,Range:400,Distance:3.0f,Spread:0.1f}}}
    execute as @e[type=marker,tag=Chuz.Init,distance=..100,limit=1] at @s run function chuzitems:entity/projectile/recursive_bullet/init

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo

# タグ
    tag @s remove This