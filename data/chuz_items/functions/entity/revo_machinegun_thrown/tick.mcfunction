#> chuz_items:entity/revo_machinegun_thrown/tick
#
# 
#
# @within function chuz_items:entity/projectile/check

# パーティクル
    particle minecraft:crit ~ ~0.5 ~ 0.2 0.2 0.2 0 1 force @a[distance=..30]
    particle minecraft:dust 0.3 1 1 0.8 ~ ~0.5 ~ 0.2 0.2 0.2 0 2 force @a[distance=..30]
    particle minecraft:dust 0 0.75 1 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 2 force @a[distance=..30]

# 接触で爆発
    # クールタイム加算
        scoreboard players add @s ChuzItems.CoolTime 1
    # 一定のクールタイムが過ぎたら、接触で爆発するようになる
        execute if entity @s[scores={ChuzItems.CoolTime=5..}] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#chuz_items:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,dx=0] run function chuz_items:entity/revo_machinegun_thrown/explode/active

# キル
    scoreboard players remove @s Chuz.Range 1
    execute if entity @s[scores={Chuz.Range=0}] run function chuz_items:entity/revo_machinegun_thrown/explode/active

# 反射テスト
    execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 rotated ~180 ~ positioned as @s positioned ^ ^ ^0.25 rotated as @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #chuz_items:no_collision positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 rotated ~180 ~ facing ^ ^ ^-1 positioned as @s run function chuz_items:entity/revo_machinegun_thrown/reflect
    execute at @s positioned ^ ^ ^0.25 rotated ~180 ~ positioned ^ ^ ^0.25 unless block ~ ~ ~ #chuz_items:no_collision facing ^ ^ ^-1 positioned as @s run function chuz_items:entity/revo_machinegun_thrown/reflect
    execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned ~ ~ 0.0 positioned ^ ^ ^-1 facing 0.0 0.0 0.0 rotated ~180 ~ positioned as @s positioned ^ ^ ^0.25 rotated as @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #chuz_items:no_collision positioned 0.0 0.0 0.0 positioned ^ ^ ^2 positioned ~ ~ 0.0 positioned ^ ^ ^-1 facing 0.0 0.0 0.0 rotated ~180 ~ facing ^ ^ ^-1 positioned as @s run function chuz_items:entity/revo_machinegun_thrown/reflect

# 重力無視飛行
    execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuz_items:no_collision run tp @s[tag=!ChuzItems.Reflected] ~ ~ ~
    execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuz_items:no_collision run tp @s[tag=!ChuzItems.Reflected] ~ ~ ~
    tag @s remove ChuzItems.Reflected

# モデルを回す
    execute store result entity @s Pose.Head[0] float 1 run scoreboard players add @s ChuzItems.ModelSpin 32
    scoreboard players reset @s[scores={ChuzItems.ModelSpin=360..}] ChuzItems.ModelSpin

# 起爆アラート
    #execute if entity @s[scores={Chuz.Range=..50}] if entity @a[distance=..4] run function chuz_items:entity/grenade/alert