#> chuzitems:entity/beam_emitter/tick
#
# 
#
# @within function chuzitems:tick

#> ビームPos
# @private
    #declare tag BeamPos

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

#> インターバル処理
    # 実行時間を移す
        scoreboard players operation $Interval Chuz.Temporary = @s ChuzItems.Tick
    # 2Tick
        scoreboard players operation $Interval Chuz.Temporary %= $2 Chuz.Const

# 射撃
    execute if score $Interval Chuz.Temporary matches 0 run function chuzitems:entity/beam_emitter/spread_pos

# 時間経過で消える
    kill @s[scores={ChuzItems.Tick=20}]