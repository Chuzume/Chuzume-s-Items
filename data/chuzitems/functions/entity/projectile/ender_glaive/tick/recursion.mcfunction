#> chuzitems:entity/projectile/ender_glaive/tick/recursion
#
# 
#
# @within function
#   chuzitems:entity/projectile/ender_glaive/tick/
#   chuzitems:entity/projectile/ender_glaive/tick/recursion

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=0..}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #chuzitems:no_collision run tp @s ~ ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# パーティクル
    # チャージ0
        execute if score @s ChuzItems.Projectile.Charge matches 0 run function chuzitems:entity/projectile/ender_glaive/tick/particle/charge0
    # チャージ1
        execute if score @s ChuzItems.Projectile.Charge matches 1 run function chuzitems:entity/projectile/ender_glaive/tick/particle/charge1

# ワープで戻ってくる
    execute if entity @s[scores={Chuz.Range=..-40}] run function chuzitems:entity/projectile/ender_glaive/tick/catch/
    execute if entity @s[scores={Chuz.Range=..-40}] run function chuzitems:entity/projectile/ender_glaive/tick/catch/vfx

# アイテムを吸い込む
    execute at @s run function chuzitems:entity/projectile/glaive_common/tick/vacuum

# ヒット
    execute at @s positioned ~-0.75 ~-0.75 ~-0.75 at @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,dx=0.5,dy=0.5,dz=0.5] run function chuzitems:entity/projectile/photon_glaive/tick/hit/

# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..}] at @s run function chuzitems:entity/projectile/ender_glaive/tick/recursion