
# パーティクル
    particle minecraft:dust 1 0.5 0 0.4 ^ ^ ^ 0 0 0 0 1 force
    particle minecraft:dust 1 0 0 0.2 ^ ^ ^ 0 0 0 0 1 force

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 positioned ~0.3 ~-0.1 ~0.3 if entity @e[dx=0,type=!#chuz_items:unhurtable,type=!ender_dragon,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#chuz_items:unhurtable,nbt={Invulnerable:0b},sort=nearest,limit=1] at @s run function chuz_items:entity/projectile/common/hit

# 対ドラゴン
#    execute at @s at @e[type=minecraft:ender_dragon,team=!null,distance=..6,sort=nearest,limit=1] run function chuz_items:entity/projectile/common/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #chuz_items:no_collision run function chuz_items:entity/projectile/common/break
    
# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] at @s run function chuz_items:entity/shell_enemy/move

# キル
    execute if entity @s[scores={Chuz.Range=0}] run kill @s