#> chuzitems:entity/projectile/glaive_common/tick/move
#
# 
#

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=-40..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~

# 途中で壁貫通して無理やり帰ってくる
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=..-40}] at @s positioned ^ ^ ^0.5 run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1