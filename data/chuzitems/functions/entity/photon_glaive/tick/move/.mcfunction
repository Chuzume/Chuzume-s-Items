#> chuzitems:entity/photon_glaive/tick/move/
#
# 
#
# @within function
#   chuzitems:entity/photon_glaive/tick/
#   chuzitems:entity/photon_glaive/tick/move/

# 移動
    #tp @s ~ ~ ~

# パーティクル
    function chuzitems:entity/photon_glaive/tick/move/particle_charge0

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~

# 飛距離0なら壁を無視するようになる
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=..0}] at @s positioned ^ ^ ^0.5 run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s run function chuzitems:entity/photon_glaive/tick/move/
