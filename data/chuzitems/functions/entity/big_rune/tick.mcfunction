#> chuzitems:entity/big_rune/tick
#
# 
#
# @within function chuzitems:tick

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

#> インターバル処理
    # 実行時間を移す
        scoreboard players operation $Interval Chuz.Temporary = @s ChuzItems.Tick
    # 2Tick
        scoreboard players operation $Interval Chuz.Temporary %= $4 Chuz.Const

# 最初でサイズ変わる
    execute if score @s ChuzItems.Tick matches 2 run function chuzitems:entity/big_rune/transform
    execute if score @s ChuzItems.Tick matches 290 run function chuzitems:entity/big_rune/despawn

# 召喚
    execute if score @s ChuzItems.Tick matches 60 run summon minecraft:marker ~ ~ ~ {Tags:[BeamEmitter]}


# 消える    
    #execute if score @s ChuzItems.Tick matches 20 run function chuzitems:entity/beam_rune/despawn
    execute if score @s ChuzItems.Tick matches 310 run kill @s