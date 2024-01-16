#> chuzitems:entity/particle/get_data
#
# 
#
# @within function chuzitems:entity/particle/tick

# フォント
    data modify storage chuz:context Particle.Font set from entity @s data.font

# カラー
    data modify storage chuz:context Particle.Color set from entity @s data.color

# フレーム、プラス1して保存
    execute store result score @s Chuz.Temporary run data get entity @s data.frame
    scoreboard players operation @s Chuz.Temporary += $1 Chuz.Const
    execute store result storage chuz:context Particle.Frame int 1 run scoreboard players get @s Chuz.Temporary
    scoreboard players reset @s Chuz.Temporary