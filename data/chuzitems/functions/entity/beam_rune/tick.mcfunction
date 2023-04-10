#> chuzitems:entity/beam_rune/tick
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
    execute if score @s ChuzItems.Tick matches 2 run function chuzitems:entity/beam_rune/spawn

# 消える    
    execute if score @s ChuzItems.Tick matches 20 run function chuzitems:entity/beam_rune/despawn
    execute if score @s ChuzItems.Tick matches 25 run kill @s


# 回転
    #execute if score @s ChuzItems.Tick matches 5.. if score $Interval Chuz.Temporary matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:6,transformation:{left_rotation:{axis:[0.0f,0.0f,1.0f],angle:2.1f}}}
