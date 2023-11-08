#> chuzitems:entity/projectile/charged_shooting_arrow/tick/move/
#
# 
#
# @within function
#   chuzitems:entity/projectile/charged_shooting_arrow/tick/
#   chuzitems:entity/projectile/charged_shooting_arrow/tick/move/

# パーティクル
    particle end_rod ~ ~ ~ 0 0 0 0.0 1 force @a[distance=..120]


# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# ヒット
    #execute at @s positioned ~-0.75 ~-0.75 ~-0.75 at @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,dx=0.5,dy=0.5,dz=0.5] run function chuzitems:entity/photon_glaive/tick/hit/

# 壁の衝突判定
    execute unless block ^ ^ ^0.5 #chuzitems:no_collision run kill @s

# キル
    execute if entity @s[scores={Chuz.Range=0}] run kill @s

# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s run function chuzitems:entity/projectile/charged_shooting_arrow/tick/move/
