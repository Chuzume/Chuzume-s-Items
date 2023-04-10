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

#> インターバル処理 どんどん射撃が加速していく
    # 実行時間を移す
        scoreboard players operation $Interval Chuz.Temporary = @s ChuzItems.Tick
    # 5Tick
        execute if score @s ChuzItems.Tick matches 10..29 run scoreboard players operation $Interval Chuz.Temporary %= $5 Chuz.Const
    # 4Tick
        execute if score @s ChuzItems.Tick matches 30..59 run scoreboard players operation $Interval Chuz.Temporary %= $4 Chuz.Const
    # 3Tick
        execute if score @s ChuzItems.Tick matches 60..89 run scoreboard players operation $Interval Chuz.Temporary %= $3 Chuz.Const
    # 2Tick
        execute if score @s ChuzItems.Tick matches 90..119 run scoreboard players operation $Interval Chuz.Temporary %= $2 Chuz.Const
    # 1Tick
        execute if score @s ChuzItems.Tick matches 120.. run scoreboard players operation $Interval Chuz.Temporary %= $1 Chuz.Const

# 射撃
    execute if score @s ChuzItems.Tick matches 10..119 if score $Interval Chuz.Temporary matches 0 run function chuzitems:entity/beam_emitter/normal/spread
    execute if score @s ChuzItems.Tick matches 120.. if score $Interval Chuz.Temporary matches 0 run function chuzitems:entity/beam_emitter/finish/spread

# 魔法陣
    execute if score @s ChuzItems.Tick matches 120 run summon item_display ~ ~22 ~ {Rotation:[0.0f,90.0f],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:10,item_display:"head",Tags:["BigRune"],item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215},CustomModelData:3}}}

# 時間経過で消える
    kill @s[scores={ChuzItems.Tick=150..}]