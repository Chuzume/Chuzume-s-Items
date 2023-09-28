#> chuzitems:entity/photon_glaive/tick/move/
#
# 
#
# @within function
#   chuzitems:entity/photon_glaive/tick/
#   chuzitems:entity/photon_glaive/tick/move/

# パーティクル
    # チャージ0
        execute if score @s ChuzItems.Projectile.Charge matches 0 run function chuzitems:entity/photon_glaive/tick/move/particle_charge0
    # チャージ1
        execute if score @s ChuzItems.Projectile.Charge matches 1 run function chuzitems:entity/photon_glaive/tick/move/particle_charge1
    # チャージ2
        execute if score @s ChuzItems.Projectile.Charge matches 2 run function chuzitems:entity/photon_glaive/tick/move/particle_charge2

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    #execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=-70..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~

# 飛距離0なら壁を無視するようになる
    #execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=..0}] at @s positioned ^ ^ ^0.5 run tp @s ~ ~ ~

# アイテムを吸い込む
    execute at @s as @e[type=#chuzitems:vacuumable,distance=0.5..2] run function chuzitems:entity/photon_glaive/tick/vacuum

# 途中で壁貫通して無理やり帰ってくる
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=..-70}] at @s positioned ^ ^ ^0.5 run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# ヒット
    execute at @s positioned ~-0.75 ~-0.75 ~-0.75 at @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,dx=0.5,dy=0.5,dz=0.5] run function chuzitems:entity/photon_glaive/tick/hit/

# キャッチ
    execute if entity @s[scores={Chuz.Range=..0}] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=Chuz.ID.Target,dx=0] at @s run function chuzitems:entity/photon_glaive/tick/catch
    
# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s run function chuzitems:entity/photon_glaive/tick/move/
