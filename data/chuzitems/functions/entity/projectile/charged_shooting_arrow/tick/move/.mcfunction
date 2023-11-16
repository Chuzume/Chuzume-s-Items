#> chuzitems:entity/projectile/charged_shooting_arrow/tick/move/
#
# 
#
# @within function
#   chuzitems:entity/projectile/charged_shooting_arrow/tick/
#   chuzitems:entity/projectile/charged_shooting_arrow/tick/move/

# パーティクル
    execute if entity @s[scores={ChuzItems.Tick=2..}] run particle electric_spark ~ ~ ~ 0.05 0.05 0.05 0.1 1 force @a[distance=..120]
    execute if entity @s[scores={ChuzItems.Tick=2..}] run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0.0 1 force @a[distance=..120]
    particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0.0 1 force @a[distance=..120]

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# ヒット
    execute positioned ~-0.1 ~-0.1 ~-0.1 if entity @e[type=!#chuzitems:unhurtable,type=!ender_dragon,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,dx=0,sort=nearest,limit=1] positioned ~-0.8 ~-0.8 ~-0.8 if entity @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={Invulnerable:0b},dx=0,sort=nearest,limit=1] at @s run function chuzitems:entity/projectile/charged_shooting_arrow/tick/hit/

# 対ドラゴン
    execute at @s at @e[type=minecraft:ender_dragon,team=!Null,distance=..6,sort=nearest,limit=1] run function chuzitems:entity/projectile/charged_shooting_arrow/tick/hit/

# 壁の衝突判定
    execute unless block ^ ^ ^0.5 #chuzitems:no_collision run function chuzitems:entity/projectile/charged_shooting_arrow/tick/kill

# キル
    execute if entity @s[scores={Chuz.Range=0}] run function chuzitems:entity/projectile/charged_shooting_arrow/tick/kill

# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s run function chuzitems:entity/projectile/charged_shooting_arrow/tick/move/